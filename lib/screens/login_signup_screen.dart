// // // import 'package:flutter/material.dart';
// // // import 'package:medipanda/screens/profile_screen.dart';
// // // import 'package:medipanda/screens/language_selection_screen.dart'; // Import the new screen

// // // class LoginSignupScreen extends StatelessWidget {
// // //   const LoginSignupScreen({super.key});
  
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Login / Signup', style: TextStyle(color: Colors.white)),
// // //         backgroundColor: Color(0xFF203c8c), // Updated app bar color
// // //       ),
// // //       body: Center(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: [
// // //               TextField(
// // //                 decoration: InputDecoration(
// // //                   labelText: 'Email',
// // //                   labelStyle: TextStyle(color: Color(0xFF203c8c)), // Updated label color
// // //                   border: OutlineInputBorder(),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 20),
// // //               TextField(
// // //                 obscureText: true,
// // //                 decoration: InputDecoration(
// // //                   labelText: 'Password',
// // //                   labelStyle: TextStyle(color: Color(0xFF203c8c)), // Updated label color
// // //                   border: OutlineInputBorder(),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 20),
// // //               ElevatedButton(
// // //                 onPressed: () {
// // //                   Navigator.push(
// // //                     context,
// // //                     MaterialPageRoute(builder: (context) => LanguageSelectionScreen()), // Navigate to the new screen
// // //                   );
// // //                 },
// // //                 style: ElevatedButton.styleFrom(
// // //                   backgroundColor: Color(0xFF203c8c), // Updated button color
// // //                 ),
// // //                 child: Text('Login', style: TextStyle(color: Colors.white)),
// // //               ),
// // //               TextButton(
// // //                 onPressed: () {},
// // //                 child: Text(
// // //                   'Sign Up',
// // //                   style: TextStyle(color: Color(0xFF203c8c)), // Updated text color
// // //                 ),
// // //               )
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:medipanda/screens/profile_screen.dart';
// // // import 'package:medipanda/screens/language_selection_screen.dart';
// // // import 'package:medipanda/screens/upload_screen.dart'; // Import the upload document screen

// // // class LoginSignupScreen extends StatelessWidget {
// // //   const LoginSignupScreen({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Container(
// // //         padding: EdgeInsets.symmetric(horizontal: 32),
// // //         decoration: BoxDecoration(
// // //           gradient: LinearGradient(
// // //             colors: [Color(0xFF203c8c), Color(0xFF5a82e6)],
// // //             begin: Alignment.topCenter,
// // //             end: Alignment.bottomCenter,
// // //           ),
// // //         ),
// // //         child: Center(
// // //           child: Column(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             crossAxisAlignment: CrossAxisAlignment.stretch,
// // //             children: [
// // //               Text(
// // //                 'MediPanda',
// // //                 textAlign: TextAlign.center,
// // //                 style: TextStyle(
// // //                   fontSize: 32,
// // //                   fontWeight: FontWeight.bold,
// // //                   color: Colors.white,
// // //                 ),
// // //               ),
// // //               SizedBox(height: 40),
// // //               TextField(
// // //                 decoration: InputDecoration(
// // //                   filled: true,
// // //                   fillColor: Colors.white,
// // //                   labelText: 'Email',
// // //                   prefixIcon: Icon(Icons.email, color: Color(0xFF203c8c)),
// // //                   border: OutlineInputBorder(
// // //                     borderRadius: BorderRadius.circular(12),
// // //                   ),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 20),
// // //               TextField(
// // //                 obscureText: true,
// // //                 decoration: InputDecoration(
// // //                   filled: true,
// // //                   fillColor: Colors.white,
// // //                   labelText: 'Password',
// // //                   prefixIcon: Icon(Icons.lock, color: Color(0xFF203c8c)),
// // //                   border: OutlineInputBorder(
// // //                     borderRadius: BorderRadius.circular(12),
// // //                   ),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 20),
// // //               ElevatedButton(
// // //                 onPressed: () {
// // //                   Navigator.push(
// // //                     context,
// // //                     MaterialPageRoute(builder: (context) => UploadScreen()),
// // //                   );
// // //                 },
// // //                 style: ElevatedButton.styleFrom(
// // //                   backgroundColor: Colors.white,
// // //                   padding: EdgeInsets.symmetric(vertical: 14),
// // //                   shape: RoundedRectangleBorder(
// // //                     borderRadius: BorderRadius.circular(12),
// // //                   ),
// // //                 ),
// // //                 child: Text(
// // //                   'Login',
// // //                   style: TextStyle(color: Color(0xFF203c8c), fontSize: 18),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 10),
// // //               TextButton(
// // //                 onPressed: () {
// // //                   Navigator.push(
// // //                     context,
// // //                     MaterialPageRoute(builder: (context) => LanguageSelectionScreen()),
// // //                   );
// // //                 },
// // //                 child: Text(
// // //                   'Sign Up',
// // //                   style: TextStyle(color: Colors.white, fontSize: 16),
// // //                 ),
// // //               )
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }



