const amplifyConfigAndroid = '''{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "IdentityManager": {
          "Default": {}
        },
        "CognitoUserPool": {
          "Default": {
            "PoolId": "us-east-1_xxxxxxxxx",
            "AppClientId": "xxxxxxxxxxxxxxxxxxxxxxxxxx",
            "Region": "us-east-1"
          }
        },
        "Auth": {
          "Default": {
            "authenticationFlowType": "USER_SRP_AUTH",
            "OAuth": {
              "WebDomain": "https://xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx.auth.us-east-1.amazoncognito.com",
              "AppClientId": "xxxxxxxxxxxxxxxxxxxxxxxxxx",
              "SignInRedirectURI": "myapp://",
              "SignOutRedirectURI": "myapp://",
              "Scopes": [
                "email",
                "openid",
                "profile"
              ]
            },
            "signupAttributes": ["EMAIL"],
            "usernameAttributes": ["email"],
            "passwordProtectionSettings": {
              "passwordPolicyMinLength": 8,
              "passwordPolicyCharacters": []
            }
          }
        }
      }
    }
  },
  "api": {
    "plugins": {
        "awsAPIPlugin": {
            "development-api": {
                "endpointType": "GraphQL",
                "endpoint": "https://xxxxxxxxxxxxxxxxxxxxxxxxxx.appsync-api.us-east-1.amazonaws.com/graphql",
                "region": "us-east-1",
                "authorizationType": "AMAZON_COGNITO_USER_POOLS"
            }
        }
    }
  }
}''';

//                "phone",
// ,
//                "aws.cognito.signin.user.admin"