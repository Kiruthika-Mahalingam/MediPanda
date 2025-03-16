// import 'package:flutter/material.dart';
// import 'package:medipanda/screens/chatbot_screen.dart';

// class HistoryScreen extends StatefulWidget {
//   final List<Map<String, dynamic>> documents;

//   const HistoryScreen(List<Map<String, dynamic>> uploadedFiles, {super.key, required this.documents});

//   @override
//   _HistoryScreenState createState() => _HistoryScreenState();
// }

// class _HistoryScreenState extends State<HistoryScreen> {
//   List<Map<String, dynamic>> filteredDocuments = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredDocuments = widget.documents;
//   }

//   void filterDocuments(String query) {
//     setState(() {
//       filteredDocuments = widget.documents.where((doc) {
//         return doc["name"]!.toLowerCase().contains(query.toLowerCase()) ||
//                doc["type"]!.toLowerCase().contains(query.toLowerCase()) ||
//                doc["date"]!.contains(query) ||
//                doc["doctor"]!.toLowerCase().contains(query.toLowerCase());
//       }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Medical History', style: TextStyle(color: Colors.white)),
//         backgroundColor: Color(0xFF203c8c),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 hintText: "Search by Name, Type, Date, or Doctor",
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//               ),
//               onChanged: filterDocuments,
//             ),
//             SizedBox(height: 10),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: filteredDocuments.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       leading: Icon(Icons.insert_drive_file, color: Color(0xFF203c8c)),
//                       title: Text(filteredDocuments[index]["name"]!),
//                       subtitle: Text("Type: ${filteredDocuments[index]["type"]!} | Date: ${filteredDocuments[index]["date"]!} | Doctor: ${filteredDocuments[index]["doctor"]!}"),
//                       trailing: PopupMenuButton(
//                         icon: Icon(Icons.more_vert),
//                         itemBuilder: (context) => [
//                           PopupMenuItem(value: "Download", child: Text("Download")),
//                           PopupMenuItem(value: "Delete", child: Text("Delete")),
//                           PopupMenuItem(value: "Rename", child: Text("Rename")),
//                           PopupMenuItem(value: "Extract AI Data", child: Text("Extract AI Data")),
//                         ],
//                         onSelected: (value) {
//                           print("Selected action: $value");
//                         },
//                       ),
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => ChatBotScreen()),
//                         );
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:medipanda/screens/chatbot_screen.dart';
// import 'package:medipanda/screens/upload_screen.dart';


// class HistoryScreen extends StatefulWidget {
//   const HistoryScreen(List<Map<String, dynamic>> uploadedFiles, {super.key, required List documents});

//   @override
//   _HistoryScreenState createState() => _HistoryScreenState();
// }

// class _HistoryScreenState extends State<HistoryScreen> {
//   List<Map<String, String>> documents = [
//     {"name": "Prescription_01.pdf", "type": "Prescription", "date": "12-Feb-2025", "doctor": "Dr. Smith"},
//     {"name": "Lab_Report.jpg", "type": "Lab Report", "date": "10-Feb-2025", "doctor": "Dr. Patel"},
//     {"name": "Scan_Result.png", "type": "Scan", "date": "08-Feb-2025", "doctor": "Dr. Johnson"},
//   ];

//   List<Map<String, String>> filteredDocuments = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredDocuments = documents;
//   }

//   void filterDocuments(String query) {
//     setState(() {
//       filteredDocuments = documents.where((doc) {
//         return doc["name"]!.toLowerCase().contains(query.toLowerCase()) ||
//                doc["type"]!.toLowerCase().contains(query.toLowerCase()) ||
//                doc["date"]!.contains(query) ||
//                doc["doctor"]!.toLowerCase().contains(query.toLowerCase());
//       }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Medical History', style: TextStyle(color: Colors.white)),
//         backgroundColor: Color(0xFF203c8c),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           children: [
//             // 🔍 Search Bar
//             TextField(
//               decoration: InputDecoration(
//                 hintText: "Search by Name, Type, Date, or Doctor",
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//               ),
//               onChanged: filterDocuments,
//             ),
//             SizedBox(height: 10),

