import 'dart:math';

import 'package:authflow/src/utils/http/network.dart';

abstract class APIService {
  Future<dynamic> signInUser(Map credentials);
}

class APIServiceInstance implements APIService {
  NetworkUtil _networkUtil = new NetworkUtil();

  var rnd = new Random();

  String baseUrl = 'http://example.com/api';

  @override
  Future<bool> signInUser(Map credentials) async {
    print("Credentials: $credentials");
    // TODO: Uncomment the API call
    // final String signInUrl = '$baseUrl/auth/signin';

    // dynamic response = await _networkUtil.postReq(signInUrl, body: {
    //   'email': credentials['email'],
    //   'password': credentials['password']
    // });

    // if (response == null) return null;
    // return response;

    // Delays the sign in for a bit to mock an API call
    print("Starting fetch");
    Future.delayed(Duration(seconds: 5));
    print("Ending fetch");
    // Mocks validation from the API.
    // True: Successful sign in
    // False: Failed sign in
    return Future.value(rnd.nextBool());
  }
}
