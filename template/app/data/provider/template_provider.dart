import 'package:get/get_connect/connect.dart';

const baseUrl = 'http://youapi';

class TemplateProvider extends GetConnect {
  TemplateProvider();

  // Get request
  Future<Response> getUser(int id) => get('$baseUrl/users/id');
  // Post request
  Future<Response> postUser(Map data) => post('$baseUrl/users', data);

  /// // Post request with File
  // Future<Response<CasesModel>> postCases(List<int> image) {
  //   final form = FormData({
  //     'file': MultipartFile(image, filename: 'avatar.png'),
  //     'otherFile': MultipartFile(image, filename: 'cover.png'),
  //   });
  //   return post('$baseUrl/users/upload', form);
  // }

  GetSocket userMessages() {
    return socket('$baseUrl/users/socket');
  }
}

class CasesModel {}
