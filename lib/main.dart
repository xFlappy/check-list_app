import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './provider/auth.dart';
import './provider/category.dart';
import './provider/check-lists.dart';
import './provider/check-list.dart';
import './provider/check-list_item.dart';
import './screens/splash_screen.dart';
import './screens/checklist_detail_screen.dart';
import './screens/checklist_screen.dart';
import './screens/categories_screen.dart';
import './screens/auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        ),
        // ignore: missing_required_param
        ChangeNotifierProxyProvider<Auth, Category>(
          update: (ctx, auth, previousProducts) => Category(
            auth.token,
            auth.userId,
            previousProducts == null ? [] : previousProducts.categoryItems,
          ),
        ),
      ],
      //più tardi da mettere consumer per fare funzionare l'autenticazione
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'Checklist APP',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            accentColor: Colors.green,
          ),
          home: auth.isAuth
              ? CategoriesScreen()
              : FutureBuilder(
                  future: auth.tryAutoLogin(),
                  builder: (ctx, authResultSnapshot) =>
                      authResultSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? SplashScreen()
                          : AuthScreen(),
                ),
          routes: {
            CheckListScreen.routeName: (ctx) => CheckListScreen(),
            ChecklistDetailScreen.routeName: (ctx) => ChecklistDetailScreen(),
          },
        ),
      ),
    );
  }
}
