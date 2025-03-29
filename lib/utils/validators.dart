/// Validates if the name is not empty and is at least 3 characters long.
String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name is required';
  }
  if (value.length < 3) {
    return 'Name must be at least 3 characters';
  }
  return null;
}

/// Validates if the email is not empty and follows the correct email format.
String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email is required';
  }
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
    return 'Enter a valid email';
  }
  return null;
}

/// Validates if the phone number is not empty and follows the correct 10-digit format.
String? validatePhoneNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Phone number is required';
  }
  if (!RegExp(r'^\d{10}$').hasMatch(value)) {
    return 'Enter a valid 10-digit phone number';
  }
  return null;
}
