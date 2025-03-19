// import 'package:flutter/material.dart';
// import 'package:medipanda/screens/history_screen.dart';

// class UploadScreen extends StatelessWidget {
//   const UploadScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Upload Medical Documents',style: TextStyle(color: Colors.white),),
//         backgroundColor: Color(0xFF203c8c), // Updated app bar color
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.upload_file, size: 100, color: Color(0xFF203c8c)), // Updated icon color
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => HistoryScreen(uploadedFiles: [],)),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xFF203c8c), // Updated button color
//               ),
//               child: Text('Upload Report',style: TextStyle(color: Colors.white),),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// // import 'dart:io';
// // import 'package:file_picker/file_picker.dart';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:medipanda/screens/history_screen.dart';

// // class UploadScreen extends StatefulWidget {
// //   const UploadScreen({super.key});

// //   @override
// //   _UploadScreenState createState() => _UploadScreenState();
// // }

// // class _UploadScreenState extends State<UploadScreen> {
// //   List<File> uploadedFiles = [];

// //   // Pick a file (PDF, JPG, PNG)
// //   Future<void> _pickFile() async {
// //     FilePickerResult? result = await FilePicker.platform.pickFiles(
// //       type: FileType.custom,
// //       allowedExtensions: ['pdf', 'jpg', 'png'],
// //     );

// //     if (result != null) {
// //       setState(() {
// //         uploadedFiles.add(File(result.files.single.path!));
// //       });
// //     }
// //   }

// //   // Take a picture using the camera
// //   Future<void> _scanDocument() async {
// //     final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

// //     if (pickedFile != null) {
// //       setState(() {
// //         uploadedFiles.add(File(pickedFile.path));
// //       });
// //     }
// //   }

// //   // Delete a file
// //   void _deleteFile(int index) {
// //     setState(() {
// //       uploadedFiles.removeAt(index);
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Upload Medical Documents', style: TextStyle(color: Colors.white)),
// //         backgroundColor: Color(0xFF203c8c),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             _buildUploadOptions(),
// //             SizedBox(height: 20),
// //             _buildUploadedFilesList(),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // Upload and scan buttons
// //   Widget _buildUploadOptions() {
// //     return Card(
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //       elevation: 4,
// //       child: Padding(
// //         padding: EdgeInsets.all(16),
// //         child: Column(
// //           children: [
// //             Icon(Icons.upload_file, size: 80, color: Color(0xFF203c8c)),
// //             SizedBox(height: 10),
// //             Text("Upload or Scan Medical Reports", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //             SizedBox(height: 10),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 ElevatedButton.icon(
// //                   onPressed: _pickFile,
// //                   icon: Icon(Icons.file_upload, color: Colors.white),
// //                   label: Text("Upload File"),
// //                   style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
// //                 ),
// //                 SizedBox(width: 10),
// //                 ElevatedButton.icon(
// //                   onPressed: _scanDocument,
// //                   icon: Icon(Icons.camera_alt, color: Colors.white),
// //                   label: Text("Scan Document"),
// //                   style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // List of uploaded files
// //   Widget _buildUploadedFilesList() {
// //     return Expanded(
// //       child: Card(
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //         elevation: 4,
// //         child: Padding(
// //           padding: EdgeInsets.all(16),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text("Uploaded Documents", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //               Divider(),
// //               Expanded(
// //                 child: uploadedFiles.isEmpty
// //                     ? Center(child: Text("No reports uploaded yet"))
// //                     : ListView.builder(
// //                         itemCount: uploadedFiles.length,
// //                         itemBuilder: (context, index) {
// //                           return ListTile(
// //                             leading: Icon(Icons.picture_as_pdf, color: Color(0xFF203c8c)),
// //                             title: Text(uploadedFiles[index].path.split('/').last),
// //                             trailing: IconButton(
// //                               icon: Icon(Icons.delete, color: Colors.red),
// //                               onPressed: () => _deleteFile(index),
// //                             ),
// //                           );
// //                         },
// //                       ),
// //               ),
// //               SizedBox(height: 10),
// //               ElevatedButton.icon(
// //                 onPressed: () {
// //                   Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryScreen()));
// //                 },
// //                 icon: Icon(Icons.history, color: Colors.white),
// //                 label: Text("View Report History"),
// //                 style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'dart:io';
// // import 'package:file_picker/file_picker.dart';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:medipanda/screens/history_screen.dart';
// // import 'package:medipanda/screens/profile_screen.dart'; // Import ProfileScreen

// // class UploadScreen extends StatefulWidget {
// //   const UploadScreen({super.key});

// //   @override
// //   _UploadScreenState createState() => _UploadScreenState();
// // }

// // class _UploadScreenState extends State<UploadScreen> {
// //   List<File> uploadedFiles = [];

