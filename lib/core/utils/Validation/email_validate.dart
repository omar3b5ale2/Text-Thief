String? validateEmail({required String email}) {  const String pattern = r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';  final RegExp regex = RegExp(pattern);  //------------------------  if (email.isEmpty) {    return "Please Enter your Email ";  } else if (!regex.hasMatch(email)) {    return 'The email address is badly formatted.';  }  return null;}