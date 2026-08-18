

class AppValidators {
  AppValidators._();

  // ------------------------------------------------------------
  // Required
  // ------------------------------------------------------------

  static String? required(
    String? value, {
    String fieldName = 'This field',
  }) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Email
  // ------------------------------------------------------------

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    final email = value.trim();

    final emailRegex = RegExp(
      r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,}$',
    );

    if (!emailRegex.hasMatch(email)) {
      return 'Enter a valid email address';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Password
  // ------------------------------------------------------------

  static String? password(
    String? value, {
    int minLength = 8,
  }) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < minLength) {
      return 'Password must be at least $minLength characters';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Strong Password
  // ------------------------------------------------------------

  static String? strongPassword(
    String? value, {
    int minLength = 8,
  }) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < minLength) {
      return 'Password must be at least $minLength characters';
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain an uppercase letter';
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain a lowercase letter';
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain a number';
    }

    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>_\-\\[\]]').hasMatch(value)) {
      return 'Password must contain a special character';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Confirm Password
  // ------------------------------------------------------------

  static String? confirmPassword(
    String? value,
    String? password,
  ) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }

    if (value != password) {
      return 'Passwords do not match';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Minimum Length
  // ------------------------------------------------------------

  static String? minLength(
    String? value,
    int length, {
    String fieldName = 'This field',
  }) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }

    if (value.trim().length < length) {
      return '$fieldName must be at least $length characters';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Maximum Length
  // ------------------------------------------------------------

  static String? maxLength(
    String? value,
    int length, {
    String fieldName = 'This field',
  }) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }

    if (value.trim().length > length) {
      return '$fieldName must not exceed $length characters';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Name
  // ------------------------------------------------------------

  static String? name(
    String? value, {
    String fieldName = 'Name',
  }) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }

    if (value.trim().length < 2) {
      return '$fieldName must be at least 2 characters';
    }

    if (!RegExp(r"^[a-zA-ZÀ-ÿ\s'-]+$").hasMatch(value.trim())) {
      return '$fieldName contains invalid characters';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Phone
  // ------------------------------------------------------------

  static String? phone(
    String? value, {
    int minLength = 10,
  }) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }

    final phone = value.replaceAll(RegExp(r'[\s\-\(\)]'), '');

    if (!RegExp(r'^\+?[0-9]+$').hasMatch(phone)) {
      return 'Enter a valid phone number';
    }

    if (phone.length < minLength) {
      return 'Enter a valid phone number';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Number
  // ------------------------------------------------------------

  static String? number(
    String? value, {
    String fieldName = 'Number',
  }) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }

    if (double.tryParse(value.trim()) == null) {
      return 'Enter a valid number';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Positive Number
  // ------------------------------------------------------------

  static String? positiveNumber(
    String? value, {
    String fieldName = 'Amount',
  }) {
    final numberError = number(
      value,
      fieldName: fieldName,
    );

    if (numberError != null) {
      return numberError;
    }

    final numberValue = double.parse(value!.trim());

    if (numberValue <= 0) {
      return '$fieldName must be greater than zero';
    }

    return null;
  }

  // ------------------------------------------------------------
  // Integer
  // ------------------------------------------------------------

  static String? integer(
    String? value, {
    String fieldName = 'Number',
  }) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }

    if (int.tryParse(value.trim()) == null) {
      return 'Enter a valid whole number';
    }

    return null;
  }

  // ------------------------------------------------------------
  // URL
  // ------------------------------------------------------------

  static String? url(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'URL is required';
    }

    final uri = Uri.tryParse(value.trim());

    if (uri == null ||
        !uri.hasScheme ||
        !['http', 'https'].contains(uri.scheme)) {
      return 'Enter a valid URL';
    }

    return null;
  }
}