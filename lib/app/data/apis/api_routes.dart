class ApiRoutes {
  ApiRoutes._();

  // baseUrl https://reqres.in endpoints

  static const String login = '/api/login';
  static const String register = '/api/register';
  static const String logout = '/api/logout';
  static const String forgotPassword = '/api/forgot-password';
  static const String resetPassword = '/api/reset-password';

  // github Url & endpoints for testing
  static const String typicodeUrl = "http://jsonplaceholder.typicode.com";
  // post endpoints
  static const String getPosts = "/posts";

  // github Url & endpoints for testing
  static const String githubUrl = "https://api.github.com";
  static const String githubSearch = '/search/repositories';
}
