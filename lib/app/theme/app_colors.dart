

import 'package:fintrack/lib.dart';

class AppColors {
  AppColors._();

  // ============================================================
  // Brand
  // ============================================================

  static const Color primary = Color(0xFF0F8B6D);
  static const Color primaryDark = Color(0xFF0A6B54);
  static const Color primaryLight = Color(0xFF3DBB9A);

  static const Color secondary = Color(0xFF2F80ED);
  static const Color secondaryDark = Color(0xFF1D5FBF);
  static const Color secondaryLight = Color(0xFF63A4FF);

  // ============================================================
  // Semantic Colors
  // ============================================================

  /// Income / positive financial movement.
  static const Color income = Color(0xFF16A34A);

  /// Expense / negative financial movement.
  static const Color expense = Color(0xFFDC2626);

  /// Investment-related information.
  static const Color investment = Color(0xFF2563EB);

  /// Warning / budget approaching limit.
  static const Color warning = Color(0xFFF59E0B);

  /// Success states.
  static const Color success = Color(0xFF16A34A);

  /// Informational states.
  static const Color info = Color(0xFF2563EB);

  // ============================================================
  // Light Theme
  // ============================================================

  static const Color lightBackground = Color(0xFFF7F9F8);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFF0F4F2);

  static const Color lightTextPrimary = Color(0xFF17201D);
  static const Color lightTextSecondary = Color(0xFF66736E);
  static const Color lightTextDisabled = Color(0xFFA6B0AC);

  static const Color lightBorder = Color(0xFFE1E7E4);
  static const Color lightDivider = Color(0xFFE8ECEA);

  // ============================================================
  // Dark Theme
  // ============================================================

  static const Color darkBackground = Color(0xFF0D1412);
  static const Color darkSurface = Color(0xFF151E1B);
  static const Color darkSurfaceVariant = Color(0xFF202B27);

  static const Color darkTextPrimary = Color(0xFFF2F6F4);
  static const Color darkTextSecondary = Color(0xFFA7B3AE);
  static const Color darkTextDisabled = Color(0xFF68736F);

  static const Color darkBorder = Color(0xFF2A3631);
  static const Color darkDivider = Color(0xFF25302C);

  // ============================================================
  // Utility
  // ============================================================

  static const Color transparent = Colors.transparent;
}