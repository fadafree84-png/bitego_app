import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;
  ApiService(this.baseUrl);

  Future<http.Response> uploadVideo(File file, String restaurantId) async {
    final uri = Uri.parse('\$baseUrl/api/upload');
    final request = http.MultipartRequest('POST', uri);
    request.fields['restaurantId'] = restaurantId;
    request.files.add(await http.MultipartFile.fromPath('file', file.path));
    final streamed = await request.send();
    return await http.Response.fromStream(streamed);
  }
}
