class ApiRoutes {
  ApiRoutes._();

  // base url
  //static const String baseUrl = "http://jsonplaceholder.typicode.com";

  // post endpoints
  static const String getPosts = "/posts";

  // auth endpoints
  static const String login = '/login';
  static const String register =  '/register';
  static const String logout = '/logout';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';

  // github endpoints
  static const String github_search = '/search/repositories';
}
