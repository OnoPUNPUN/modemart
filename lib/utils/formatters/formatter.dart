import 'package:intl/intl.dart';

class AppFormatter {
  AppFormatter._(); // Private constructor to prevent instantiation.

  /// Formats a [DateTime] object into a custom string format ('dd-MMM-yyyy').
  /// Defaults to [DateTime.now()] if [date] is null.
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    // Default format changed to 'dd-MM-yyyy' for a common style,
    // but you can still customize it as needed.
    return DateFormat('dd-MM-yyyy').format(date);
  }

  /// Formats a [double] [amount] into currency format.
  /// Uses 'bn_BD' locale and '৳' (Bangladeshi Taka) symbol by default.
  static String formatCurrency(double amount) {
    // Updated for BD format: locale 'bn_BD' and symbol '৳'
    return NumberFormat.currency(locale: 'bn_BD', symbol: '৳').format(amount);
  }

  /// Formats a [phoneNumber] string into a readable format.
  /// Handles 10-digit US format, 11-digit BD format (01xxxxxxxxx), or returns original.
  static String formatPhoneNumber(String phoneNumber) {
    // Sanitize input: remove all non-digit characters
    final digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length == 10) {
      // US 10-digit format: (123) 456-7890
      return '(${digitsOnly.substring(0, 3)}) ${digitsOnly.substring(3, 6)}-${digitsOnly.substring(6)}';
    } else if (digitsOnly.length == 11 && digitsOnly.startsWith('01')) {
      // BD 11-digit mobile format (e.g., 017xxxxxxxx or 019xxxxxxxx): 01x-xxxx-xxxx
      return '${digitsOnly.substring(0, 3)}-${digitsOnly.substring(3, 7)}-${digitsOnly.substring(7)}';
    } else if (digitsOnly.length == 11) {
      // General 11-digit format (e.g., US with country code 1): 1 (123) 456-7890
      return '${digitsOnly.substring(0, 1)} (${digitsOnly.substring(1, 4)}) ${digitsOnly.substring(4, 7)}-${digitsOnly.substring(7)}';
    }

    // Return the sanitized string if no common format matches
    return digitsOnly;
  }
}
