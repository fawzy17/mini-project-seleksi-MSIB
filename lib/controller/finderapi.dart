import 'package:http/http.dart' as http;

class ImagesList{
  Future<String> fetchDataImagesList(String keyword) async{
    try {
      final response = await http.get(
        Uri.parse('https://pixabay.com/api/?key=33054655-42102af0c5e24183c0230f9c4&q=$keyword&image_type=photo&pretty=true')
      );

      return response.body;
    } catch (e) {
      throw Exception(e);
    }
  }
}