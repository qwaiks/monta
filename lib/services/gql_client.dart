import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:monta/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gql_client.g.dart';

class GQLClient {
  GQLClient({
    required this.url,
  });

  final String url;

  GraphQLClient get client => getClient();

  Stream<Response> handleException(
    Request request,
    NextLink forward,
    LinkException exception,
  ) async* {
    // // If the exception is [AuthException]
    // if (exception is AuthException) {
    //   // We fetch a new token
    //   final token = await getNewToken();

    //   // Update the request with the new token
    //   final updatedRequest = request.withContextEntry(
    //     AuthToken(token: token),
    //   );

    //   // And try the request again
    //   yield* forward(updatedRequest);

    //   return;
    // }

    // Otherwise, we rethrow the previous exception

    Logger().e(exception);

    throw exception;
  }

  GraphQLClient getClient() {
    final HttpLink httpLink = HttpLink(
      url,
      defaultHeaders: {
        'Access-Control-Allow-Origin': '*',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    final AuthLink authLink = AuthLink(getToken: () {
      return null;
    });

    final errorLink = ErrorLink(
      onException: handleException,
      onGraphQLError: (request, forward, response) async* {
        Logger().d(request);
        final errors = response.errors;
        if (errors != null && errors.isNotEmpty) {
          for (final error in errors) {
            Logger().e('GraphQL Exception: $error');
          }
        }

        // Continue processing the request if needed
        yield response;
      },
    );

    final Link link = authLink.concat(httpLink);

    return GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      link: Link.from([
        errorLink,
      ]).split((request) => request.isSubscription, httpLink, link),
    );
  }
}

@Riverpod(keepAlive: true)
GQLClient gqlClient(GqlClientRef ref) {
  return GQLClient(
    url: ApiSetup.baseApiUrl,
  );
}

ValueNotifier<GraphQLClient> graphqlClient(WidgetRef ref) => ValueNotifier(
      ref.read(gqlClientProvider).client,
    );
