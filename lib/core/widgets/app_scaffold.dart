import 'package:fintrack/lib.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.title,
    this.leading,
    this.actions,
    this.showBackButton = true,
    this.showAppBar = true,
    this.centerTitle,
    this.backgroundColor,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.drawer,
    this.endDrawer,
    this.resizeToAvoidBottomInset,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.appBarBottom,
    this.onBackPressed,
  });

  /// Main page content.
  final Widget body;

  /// App bar title.
  final String? title;

  /// Custom leading widget.
  final Widget? leading;

  /// App bar actions.
  final List<Widget>? actions;

  /// Controls whether Flutter automatically shows
  /// the back button when appropriate.
  final bool showBackButton;

  /// Completely hides the AppBar when false.
  final bool showAppBar;

  /// Controls title alignment.
  final bool? centerTitle;

  /// Optional scaffold background override.
  final Color? backgroundColor;

  /// Floating action button.
  final Widget? floatingActionButton;

  final FloatingActionButtonLocation? floatingActionButtonLocation;

  /// Bottom navigation.
  final Widget? bottomNavigationBar;

  /// Bottom sheet.
  final Widget? bottomSheet;

  /// Drawer.
  final Widget? drawer;

  /// End drawer.
  final Widget? endDrawer;

  /// Controls keyboard resize behavior.
  final bool? resizeToAvoidBottomInset;

  final bool extendBody;

  final bool extendBodyBehindAppBar;

  /// Optional AppBar bottom widget such as TabBar.
  final PreferredSizeWidget? appBarBottom;

  /// Custom back-button action.
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: showAppBar
          ? AppBar(
              automaticallyImplyLeading:
                  onBackPressed == null && showBackButton,

              leading: onBackPressed != null
                  ? IconButton(
                      onPressed:
                          onBackPressed ??
                          () {
                            context.pop();
                          },
                      icon: const Icon(Icons.arrow_back),
                      tooltip: 'Back',
                    )
                  : leading,

              title: title != null ? Text(title!) : null,

              actions: actions,

              centerTitle: centerTitle,

              bottom: appBarBottom,
            )
          : null,

      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: body,
      ),

      floatingActionButton: floatingActionButton,

      floatingActionButtonLocation: floatingActionButtonLocation,

      bottomNavigationBar: bottomNavigationBar,

      bottomSheet: bottomSheet,

      drawer: drawer,

      endDrawer: endDrawer,

      resizeToAvoidBottomInset: resizeToAvoidBottomInset,

      extendBody: extendBody,

      extendBodyBehindAppBar: extendBodyBehindAppBar,
    );
  }
}
