import 'package:go_router/go_router.dart';
import '../pages/main_page/main_page.dart';
import '../pages/tab_pages/accountant_page.dart';
import '../pages/tab_pages/banking_page.dart';
import '../pages/tab_pages/documents_page.dart';
import '../pages/tab_pages/home_page.dart';
import '../pages/tab_pages/items_page.dart';
import '../pages/tab_pages/payroll_page.dart';
import '../pages/tab_pages/purchases_page.dart';
import '../pages/tab_pages/reports_page.dart';
import '../pages/tab_pages/sales_page.dart';
import '../pages/tab_pages/time_tracking_page.dart';

final myRouters = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainScaffold(child: child); // Sidebar UI here
      },
      routes: [
        GoRoute(path: '/home', builder: (context, state) => HomePage()),
        GoRoute(path: '/items', builder: (context, state) => ItemsPage()),
        GoRoute(path: '/banking', builder: (context, state) => BankingPage()),
        GoRoute(path: '/sales', builder: (context, state) => SalesPage()),
        GoRoute(path: '/purchases', builder: (context, state) => PurchasesPage()),
        GoRoute(path: '/time-tracking', builder: (context, state) => TimeTrackingPage()),
        GoRoute(path: '/accountant', builder: (context, state) => AccountantPage()),
        GoRoute(path: '/reports', builder: (context, state) => ReportsPage()),
        GoRoute(path: '/documents', builder: (context, state) => DocumentsPage()),
        GoRoute(path: '/payroll', builder: (context, state) => PayrollPage()),
      ],
    ),
  ],
);