// //   Future<void> _pickFile() async {
// //     FilePickerResult? result = await FilePicker.platform.pickFiles(
// //       type: FileType.custom,
// //       allowedExtensions: ['pdf', 'jpg', 'png'],
// //     );

// //     if (result != null) {
// //       setState(() {
// //         uploadedFiles.add(File(result.files.single.path!));
// //       });
// //     }
// //   }

// //   Future<void> _scanDocument() async {
// //     final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

// //     if (pickedFile != null) {
// //       setState(() {
// //         uploadedFiles.add(File(pickedFile.path));
// //       });
// //     }
// //   }

// //   void _deleteFile(int index) {
// //     setState(() {
// //       uploadedFiles.removeAt(index);
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Upload Medical Documents', style: TextStyle(color: Colors.white)),
// //         backgroundColor: Color(0xFF203c8c),
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.account_circle, size: 30, color: Colors.white),
// //             onPressed: () {
// //               // Navigate to ProfileScreen
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => ProfileScreen()),
// //               );
// //             },
// //           ),
// //         ],
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             _buildUploadOptions(),
// //             SizedBox(height: 20),
// //             _buildUploadedFilesList(),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildUploadOptions() {
// //     return Card(
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //       elevation: 4,
// //       child: Padding(
// //         padding: EdgeInsets.all(16),
// //         child: Column(
// //           children: [
// //             Icon(Icons.upload_file, size: 80, color: Color(0xFF203c8c)),
// //             SizedBox(height: 10),
// //             Text("Upload or Scan Medical Reports", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //             SizedBox(height: 10),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 ElevatedButton.icon(
// //                   onPressed: _pickFile,
// //                   icon: Icon(Icons.file_upload, color: Colors.white),
// //                   label: Text("Upload File"),
// //                   style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
// //                 ),
// //                 SizedBox(width: 10),
// //                 ElevatedButton.icon(
// //                   onPressed: _scanDocument,
// //                   icon: Icon(Icons.camera_alt, color: Colors.white),
// //                   label: Text("Scan Document"),
// //                   style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildUploadedFilesList() {
// //     return Expanded(
// //       child: Card(
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //         elevation: 4,
// //         child: Padding(
// //           padding: EdgeInsets.all(16),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text("Uploaded Documents", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //               Divider(),
// //               Expanded(
// //                 child: uploadedFiles.isEmpty
// //                     ? Center(child: Text("No reports uploaded yet"))
// //                     : ListView.builder(
// //                         itemCount: uploadedFiles.length,
// //                         itemBuilder: (context, index) {
// //                           return ListTile(
// //                             leading: Icon(Icons.picture_as_pdf, color: Color(0xFF203c8c)),
// //                             title: Text(uploadedFiles[index].path.split('/').last),
// //                             trailing: IconButton(
// //                               icon: Icon(Icons.delete, color: Colors.red),
// //                               onPressed: () => _deleteFile(index),
// //                             ),
// //                           );
// //                         },
// //                       ),
// //               ),
// //               SizedBox(height: 10),
// //               ElevatedButton.icon(
// //                 onPressed: () {
// //                   Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryScreen()));
// //                 },
// //                 icon: Icon(Icons.history, color: Colors.white),
// //                 label: Text("View Report History"),
// //                 style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'dart:io';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:medipanda/screens/history_screen.dart';
// import 'package:medipanda/screens/profile_screen.dart';

// class UploadScreen extends StatefulWidget {
//   const UploadScreen({super.key});

//   @override
//   _UploadScreenState createState() => _UploadScreenState();
// }

// class _UploadScreenState extends State<UploadScreen> {
//   List<Map<String, dynamic>> uploadedFiles = []; // Store file & details

//   Future<void> _pickFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['pdf', 'jpg', 'png'],
//     );

//     if (result != null) {
//       File file = File(result.files.single.path!);
//       _showDetailsDialog(file); // Ask for details after picking file
//     }
//   }

//   Future<void> _scanDocument() async {
//     final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

//     if (pickedFile != null) {
//       File file = File(pickedFile.path);
//       _showDetailsDialog(file); // Ask for details after scanning
//     }
//   }

