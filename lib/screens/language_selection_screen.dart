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


// 

import 'package:flutter/material.dart';
import 'package:medipanda/screens/profile_screen.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  _LanguageSelectionScreenState createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String? _selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Preferred Language',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
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
                _buildLanguageTile('English'),
                _buildLanguageTile('Spanish (Español)'),
                _buildLanguageTile('French (Français)'),
                _buildLanguageTile('Tamil (தமிழ்)'),
                _buildLanguageTile('Hindi (हिन्दी)'),
                _buildLanguageTile('Mandarin (普通话)'),
                _buildLanguageTile('Arabic (العربية)'),
                _buildLanguageTile('Bengali (বাংলা)'),
                _buildLanguageTile('Portuguese (Português)'),
                _buildLanguageTile('Russian (Русский)'),
                _buildLanguageTile('Japanese (日本語)'),
                _buildLanguageTile('German (Deutsch)'),
                _buildLanguageTile('Korean (한국어)'),
                _buildLanguageTile('Italian (Italiano)'),
                _buildLanguageTile('Dutch (Nederlands)'),
                _buildLanguageTile('Greek (Ελληνικά)'),
                _buildLanguageTile('Turkish (Türkçe)'),
                _buildLanguageTile('Swahili (Kiswahili)'),
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

  Widget _buildLanguageTile(String language) {
    bool isSelected = _selectedLanguage == language;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLanguage = language;
        });
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: isSelected ? Color(0xFF203c8c).withOpacity(0.2) : Colors.white,
        child: ListTile(
          title: Text(language,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? Color(0xFF203c8c) : Colors.black)),
          trailing: isSelected
              ? Icon(Icons.check_circle, color: Color(0xFF203c8c))
              : Icon(Icons.language, color: Color(0xFF203c8c)),
        ),
      ),
    );
  }
}