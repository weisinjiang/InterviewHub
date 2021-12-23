import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_hub/sceens/sign_in.dart';
import 'package:provider/provider.dart';
import 'sceens/root_screen.dart';
import 'services/auth_provider.dart';


void main() {

  // Licensing Fonts
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/Lato/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  
  runApp(MyApp());
}

/// RunApp 
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return startApp();
        }
        return const MaterialApp(
          home: Center(  
            child: Text('Error Connecting to Server. Try again.'),
          ),
        );
      }
      
    );
  }

  /// Builds the App 
  MultiProvider startApp() {
    return MultiProvider(
      // Important App Providers at the root
      providers: [
        // Signin
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
      
      ],

      child: Consumer<AuthProvider>(
        builder: (context, authProvider, _) {
          return MaterialApp(
            theme: ThemeData(  
              textTheme: GoogleFonts.latoTextTheme(
                Theme.of(context).textTheme
              )
            ),
            title: 'Interview Hub',
            home: authProvider.isAuthenticated ? RootScreen() : SignInScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }

}


