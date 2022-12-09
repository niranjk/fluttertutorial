

class PlantEndpoint {
  static const apiScheme = "https";
  static const apiHost = "raw.githubusercontent.com";
  static const prefix = "/googlecodelabs/kotlin-coroutines/master/advanced-coroutines-codelab/sunflower/src/main/assets/";

  static Uri uri(String path, {Map<String, dynamic>? queryParameters}){
    final uri = Uri(
      scheme: apiScheme,
      host: apiHost,
      path: "$prefix$path",
      queryParameters: queryParameters,
    );
    return uri;
  }
}