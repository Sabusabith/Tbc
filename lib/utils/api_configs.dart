class AppConstants {
  AppConstants(this.authid, this.phc_auth_id);
  var authid;
  var phc_auth_id;
  var domain_auth_id;

  static const String baseUrl = 'https://tbc.d-note.com';
  static const String login = '/api/login';
  static const String register = '/api/addUser';
  static const String addzone = '/api/addZone';
  static const String addDomain = '/api/addDomain';
  static const String addSpecialization = '/api/addSpecialization';
  static const String addRole = '/api/addRole';
  static const String addPhcDetails = '/api/addPhcDetails';
  static const String addPhcDomain = '/api/addPhcDomain';
  String get getDomain => '/api/getDomain/$domain_auth_id';
  String get getPhcDetails => '/api/getPhcDetails/$phc_auth_id';
  String get getZone => '/api/getZone/$authid';
}
