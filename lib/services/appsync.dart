import 'dart:async';
import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:sisyphus_app/schema/query_fetch_viewer.graphql.dart';
import 'package:sisyphus_app/services/amplify.dart';
import 'package:sisyphus_app/services/auth.dart';

class AppSyncService {
  /// The amplify api plugin.
  final _api = GetIt.I<AmplifyService>().api;

  /// GraphQL client.
  late GraphQLClient _graphQLClient;

  /// A function that initializes and performs async initialization logic, such as fetching data and setting up providers. It returns a Future<void>.
  Future<AppSyncService> initialize() async {
    try {
      // AppSync has already been initialized as part of the amplify service.
      final httpLink = HttpLink(
        'https://xxxxxxxxxxxxxxxxxxxxxxxxxx.appsync-api.us-east-1.amazonaws.com/graphql',
        defaultHeaders: {
          "Accept-Encoding": "application/json",
          "Connection": "Keep-Alive",
        },
      );

      final authLink = AuthLink(
        getToken: () async => GetIt.I<AuthService>().getLatestAuthToken(),
      );

      Link link = authLink.concat(httpLink);

      _graphQLClient = GraphQLClient(
        /// **NOTE** The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(),
        link: link,
      );
    } on Exception catch (e) {
      safePrint('An error occurred configuring AppSync: $e');
    }
    return this;
  }

  Future<void> queryViewer() async {
    safePrint('Querying viewer...');
    try {
      final result = await _graphQLClient.query$FetchViewer();
      final parsedData = result.parsedData;
      safePrint('output ------------------ : ${parsedData?.viewer.k1}');
    } catch (e) {
      safePrint('Query failed: $e');
      rethrow;
    }
  }

  /// The upload image mutation returns a presigned url that can be used to upload an image.
  Future<String> uploadImageMutation() async {
    try {
      final response = await _api
          .query(
              request: GraphQLRequest(
            document: """
                mutation uploadImage(\$orgId: ID!) {
                  uploadImage(contentType: "image/jpeg", name: "image.jpg", orgId: \$orgId)
                }
              """,
            variables: {
              "orgId": "org#a0672d54-621c-4167-bca6-02ddf3c63adb",
            },
            headers: {
              "Accept-Encoding": "application/json",
              "Connection": "Keep-Alive",
            },
          ))
          .response;

      safePrint('output: ${response.data}');

      final Map<String, dynamic> data = jsonDecode(response.data);

      if (data['uploadImage'] != null) {
        final String uploadImageUrl = data['uploadImage'];
        return uploadImageUrl;
      } else {
        throw ("No upload image url found in response.");
      }
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      rethrow;
    }
  }

  void dispose() {}
}
