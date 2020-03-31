import 'package:http/http.dart';

class HttpExtension {
  bool ValidateResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return true;
        break;
      default:
        return false;
    }
  }
}