// // // import 'package:flutter/material.dart';
// // // import 'package:lottie/lottie.dart';
// // // import 'package:medipanda/screens/profile_screen.dart';
// // // import 'package:medipanda/screens/language_selection_screen.dart';
// // // import 'package:medipanda/screens/upload_screen.dart'; // Import the upload document screen

// // // class LoginSignupScreen extends StatefulWidget {
// // //   const LoginSignupScreen({super.key});

// // //   @override
// // //   _LoginSignupScreenState createState() => _LoginSignupScreenState();
// // // }

// // // class _LoginSignupScreenState extends State<LoginSignupScreen> {
// // //   bool _obscurePassword = true; // Toggle password visibility

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Stack(
// // //         children: [
// // //           // Your original background color
// // //           Container(
// // //             color: Color(0xFF203c8c), // Keeping your background color
// // //           ),

// // //           Center(
// // //             child: Padding(
// // //               padding: EdgeInsets.symmetric(horizontal: 32),
// // //               child: Column(
// // //                 mainAxisAlignment: MainAxisAlignment.center,
// // //                 crossAxisAlignment: CrossAxisAlignment.center,
// // //                 children: [
// // //                   // Lottie Animation from the Internet
// // //                   Lottie.network(
// // //                     'https://assets8.lottiefiles.com/packages/lf20_jcikwtux.json',
// // //                     width: 180,
// // //                     height: 180,
// // //                     fit: BoxFit.cover,
// // //                   ),

// // //                   SizedBox(height: 10),
                  
// // //                   // App Title
// // //                   Text(
// // //                     'MediPanda',
// // //                     textAlign: TextAlign.center,
// // //                     style: TextStyle(
// // //                       fontSize: 32,
// // //                       fontWeight: FontWeight.bold,
// // //                       color: Colors.white,
// // //                       letterSpacing: 1.5,
// // //                     ),
// // //                   ),

// // //                   SizedBox(height: 40),

// // //                   // Glassmorphism Card
// // //                   Container(
// // //                     padding: EdgeInsets.all(20),
// // //                     decoration: BoxDecoration(
// // //                       color: Colors.white.withOpacity(0.2),
// // //                       borderRadius: BorderRadius.circular(15),
// // //                       border: Border.all(color: Colors.white.withOpacity(0.3)),
// // //                       boxShadow: [
// // //                         BoxShadow(
// // //                           color: Colors.black.withOpacity(0.1),
// // //                           blurRadius: 10,
// // //                           spreadRadius: 2,
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     child: Column(
// // //                       children: [
// // //                         // Email Input
// // //                         TextField(
// // //                           style: TextStyle(color: Colors.white),
// // //                           decoration: InputDecoration(
// // //                             filled: true,
// // //                             fillColor: Colors.white.withOpacity(0.3),
// // //                             labelText: 'Email',
// // //                             labelStyle: TextStyle(color: Colors.white),
// // //                             prefixIcon: Icon(Icons.email, color: Colors.white),
// // //                             border: OutlineInputBorder(
// // //                               borderRadius: BorderRadius.circular(12),
// // //                               borderSide: BorderSide.none,
// // //                             ),
// // //                           ),
// // //                         ),

// // //                         SizedBox(height: 15),

// // //                         // Password Input with Toggle Visibility
// // //                         TextField(
// // //                           obscureText: _obscurePassword,
// // //                           style: TextStyle(color: Colors.white),
// // //                           decoration: InputDecoration(
// // //                             filled: true,
// // //                             fillColor: Colors.white.withOpacity(0.3),
// // //                             labelText: 'Password',
// // //                             labelStyle: TextStyle(color: Colors.white),
// // //                             prefixIcon: Icon(Icons.lock, color: Colors.white),
// // //                             suffixIcon: IconButton(
// // //                               icon: Icon(
// // //                                 _obscurePassword
// // //                                     ? Icons.visibility_off
// // //                                     : Icons.visibility,
// // //                                 color: Colors.white,
// // //                               ),
// // //                               onPressed: () {
// // //                                 setState(() {
// // //                                   _obscurePassword = !_obscurePassword;
// // //                                 });
// // //                               },
// // //                             ),
// // //                             border: OutlineInputBorder(
// // //                               borderRadius: BorderRadius.circular(12),
// // //                               borderSide: BorderSide.none,
// // //                             ),
// // //                           ),
// // //                         ),

// // //                         SizedBox(height: 20),

// // //                         // Login Button
// // //                         ElevatedButton(
// // //                           onPressed: () {
// // //                             Navigator.push(
// // //                               context,
// // //                               MaterialPageRoute(
// // //                                   builder: (context) => UploadScreen()),
// // //                             );
// // //                           },
// // //                           style: ElevatedButton.styleFrom(
// // //                             backgroundColor: Colors.white,
// // //                             padding: EdgeInsets.symmetric(vertical: 14),
// // //                             shape: RoundedRectangleBorder(
// // //                               borderRadius: BorderRadius.circular(12),
// // //                             ),
// // //                           ),
// // //                           child: Text(
// // //                             'Login',
// // //                             style:
// // //                                 TextStyle(color: Color(0xFF203c8c), fontSize: 18),
// // //                           ),
// // //                         ),

// // //                         SizedBox(height: 10),

// // //                         // Google Login Button
// // //                         TextButton.icon(
// // //                           onPressed: () {
// // //                             // Google Sign-in Logic Here
// // //                           },
// // //                           icon: Icon(Icons.g_mobiledata, color: Colors.white),
// // //                           label: Text(
// // //                             'Continue with Google',
// // //                             style: TextStyle(color: Colors.white, fontSize: 16),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),

// // //                   SizedBox(height: 15),

// // //                   // Sign-up Option
// // //                   TextButton(
// // //                     onPressed: () {
// // //                       Navigator.push(
// // //                         context,
// // //                         MaterialPageRoute(
// // //                             builder: (context) => LanguageSelectionScreen()),
// // //                       );
// // //                     },
// // //                     child: Text(
// // //                       'Sign Up',
// // //                       style: TextStyle(color: Colors.white, fontSize: 16),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }



// // import 'package:flutter/material.dart';
// // import 'package:lottie/lottie.dart';
// // import 'package:medipanda/screens/profile_screen.dart';
// // import 'package:medipanda/screens/language_selection_screen.dart';
// // import 'package:medipanda/screens/upload_screen.dart'; // Import the upload document screen

// // class LoginSignupScreen extends StatefulWidget {
// //   const LoginSignupScreen({super.key});

// //   @override
// //   _LoginSignupScreenState createState() => _LoginSignupScreenState();
// // }

// // class _LoginSignupScreenState extends State<LoginSignupScreen> {
// //   bool _obscurePassword = true; // Toggle password visibility

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           // Background color (Your Original Dark Blue)
// //           Container(
// //             color: Color(0xFF203c8c), // Keeping your background color
// //           ),

// //           Center(
// //             child: Padding(
// //               padding: EdgeInsets.symmetric(horizontal: 32),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 crossAxisAlignment: CrossAxisAlignment.center,
// //                 children: [
// //                   // 🐼 Panda Animation
// //                   Lottie.network(
// //                     'https://assets8.lottiefiles.com/packages/lf20_jcikwtux.json', 
// //                     width: 180,
// //                     height: 180,
// //                     fit: BoxFit.cover,
// //                   ),

// //                   SizedBox(height: 10),
                  
// //                   // App Title
// //                   Text(
// //                     'MediPanda',
// //                     textAlign: TextAlign.center,
// //                     style: TextStyle(
// //                       fontSize: 32,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white,
// //                       letterSpacing: 1.5,
// //                     ),
// //                   ),

// //                   SizedBox(height: 30),

// //                   // Glassmorphism Login Box
// //                   Container(
// //                     padding: EdgeInsets.all(20),
// //                     decoration: BoxDecoration(
// //                       color: Colors.white.withOpacity(0.2),
// //                       borderRadius: BorderRadius.circular(15),
// //                       border: Border.all(color: Colors.white.withOpacity(0.3)),
// //                       boxShadow: [
// //                         BoxShadow(
// //                           color: Colors.black.withOpacity(0.1),
// //                           blurRadius: 10,
// //                           spreadRadius: 2,
// //                         ),
// //                       ],
// //                     ),
// //                     child: Column(
// //                       children: [
// //                         // Email Input
// //                         TextField(
// //                           style: TextStyle(color: Colors.white),
// //                           decoration: InputDecoration(
// //                             filled: true,
// //                             fillColor: Colors.white.withOpacity(0.3),
// //                             labelText: 'Email',
// //                             labelStyle: TextStyle(color: Colors.white),
// //                             prefixIcon: Icon(Icons.email, color: Colors.white),
// //                             border: OutlineInputBorder(
// //                               borderRadius: BorderRadius.circular(12),
// //                               borderSide: BorderSide.none,
// //                             ),
// //                           ),
// //                         ),

// //                         SizedBox(height: 15),

// //                         // Password Input with Toggle Visibility
// //                         TextField(
// //                           obscureText: _obscurePassword,
// //                           style: TextStyle(color: Colors.white),
// //                           decoration: InputDecoration(
// //                             filled: true,
// //                             fillColor: Colors.white.withOpacity(0.3),
// //                             labelText: 'Password',
// //                             labelStyle: TextStyle(color: Colors.white),
// //                             prefixIcon: Icon(Icons.lock, color: Colors.white),
// //                             suffixIcon: IconButton(
// //                               icon: Icon(
// //                                 _obscurePassword
// //                                     ? Icons.visibility_off
// //                                     : Icons.visibility,
// //                                 color: Colors.white,
// //                               ),
// //                               onPressed: () {
// //                                 setState(() {
// //                                   _obscurePassword = !_obscurePassword;
// //                                 });
// //                               },
// //                             ),
// //                             border: OutlineInputBorder(
// //                               borderRadius: BorderRadius.circular(12),
// //                               borderSide: BorderSide.none,
// //                             ),
// //                           ),
// //                         ),

// //                         SizedBox(height: 20),

// //                         // Login Button
// //                         ElevatedButton(
// //                           onPressed: () {
// //                             Navigator.push(
// //                               context,
// //                               MaterialPageRoute(
// //                                   builder: (context) => UploadScreen()),
// //                             );
// //                           },
// //                           style: ElevatedButton.styleFrom(
// //                             backgroundColor: Colors.white,
// //                             padding: EdgeInsets.symmetric(vertical: 14),
// //                             shape: RoundedRectangleBorder(
// //                               borderRadius: BorderRadius.circular(12),
// //                             ),
// //                           ),
// //                           child: Text(
// //                             'Login',
// //                             style:
// //                                 TextStyle(color: Color(0xFF203c8c), fontSize: 18),
// //                           ),
// //                         ),

// //                         SizedBox(height: 10),

// //                         // Sign-up Button (Moved Inside the Box)
// //                         TextButton(
// //                           onPressed: () {
// //                             Navigator.push(
// //                               context,
// //                               MaterialPageRoute(
// //                                   builder: (context) => LanguageSelectionScreen()),
// //                             );
// //                           },
// //                           child: Text(
// //                             'Sign Up',
// //                             style: TextStyle(color: Colors.white, fontSize: 16),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }




// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:medipanda/screens/profile_screen.dart';
// import 'package:medipanda/screens/language_selection_screen.dart';
// import 'package:medipanda/screens/upload_screen.dart'; // Import the upload document screen

// class LoginSignupScreen extends StatefulWidget {
//   const LoginSignupScreen({super.key});

//   @override
//   _LoginSignupScreenState createState() => _LoginSignupScreenState();
// }

// class _LoginSignupScreenState extends State<LoginSignupScreen> {
//   bool _obscurePassword = true; // Toggle password visibility
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   // Sign in user
//   Future<void> _signIn() async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim(),
//       );
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => UploadScreen()),
//       );
//     } catch (e) {
//       _showErrorDialog(e.toString());
//     }
//   }

//   // Sign up user
//   Future<void> _signUp() async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim(),
//       );
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => LanguageSelectionScreen()),
//       );
//     } catch (e) {
//       _showErrorDialog(e.toString());
//     }
//   }

