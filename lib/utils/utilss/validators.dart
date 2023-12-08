import 'package:autovista/utils/strings.dart';
import 'package:get/get.dart';
import 'masking.dart';

RegExp hasAlphabet =
    RegExp(r'^(.*[a-zA-Z]+.*)'); //To check atleast one alphabet
RegExp hasNumber = RegExp(r'^(.*[0-9].*)'); //To check atleast one number
RegExp hasSpecialCharacter = RegExp(
    r'^(.*[!@#$%^&*(),.?":{}|<>].*)'); //to check atleast one special character

var maskFormatter = MaskTextInputFormatter(
    mask: '(###)-###-####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

List validations(identifier, String text, String compareText) {
  switch (identifier) {
    case "Email ID":
      {
        return checkEmail(text);
      }
    case "Password":
      {
        return checkPassword(text, compareText);
      }

    case "Vehicle License Plate":
      {
        return checkVehicleNo(text);
      }

    default:
      return [true, ""];
  }
}

List checkEmail(String text) {
  if (text.isEmpty) {
    return [false, AppStrings.enterEmail];
  } else if (!text.isEmail) {
    return [false, AppStrings.enterValidEmail];
  } else {
    return [true, ""];
  }
}

List checkPassword(String text, String compareText) {
  if (text.isEmpty) {
    return [false, AppStrings.enterPassWord];
  } /*else if (!hasAlphabet.hasMatch(text)) {
    return [false, AppStrings.oneAlphabet];
  } else if (!text.contains(RegExp(r'[A-Z]'))) {
    return [false, AppStrings.oneUpperCase];
  } else if (!text.contains(RegExp(r'[a-z]'))) {
    return [false, AppStrings.oneLowerCase];
  } else if (!hasNumber.hasMatch(text)) {
    return [false, AppStrings.oneNumber];
  } else if (!hasSpecialCharacter.hasMatch(text)) {
    return [false, AppStrings.oneSpecialCharacter];
  } else if (text.length < 8) {
    return [false, AppStrings.enterValidPassWord];
  } else if (compareText != "" && compareText != text) {
    return [false, AppStrings.passwordMatch];
  }*/
  else {
    return [true, ""];
  }
}

List checkFirstName(String text) {
  if (text.isEmpty) {
    return [false, AppStrings.enterFirstName];
  } else {
    return [true, ""];
  }
}

List checkLastName(String text) {
  if (text.isEmpty) {
    return [false, AppStrings.enterLastName];
  } else {
    return [true, ""];
  }
}

List checkMobile(String text) {
  if (text.isEmpty) {
    return [false, AppStrings.enterMobile];
  } else if (maskFormatter.unmaskText(text).length != 10) {
    return [false, AppStrings.enterValidMobile];
  } else {
    return [true, ""];
  }
}

List checkZipcode(String text) {
  if (text.isEmpty) {
    return [false, AppStrings.enterZipcode];
  } else if (text.length < 5) {
    return [false, AppStrings.enterValidZipcode];
  } else {
    return [true, ""];
  }
}

List checkVehicleNo(String text) {
  if (text.isEmpty) {
    return [false, AppStrings.enterVehicleNo];
  } else {
    return [true, ""];
  }
}

List checkVehicleYear(String text) {
  if (text.isEmpty) {
    return [false, AppStrings.enterZipcode];
  } else if (text.length < 4) {
    return [false, AppStrings.enterValidZipcode];
  } else {
    return [true, ""];
  }
}

bool isValidURL(String url) {
  return Uri.parse(url).isAbsolute;
}
