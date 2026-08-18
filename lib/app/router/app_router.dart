import 'package:fintrack/lib.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/splash',

    debugLogDiagnostics: true,

    routes: [
      GoRoute(
        path: '/splash',
        name: RouteNames.splash,
        builder: (context, state) {
          return const SplashScreen();
        },
      ),

      GoRoute(
        path: '/login',
        name: RouteNames.login,
        builder: (context, state) {
          return const LoginScreen();
        },
      ),

      GoRoute(
        path: '/register',
        name: RouteNames.register,
        builder: (context, state) {
          return const RegisterScreen();
        },
      ),

      // GoRoute(
      //   path: '/dashboard',
      //   name: RouteNames.dashboard,
      //   builder: (context, state) {
      //     return const DashboardScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/accounts',
      //   name: RouteNames.accounts,
      //   builder: (context, state) {
      //     return const AccountsScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/accounts/:id',
      //   name: RouteNames.accountDetails,
      //   builder: (context, state) {
      //     final accountId = state.pathParameters['id']!;

      //     return AccountDetailsScreen(
      //       accountId: accountId,
      //     );
      //   },
      // ),

      // GoRoute(
      //   path: '/transactions',
      //   name: RouteNames.transactions,
      //   builder: (context, state) {
      //     return const TransactionsScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/budgets',
      //   name: RouteNames.budgets,
      //   builder: (context, state) {
      //     return const BudgetsScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/savings',
      //   name: RouteNames.savings,
      //   builder: (context, state) {
      //     return const SavingsScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/investments',
      //   name: RouteNames.investments,
      //   builder: (context, state) {
      //     return const InvestmentsScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/reports',
      //   name: RouteNames.reports,
      //   builder: (context, state) {
      //     return const ReportsScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/notifications',
      //   name: RouteNames.notifications,
      //   builder: (context, state) {
      //     return const NotificationsScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/profile',
      //   name: RouteNames.profile,
      //   builder: (context, state) {
      //     return const ProfileScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/settings',
      //   name: RouteNames.settings,
      //   builder: (context, state) {
      //     return const SettingsScreen();
      //   },
      // ),
    ],

    errorBuilder: (context, state) {
      return Scaffold(
        body: Center(
          child: Text(
            'Page not found\n${state.uri}',
            textAlign: TextAlign.center,
          ),
        ),
      );
    },
  );
});