//   // Show error dialog
//   void _showErrorDialog(String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("Error"),
//           content: Text(message),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text("OK"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background color (Dark Blue)
//           Container(
//             color: Color(0xFF203c8c), // Keeping your background color
//           ),

//           Center(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 32),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   // Panda Animation
//                   Lottie.network(
//                     'https://assets8.lottiefiles.com/packages/lf20_jcikwtux.json', 
//                     width: 180,
//                     height: 180,
//                     fit: BoxFit.cover,
//                   ),

//                   SizedBox(height: 10),
                  
//                   // App Title
//                   Text(
//                     'MediPanda',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       letterSpacing: 1.5,
//                     ),
//                   ),

//                   SizedBox(height: 30),

//                   // Glassmorphism Login Box
//                   Container(
//                     padding: EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.2),
//                       borderRadius: BorderRadius.circular(15),
//                       border: Border.all(color: Colors.white.withOpacity(0.3)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           blurRadius: 10,
//                           spreadRadius: 2,
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         // Email Input
//                         TextField(
//                           controller: _emailController,
//                           style: TextStyle(color: Colors.white),
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white.withOpacity(0.3),
//                             labelText: 'Email',
//                             labelStyle: TextStyle(color: Colors.white),
//                             prefixIcon: Icon(Icons.email, color: Colors.white),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12),
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),

