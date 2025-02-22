// import 'package:flutter/material.dart';
// import 'package:medipanda/screens/profile_screen.dart'; // Import the profile screen

// class LanguageSelectionScreen extends StatelessWidget {
//   const LanguageSelectionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Your Preferred Language', style: TextStyle(color: Colors.white)),
//         backgroundColor: Color(0xFF203c8c),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               padding: const EdgeInsets.all(16.0),
//               children: [
//                 ListTile(
//                   title: Text('English'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Spanish'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('French'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Tamil (தமிழ்)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Hindi (हिन्दी)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Mandarin (普通话)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Arabic (العربية)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Bengali (বাংলা)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Portuguese (Português)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Russian (Русский)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Japanese (日本語)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('German (Deutsch)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),
//                 ListTile(
//                   title: Text('French (Français)'),
//                   onTap: () {
//                     // Handle language selection
//                   },
//                 ),

//               ],
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               // Navigate to the profile screen after selecting a language
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => ProfileScreen()), // Navigate to the profile screen
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Color(0xFF203c8c), // Button color
//             ),
//             child: Text('Next', style: TextStyle(color: Colors.white)),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:medipanda/screens/profile_screen.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Preferred Language', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFF203c8c),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Choose a language to continue',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              children: [
                _buildLanguageTile('English', context),
                _buildLanguageTile('Spanish (Español)', context),
                _buildLanguageTile('French (Français)', context),
                _buildLanguageTile('Tamil (தமிழ்)', context),
                _buildLanguageTile('Hindi (हिन्दी)', context),
                _buildLanguageTile('Mandarin (普通话)', context),
                _buildLanguageTile('Arabic (العربية)', context),
                _buildLanguageTile('Bengali (বাংলা)', context),
                _buildLanguageTile('Portuguese (Português)', context),
                _buildLanguageTile('Russian (Русский)', context),
                _buildLanguageTile('Japanese (日本語)', context),
                _buildLanguageTile('German (Deutsch)', context),
                _buildLanguageTile('Korean (한국어)', context),
                _buildLanguageTile('Italian (Italiano)', context),
                _buildLanguageTile('Dutch (Nederlands)', context),
                _buildLanguageTile('Greek (Ελληνικά)', context),
                _buildLanguageTile('Turkish (Türkçe)', context),
                _buildLanguageTile('Swahili (Kiswahili)', context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF203c8c),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Next', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageTile(String language, BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(language, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        trailing: Icon(Icons.language, color: Color(0xFF203c8c)),
        onTap: () {
          // Handle language selection
        },
      ),
    );
  }
}