//             // 📂 Document List
//             Expanded(
//               child: ListView.builder(
//                 itemCount: filteredDocuments.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       leading: Icon(Icons.insert_drive_file, color: Color(0xFF203c8c)),
//                       title: Text(filteredDocuments[index]["name"]!),
//                       subtitle: Text("Type: ${filteredDocuments[index]["type"]!} | Date: ${filteredDocuments[index]["date"]!} | Doctor: ${filteredDocuments[index]["doctor"]!}"),
//                       trailing: PopupMenuButton(
//                         icon: Icon(Icons.more_vert),
//                         itemBuilder: (context) => [
//                           PopupMenuItem(value: "Download", child: Text("Download")),
//                           PopupMenuItem(value: "Delete", child: Text("Delete")),
//                           PopupMenuItem(value: "Rename", child: Text("Rename")),
//                           PopupMenuItem(value: "Extract AI Data", child: Text("Extract AI Data")), // AI Extraction Placeholder
//                         ],
//                         onSelected: (value) {
//                           print("Selected action: $value");
//                         },
//                       ),
//                       onTap: () {
//                         // Navigate to chatbot for more details
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => ChatBotScreen()),
//                         );
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// class HistoryScreen extends StatefulWidget {
//   final List<Map<String, dynamic>> uploadedFiles;

//   const HistoryScreen({Key? key, required this.uploadedFiles}) : super(key: key);

//   @override
//   _HistoryScreenState createState() => _HistoryScreenState();
// }

// class _HistoryScreenState extends State<HistoryScreen> {
//   List<Map<String, dynamic>> filteredDocuments = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredDocuments = widget.uploadedFiles;
//   }

//   void filterDocuments(String query) {
//     setState(() {
//       filteredDocuments = widget.uploadedFiles.where((doc) {
//         return doc["file"].path.toLowerCase().contains(query.toLowerCase()) ||
//                doc["type"].toLowerCase().contains(query.toLowerCase()) ||
//                doc["date"].contains(query) ||
//                doc["doctor"].toLowerCase().contains(query.toLowerCase());
//       }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Medical History', style: TextStyle(color: Colors.white)),
//         backgroundColor: Color(0xFF203c8c),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               decoration: InputDecoration(labelText: "Search Documents"),
//               onChanged: filterDocuments,
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: filteredDocuments.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(filteredDocuments[index]["file"].path.split('/').last),
//                   subtitle: Text("${filteredDocuments[index]["type"]} - ${filteredDocuments[index]["doctor"]} (${filteredDocuments[index]["date"]})"),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:medipanda/screens/chatbot_screen.dart';
import 'package:medipanda/screens/upload_screen.dart';

class HistoryScreen extends StatefulWidget {
  final List<Map<String, dynamic>> uploadedFiles;

  const HistoryScreen({Key? key, required this.uploadedFiles}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<Map<String, dynamic>> filteredDocuments = [];

  @override
  void initState() {
    super.initState();
    filteredDocuments = widget.uploadedFiles;
  }

  void filterDocuments(String query) {
    setState(() {
      filteredDocuments = widget.uploadedFiles.where((doc) {
        return doc["file"].path.toLowerCase().contains(query.toLowerCase()) ||
               doc["type"].toLowerCase().contains(query.toLowerCase()) ||
               doc["date"].contains(query) ||
               doc["doctor"].toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical History', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF203c8c),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            // 🔍 Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search by Name, Type, Date, or Doctor",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onChanged: filterDocuments,
            ),
            SizedBox(height: 10),

            // 📂 Document List
            Expanded(
              child: ListView.builder(
                itemCount: filteredDocuments.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.insert_drive_file, color: Color(0xFF203c8c)),
                      title: Text(filteredDocuments[index]["file"].path.split('/').last),
                      subtitle: Text("Type: ${filteredDocuments[index]["type"]} | Date: ${filteredDocuments[index]["date"]} | Doctor: ${filteredDocuments[index]["doctor"]}"),
                      trailing: PopupMenuButton(
                        icon: Icon(Icons.more_vert),
                        itemBuilder: (context) => [
                          PopupMenuItem(value: "Download", child: Text("Download")),
                          PopupMenuItem(value: "Delete", child: Text("Delete")),
                          PopupMenuItem(value: "Rename", child: Text("Rename")),
                          PopupMenuItem(value: "Extract AI Data", child: Text("Extract AI Data")),
                        ],
                        onSelected: (value) {
                          print("Selected action: $value");
                        },
                      ),
                      onTap: () {
                        // Navigate to chatbot for more details
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatBotScreen()),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
