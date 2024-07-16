class EndPoints {
  static const baseUrl = 'http://ahmedsalah.runasp.net/api/';
  static const login = 'Account/Login';
  static const signUp = 'Account/Register';
  // static const update = 'user/update';
  static sendNumForEmail(String email) => 'Account/SendNumForEmail?sendEmail=$email';
  static confirmNum(String code) => 'Account/ConfirmNum?Num=$code';
}