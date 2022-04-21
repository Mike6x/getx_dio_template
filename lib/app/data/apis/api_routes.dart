class ApiRoutes {
  ApiRoutes._();

  // baseUrl https://reqres.in endpoints

  static const String login = '/login';
  static const String register = '/register';
  static const String logout = '/logout';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';

  // github Url & endpoints for testing
  static const String typicodeUrl = "http://jsonplaceholder.typicode.com";
  // post endpoints
  static const String getPosts = "/posts";

  // github Url & endpoints for testing
  static const String githubUrl = "https://api.github.com";
  static const String githubSearch = '/search/repositories';
}