//   void _showDetailsDialog(File file) {
//     TextEditingController titleController = TextEditingController();
//     TextEditingController doctorController = TextEditingController();
//     TextEditingController dateController = TextEditingController();

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("Enter Document Details"),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: titleController,
//                 decoration: InputDecoration(labelText: "Document Title"),
//               ),
//               TextField(
//                 controller: doctorController,
//                 decoration: InputDecoration(labelText: "Doctor's Name"),
//               ),
//               TextField(
//                 controller: dateController,
//                 decoration: InputDecoration(labelText: "Date (YYYY-MM-DD)"),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context); // Close dialog
//               },
//               child: Text("Cancel"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (titleController.text.isNotEmpty &&
//                     doctorController.text.isNotEmpty &&
//                     dateController.text.isNotEmpty) {
//                   setState(() {
//                     uploadedFiles.add({
//                       "file": file,
//                       "title": titleController.text,
//                       "doctor": doctorController.text,
//                       "date": dateController.text,
//                     });
//                   });
//                   Navigator.pop(context);
//                 }
//               },
//               child: Text("Save"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _deleteFile(int index) {
//     setState(() {
//       uploadedFiles.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Upload Medical Documents', style: TextStyle(color: Colors.white)),
//         backgroundColor: Color(0xFF203c8c),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle, size: 30, color: Colors.white),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => ProfileScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildUploadOptions(),
//             SizedBox(height: 20),
//             _buildUploadedFilesList(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildUploadOptions() {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 4,
//       child: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Icon(Icons.upload_file, size: 80, color: Color(0xFF203c8c)),
//             SizedBox(height: 10),
//             Text("Upload or Scan Medical Reports", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton.icon(
//                   onPressed: _pickFile,
//                   icon: Icon(Icons.file_upload, color: Colors.white),
//                   label: Text("Upload File"),
//                   style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
//                 ),
//                 SizedBox(width: 10),
//                 ElevatedButton.icon(
//                   onPressed: _scanDocument,
//                   icon: Icon(Icons.camera_alt, color: Colors.white),
//                   label: Text("Scan Document"),
//                   style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildUploadedFilesList() {
//     return Expanded(
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         elevation: 4,
//         child: Padding(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Uploaded Documents", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               Divider(),
//               Expanded(
//                 child: uploadedFiles.isEmpty
//                     ? Center(child: Text("No reports uploaded yet"))
//                     : ListView.builder(
//                         itemCount: uploadedFiles.length,
//                         itemBuilder: (context, index) {
//                           return ListTile(
//                             leading: Icon(Icons.picture_as_pdf, color: Color(0xFF203c8c)),
//                             title: Text(uploadedFiles[index]["title"]),
//                             subtitle: Text(
//                                 "Doctor: ${uploadedFiles[index]["doctor"]}\nDate: ${uploadedFiles[index]["date"]}"),
//                             trailing: IconButton(
//                               icon: Icon(Icons.delete, color: Colors.red),
//                               onPressed: () => _deleteFile(index),
//                             ),
//                           );
//                         },
//                       ),
//               ),
//               SizedBox(height: 10),
//               ElevatedButton.icon(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryScreen()));
//                 },
//                 icon: Icon(Icons.history, color: Colors.white),
//                 label: Text("View Report History"),
//                 style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'dart:io';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:medipanda/screens/history_screen.dart';
// import 'package:medipanda/screens/profile_screen.dart';

// class UploadScreen extends StatefulWidget {
//   const UploadScreen({super.key});

//   @override
//   _UploadScreenState createState() => _UploadScreenState();
// }

// class _UploadScreenState extends State<UploadScreen> {
//   List<Map<String, dynamic>> uploadedFiles = [];

//   Future<void> _pickFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['pdf', 'jpg', 'png'],
//     );

//     if (result != null) {
//       _showDetailsForm(File(result.files.single.path!));
//     }
//   }

//   Future<void> _scanDocument() async {
//     final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
//     if (pickedFile != null) {
//       _showDetailsForm(File(pickedFile.path));
//     }
//   }

//   void _showDetailsForm(File file) {
//     TextEditingController docTypeController = TextEditingController();
//     TextEditingController doctorNameController = TextEditingController();
//     TextEditingController dateController = TextEditingController();
//     TextEditingController notesController = TextEditingController();

