// import 'package:flutter/material.dart';
// import 'package:medipanda/screens/splash_screen.dart';

// void main() {
//   runApp(MediPandaApp());
// }

// class MediPandaApp extends StatelessWidget {
//   const MediPandaApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'MediPanda',
//       theme: ThemeData(
//       primarySwatch: MaterialColor(
//         0xFF203c8c,
//         <int, Color>{
//           50: Color(0xFFE1E6F0),
//           100: Color(0xFFB3C2E0),
//           200: Color(0xFF80A1D0),
//           300: Color(0xFF4D80C0),
//           400: Color(0xFF266FB0),
//           500: Color(0xFF203c8c),
//           600: Color(0xFF1A2E70),
//           700: Color(0xFF142258),
//           800: Color(0xFF0E153F),
//           900: Color(0xFF0A0F2A),
//         },
//       ),

//       ),
//       home: SplashScreen(),
//     );
//   }
// }



// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:medipanda/screens/splash_screen.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();  // Ensures Flutter is initialized
//   await Firebase.initializeApp();  // Initializes Firebase
//   runApp(MediPandaApp());
// }

// class MediPandaApp extends StatelessWidget {
//   const MediPandaApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'MediPanda',
//       theme: ThemeData(
//         primarySwatch: MaterialColor(
//           0xFF203c8c,
//           <int, Color>{
//             50: Color(0xFFE1E6F0),
//             100: Color(0xFFB3C2E0),
//             200: Color(0xFF80A1D0),
//             300: Color(0xFF4D80C0),
//             400: Color(0xFF266FB0),
//             500: Color(0xFF203c8c),
//             600: Color(0xFF1A2E70),
//             700: Color(0xFF142258),
//             800: Color(0xFF0E153F),
//             900: Color(0xFF0A0F2A),
//           },
//         ),
//       ),
//       home: SplashScreen(),
//     );
//   }
// }



import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medipanda/screens/splash_screen.dart';
import 'firebase_options.dart';  // Ensure this file exists



void main() async {
  WidgetsFlutterBinding.ensureInitialized();  

  // Ensure Firebase initializes correctly on Web
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Ensure this is set up
  );

  runApp(MediPandaApp());
}

class MediPandaApp extends StatelessWidget {
  const MediPandaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediPanda',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFF203c8c,
          <int, Color>{
            50: Color(0xFFE1E6F0),
            100: Color(0xFFB3C2E0),
            200: Color(0xFF80A1D0),
            300: Color(0xFF4D80C0),
            400: Color(0xFF266FB0),
            500: Color(0xFF203c8c),
            600: Color(0xFF1A2E70),
            700: Color(0xFF142258),
            800: Color(0xFF0E153F),
            900: Color(0xFF0A0F2A),
          },
        ),
      ),
      home: SplashScreen(),
    );
  }
}
