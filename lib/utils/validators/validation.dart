import 'package:get/get.dart';

//accept ar && en
String? validateTextOnlyField(String? value, String fieldName) {
  int minLength = 2;
  int maxLength = 20;
  if (value == null || value.isEmpty) {
    return "$fieldName ${'required'.tr}";
  } else if (value.length < minLength) {
    // Minimum length validation error
    return "$fieldName ${'textOnlyValidation'.trParams({
          "minLength": "$minLength"
        })}";
  } else if (value.length > maxLength) {
    // Maximum length validation error
    return "$fieldName ${'startWithTextOnly'.trParams({
          "maxLength": "$maxLength"
        })}";
  }
  return null; // If the value passes both checks
}

String? validateEnglishOnly(
  String? value,
  String fieldName,
) {
  // Text may contains (,.-)
  final String pattern = r"(^[a-zA-Z0-9,.\-\s:/?#\[\]@!$&\'()*+,;=%]*$)";
  final RegExp regExp = RegExp(pattern);

  if (value!.isEmpty || value.isEmpty) {
    return null;
  } else if (!regExp.hasMatch(value)) {
    return fieldName + '${'textOnlyValidation'.tr}';
  }
  return null;
}

String? validateTextOnlyFieldNotRequired(
  String? value,
  String fieldName,
) {
  // Text may contains (,.-)
  final String pattern = r'(^[a-zA-Z,.\-\s]*$)';
  final RegExp regExp = RegExp(pattern);

  // Text shouldn't start with (,-.)
  if (value == null || value.isEmpty) {
    return null;
  } else if (!regExp.hasMatch(value)) {
    return fieldName + '${'textOnlyValidation'.tr}';
  } else {
    return null;
  }
}

String? validateNumbersOnlyField(
  String? value,
  String fieldName,
) {
  // Text may contains (,.-)
  final String pattern = r'^[0-9]+$';
  final RegExp regExp = RegExp(pattern);

  if (value!.isEmpty) {
    return fieldName + '${'required'.tr}';
  } else if (!regExp.hasMatch(value)) {
    return fieldName + ' ${'numbersOnlyValidation'.tr}';
  }
  return null;
}

String? validateName(String? value, String? otherName, bool isFirstName, bool isMainGuest) {
  if (isMainGuest) {
    if (isFirstName && (value == null || value.isEmpty)) {
      return 'First name is required'.tr;
    } else if (!isFirstName && (value == null || value.isEmpty)) {
      return 'Last name is required'.tr;
    }
  } else {
    if (isFirstName &&
        (otherName != null && otherName.isNotEmpty && otherName != "") &&
        (value == null || value.isEmpty || value == "")) {
      return 'First name is required'.tr;
    } else if (!isFirstName &&
        (otherName != null && otherName.isNotEmpty && otherName != "") &&
        (value == null || value.isEmpty || value == "")) {
      return 'Last name is required'.tr;
    }
  }
  return null;
}

String? validateEmail(String? value) {
  final String pattern = r'^([a-zA-Z0-9_\-\.\]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';
  final RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return 'Email Address'.tr + 'required'.tr;
  } else if (!regExp.hasMatch(value)) {
    return 'Email Address'.tr + 'emailFormat'.tr;
  }
  return null;
}

bool isValidEmail(String email) {
  final RegExp emailValidator =
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  return emailValidator.hasMatch(email);
}

String? validatePhoneNumber(String? value) {
  final String pattern =
      r'(^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/]?(?:#|ext\.?|extension|x)[\-\.\ \\\/]?(\d+))?$)';
  final RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return 'Phone Number'.tr + 'required'.tr;
  } else if (value.length != 10) {
    return 'Phone Number'.tr + 'must be 11 digits'.tr;
  } else if (!regExp.hasMatch(value)) {
    return 'Phone Number'.tr + 'must be in digits'.tr;
  }
  return null;
}

String? validateUrl(String? value) {
  final String pattern =
      r'[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)';
  final RegExp regExp = RegExp(pattern);
  if (value!.isNotEmpty) {
    if (!regExp.hasMatch(value)) {
      return 'Website'.tr + 'emailFormat'.tr;
    }
  }
  return null;
}

String? nullValidate(String? value, String fieldName) {
  if (value == null || value.isEmpty) {
    return fieldName + 'required'.tr;
  }
  return null;
}

String? phoneNumberValidate(String? value) {
  if (value == null || value.isEmpty) {
    return 'Invalid Phone Number'.tr;
  }
  return null;
}

//accept en only
String? usernameValidate(String? value, String fieldName) {
  // Regex for validating English usernames with specific character rules
  final regex = RegExp(r'^[a-zA-Z][a-zA-Z0-9_-]{3,19}$');
  // Regex to detect Arabic characters
  final arabicRegex = RegExp(
      r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDFF\uFE70-\uFEFF]');
  if (value == null || value.isEmpty) {
    return fieldName + 'required'.tr;
  } else if (arabicRegex.hasMatch(value)) {
    // Return a message if Arabic text is detected
    return  "Arabic text is not allowed for @fieldName. Please use English letters.".trParams({
      "fieldName": fieldName
    });
  } else if (!regex.hasMatch(value)) {
    return 'Invalid username. Please use 4-20 characters with English letters, numbers, underscores, or hyphens.'.tr;
  } else if (value.length > 20) {
    // This condition may actually never be true due to the initial regex check
    return 'Username must be at most 20 characters'.tr;
  }
  return null; // returns null if the input is valid
}

String? passwordValidate(String? value, String fieldName) {
  if (value == null || value.isEmpty) {
    return fieldName + 'required2'.tr;
  } else if (value.length < 8) {
    return fieldName + 'should be more than 8 digits'.tr;
  }
  return null;
}

String? validatePassword(String? value, String fieldName) {
  final RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value == null || value.isEmpty) {
    return fieldName + ('required2'.tr);
  } else {
    if (!regex.hasMatch(value)) {
      return 'It must contain (more than 8 characters - uppercase letter - lowercase letter - symbols).'.tr;
    } else {
      return null;
    }
  }
}