//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("Enter Document Details"),
//           content: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextField(controller: docTypeController, decoration: InputDecoration(labelText: "Document Type")),
//                 TextField(controller: doctorNameController, decoration: InputDecoration(labelText: "Doctor Name")),
//                 TextField(controller: dateController, decoration: InputDecoration(labelText: "Date")),
//                 TextField(controller: notesController, decoration: InputDecoration(labelText: "Notes")),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text("Cancel"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   uploadedFiles.add({
//                     "file": file,
//                     "type": docTypeController.text,
//                     "doctor": doctorNameController.text,
//                     "date": dateController.text,
//                     "notes": notesController.text,
//                   });
//                 });
//                 Navigator.pop(context);
//               },
//               child: Text("Save"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _deleteFile(int index) {
//     setState(() {
//       uploadedFiles.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Upload Medical Documents', style: TextStyle(color: Colors.white)),
//         backgroundColor: Color(0xFF203c8c),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle, size: 30, color: Colors.white),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildUploadOptions(),
//             SizedBox(height: 20),
//             _buildUploadedFilesList(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildUploadOptions() {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 4,
//       child: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Icon(Icons.upload_file, size: 80, color: Color(0xFF203c8c)),
//             SizedBox(height: 10),
//             Text("Upload or Scan Medical Reports", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton.icon(
//                   onPressed: _pickFile,
//                   icon: Icon(Icons.file_upload, color: Colors.white),
//                   label: Text("Upload File"),
//                   style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
//                 ),
//                 SizedBox(width: 10),
//                 ElevatedButton.icon(
//                   onPressed: _scanDocument,
//                   icon: Icon(Icons.camera_alt, color: Colors.white),
//                   label: Text("Scan Document"),
//                   style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildUploadedFilesList() {
//     return Expanded(
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         elevation: 4,
//         child: Padding(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Uploaded Documents", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               Divider(),
//               Expanded(
//                 child: uploadedFiles.isEmpty
//                     ? Center(child: Text("No reports uploaded yet"))
//                     : ListView.builder(
//                         itemCount: uploadedFiles.length,
//                         itemBuilder: (context, index) {
//                           var fileData = uploadedFiles[index];
//                           return ListTile(
//                             leading: Icon(Icons.picture_as_pdf, color: Color(0xFF203c8c)),
//                             title: Text(fileData['file'].path.split('/').last),
//                             subtitle: Text("${fileData['type']} - ${fileData['doctor']} (${fileData['date']})"),
//                             trailing: IconButton(
//                               icon: Icon(Icons.delete, color: Colors.red),
//                               onPressed: () => _deleteFile(index),
//                             ),
//                           );
//                         },
//                       ),
//               ),
//               SizedBox(height: 10),
//               ElevatedButton.icon(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryScreen(uploadedFiles, documents: [],)));
//                 },
//                 icon: Icon(Icons.history, color: Colors.white),
//                 label: Text("View Report History"),
//                 style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medipanda/screens/history_screen.dart';
import 'package:medipanda/screens/profile_screen.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  List<Map<String, dynamic>> uploadedFiles = [];

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'jpg', 'png'],
    );

    if (result != null) {
      _showDetailsForm(File(result.files.single.path!));
    }
  }

  Future<void> _scanDocument() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      _showDetailsForm(File(pickedFile.path));
    }
  }

  void _showDetailsForm(File file) {
    TextEditingController docTypeController = TextEditingController();
    TextEditingController doctorNameController = TextEditingController();
    TextEditingController dateController = TextEditingController();
    TextEditingController notesController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter Document Details"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(controller: docTypeController, decoration: InputDecoration(labelText: "Document Type")),
                TextField(controller: doctorNameController, decoration: InputDecoration(labelText: "Doctor Name")),
                TextField(controller: dateController, decoration: InputDecoration(labelText: "Date")),
                TextField(controller: notesController, decoration: InputDecoration(labelText: "Notes")),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  uploadedFiles.add({
                    "file": file,
                    "type": docTypeController.text,
                    "doctor": doctorNameController.text,
                    "date": dateController.text,
                    "notes": notesController.text,
                  });
                });
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }

  void _deleteFile(int index) {
    setState(() {
      uploadedFiles.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Medical Documents', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF203c8c),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, size: 30, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUploadOptions(),
            SizedBox(height: 20),
            _buildUploadedFilesList(),
          ],
        ),
      ),
    );
  }

  Widget _buildUploadOptions() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.upload_file, size: 80, color: Color(0xFF203c8c)),
            SizedBox(height: 10),
            Text("Upload or Scan Medical Reports", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Wrap(
  spacing: 10,
  runSpacing: 10,
  alignment: WrapAlignment.center,
  children: [
    ElevatedButton.icon(
      onPressed: _pickFile,
      icon: Icon(Icons.file_upload, color: Colors.white),
      label: Text("Upload File"),
      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
    ),
    ElevatedButton.icon(
      onPressed: _scanDocument,
      icon: Icon(Icons.camera_alt, color: Colors.white),
      label: Text("Scan Document"),
      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
    ),
  ],
),

          ],
        ),
      ),
    );
  }

  Widget _buildUploadedFilesList() {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Uploaded Documents", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Divider(),
              Expanded(
                child: uploadedFiles.isEmpty
                    ? Center(child: Text("No reports uploaded yet"))
                    : ListView.builder(
                        itemCount: uploadedFiles.length,
                        itemBuilder: (context, index) {
                          var fileData = uploadedFiles[index];
                          return ListTile(
                            leading: Icon(Icons.picture_as_pdf, color: Color(0xFF203c8c)),
                            title: Text(fileData['file'].path.split('/').last),
                            subtitle: Text("${fileData['type']} - ${fileData['doctor']} (${fileData['date']})"),
                            trailing: IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () => _deleteFile(index),
                            ),
                          );
                        },
                      ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryScreen(uploadedFiles: uploadedFiles)));
                },
                icon: Icon(Icons.history, color: Colors.white),
                label: Text("View Report History"),
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF203c8c)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