//                         SizedBox(height: 15),

//                         // Password Input with Toggle Visibility
//                         TextField(
//                           controller: _passwordController,
//                           obscureText: _obscurePassword,
//                           style: TextStyle(color: Colors.white),
//                           decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.white.withOpacity(0.3),
//                             labelText: 'Password',
//                             labelStyle: TextStyle(color: Colors.white),
//                             prefixIcon: Icon(Icons.lock, color: Colors.white),
//                             suffixIcon: IconButton(
//                               icon: Icon(
//                                 _obscurePassword
//                                     ? Icons.visibility_off
//                                     : Icons.visibility,
//                                 color: Colors.white,
//                               ),
//                               onPressed: () {
//                                 setState(() {
//                                   _obscurePassword = !_obscurePassword;
//                                 });
//                               },
//                             ),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12),
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),

//                         SizedBox(height: 20),

//                         // Login Button
//                         ElevatedButton(
//                           onPressed: _signIn,  // Calls Firebase Login Function
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             padding: EdgeInsets.symmetric(vertical: 14),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: Text(
//                             'Login',
//                             style:
//                                 TextStyle(color: Color(0xFF203c8c), fontSize: 18),
//                           ),
//                         ),

//                         SizedBox(height: 10),

//                         // Sign-up Button
//                         TextButton(
//                           onPressed: _signUp,  // Calls Firebase Signup Function
//                           child: Text(
//                             'Sign Up',
//                             style: TextStyle(color: Colors.white, fontSize: 16),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medipanda/screens/profile_screen.dart';
import 'package:medipanda/screens/language_selection_screen.dart';
import 'package:medipanda/screens/upload_screen.dart'; // Import the upload document screen

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool _obscurePassword = true; // Toggle password visibility
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Sign in user
  Future<void> _signIn() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      // Get the Firebase UID
      String uid = userCredential.user!.uid;

      // Check if user exists in Firestore
      DocumentSnapshot userDoc = await _firestore.collection('users').doc(uid).get();

      if (userDoc.exists) {
        // Navigate to Upload Screen if user exists in Firestore
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => UploadScreen()),
        );
      } else {
        _showErrorDialog("User not found in database. Please sign up.");
      }
    } catch (e) {
      _showErrorDialog(e.toString());
    }
  }

  // Sign up user and store in Firestore
  Future<void> _signUp() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      // Get the Firebase UID
      String uid = userCredential.user!.uid;

      // Store user email in Firestore
      await _firestore.collection('users').doc(uid).set({
        'email': _emailController.text.trim(),
        'createdAt': FieldValue.serverTimestamp(), // Store account creation time
      });

      // Navigate to Language Selection Screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LanguageSelectionScreen()),
      );
    } catch (e) {
      _showErrorDialog(e.toString());
    }
  }

  // Show error dialog
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color (Dark Blue)
          Container(
            color: Color(0xFF203c8c), // Keeping your background color
          ),

          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Panda Animation
                  Lottie.network(
                    'https://lottie.host/0e3f810e-04ad-4b8f-afeb-fdcce93d9454/gsD51kFKgh.json', 
                    width: 180,
                    height: 180,
                    fit: BoxFit.cover,
                  ),

                  SizedBox(height: 10),
                  
                  // App Title
                  Text(
                    'MediPanda',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),

                  SizedBox(height: 30),

                  // Glassmorphism Login Box
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white.withOpacity(0.3)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Email Input
                        TextField(
                          controller: _emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.3),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.email, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        SizedBox(height: 15),

                        // Password Input with Toggle Visibility
                        TextField(
                          controller: _passwordController,
                          obscureText: _obscurePassword,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.3),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.lock, color: Colors.white),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        // Login Button
                        ElevatedButton(
                          onPressed: _signIn,  // Calls Firebase Login Function
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style:
                                TextStyle(color: Color(0xFF203c8c), fontSize: 18),
                          ),
                        ),

                        SizedBox(height: 10),

                        // Sign-up Button
                        TextButton(
                          onPressed: _signUp,  // Calls Firebase Signup Function
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
