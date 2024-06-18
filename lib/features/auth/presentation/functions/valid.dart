String? validatorOfEmail(String? value) {
  return value!.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
      ? null
      : "Enter a valid email";
}

String? validatorOfPassword(String? value) {
  return value!.length < 8
      ? "Enter a valid password : at least 8 chracter"
      : null;
}
