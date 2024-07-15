String? validatorOfEmail(String? value) {
  return value!.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
      ? null
      : "Enter a valid email";
}

String? validatorOfPassword(String? value) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value == null || value.isEmpty) {
    return 'Please enter password';
  } else if (value.length < 8) {
    return 'size of password greater than 8 char';
  } else {
    if (!regex.hasMatch(value)) {
      return 'Enter valid password \n password should contain at least one upper , lower case , number , special character';
    } else {
      return null;
    }
  }
}

String? validUserName(String? value) {
  bool upper = value!.contains(RegExp(r'[A-Z]'));
  bool lower = value.contains(RegExp(r'[a-z]'));
  bool underScore = value.contains('_');
  if (upper && lower && underScore) {
    return null;
  } else {
    return 'should contain at least one upper case , lower caser \nand under score';
  }
}
