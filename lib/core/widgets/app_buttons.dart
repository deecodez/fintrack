import 'package:fintrack/lib.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isOffline = false,
    this.enabled = true,
    this.icon,
    this.width,
    this.height,
  });

  final String text;
  final VoidCallback? onPressed;

  final bool isLoading;
  final bool isOffline;
  final bool enabled;

  final Widget? icon;
  final double? width;
  final double? height;

  bool get _isDisabled =>
      !enabled || isLoading || isOffline || onPressed == null;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 52,
      child: ElevatedButton(
        onPressed: _isDisabled ? null : onPressed,

        style: isOffline == true
            ? ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryLight,
                foregroundColor: Colors.white,
              )
            : ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
              ),

        // style: isOffline
        //     ? ElevatedButton.styleFrom(
        //         backgroundColor: AppColors.offline,
        //         foregroundColor: Colors.white,
        //       )
        //     : null,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: isLoading
              ? SizedBox(
                  key: const ValueKey('loading'),
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: theme.colorScheme.onPrimary,
                  ),
                )
              : Row(
                  key: const ValueKey('content'),
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (icon != null) ...[icon!, const SizedBox(width: 8)],
                    Text(text),
                  ],
                ),
        ),
      ),
    );
  }
}
