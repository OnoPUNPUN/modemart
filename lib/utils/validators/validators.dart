import 'package:intl/intl.dart';

/// VALIDATION CLASS
class AppVaildator {
  /// Empty Text Validation
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }

    return null;
  }

  static String? validatePinCode(String? pinCode) {
    if (pinCode == null || pinCode.isEmpty) {
      return 'Pin Code is required.';
    }

    // Check for minimum pinCode length
    if (pinCode.length < 6) {
      return 'Pin Code must be 6 Digits.';
    }

    return null;
  }

  static String? validateAge(String? input) {
    if (input == null || input.isEmpty) {
      return 'Date of Birth is required.';
    }

    try {
      // Parse the input date in the 'dd-MMM-yyyy' format
      final DateFormat format = DateFormat('dd-MMM-yyyy');
      final DateTime dateOfBirth = format.parse(input);

      final DateTime today = DateTime.now();
      final int age =
          today.year -
          dateOfBirth.year -
          ((today.month < dateOfBirth.month ||
                  (today.month == dateOfBirth.month &&
                      today.day < dateOfBirth.day))
              ? 1
              : 0);

      if (age < 18) {
        //return TTexts.dateOfBirthError;
      }
    } catch (e) {
      return 'Invalid date format. Use dd-MMM-yyyy.';
    }

    return null;
  }

  /// Username Validation
  static String? validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username is required.';
    }

    // Define a regular expression pattern for the username.
    const pattern = r"^[a-zA-Z0-9_-]{3,20}$";

    // Create a RegExp instance from the pattern.
    final regex = RegExp(pattern);

    // Use the hasMatch method to check if the username matches the pattern.
    bool isValid = regex.hasMatch(username);

    // Check if the username doesn't start or end with an underscore or hyphen.
    if (isValid) {
      isValid =
          !username.startsWith('_') &&
          !username.startsWith('-') &&
          !username.endsWith('_') &&
          !username.endsWith('-');
    }

    if (!isValid) {
      return 'Username is not valid.';
    }

    return null;
  }

  /// Email Validation
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  /// Password Validation
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }

  /// Phone Number Validation
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    final returnValue = validatePhoneNumberFormat(value);

    return returnValue;
  }

  static String? validatePhoneNumberFormat(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    // Remove any spaces, dashes, or plus signs for validation
    String cleanedValue = value.replaceAll(RegExp(r'[\s\-\+]'), '');

    // BD phone number patterns:
    // 1. 11 digits starting with 01 (e.g., 01712345678)
    // 2. 13 digits with country code 880 (e.g., 8801712345678)
    final phoneRegExp = RegExp(r'^(01[3-9]\d{8}|8801[3-9]\d{8})$');

    if (!phoneRegExp.hasMatch(cleanedValue)) {
      return 'Invalid BD phone number. Use format: 01XXXXXXXXX or +8801XXXXXXXXX';
    }

    return null;
  }

  // Add more custom validators as needed for your specific requirements.
}
