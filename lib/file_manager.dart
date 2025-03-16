import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileManager {
  // Save file to app storage
  Future<String> saveFile(File file) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/${file.uri.pathSegments.last}';
    await file.copy(filePath);
    return filePath;
  }

  // Retrieve file from app storage
  Future<File> retrieveFile(String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/$fileName');
  }

  // Delete file from app storage
  Future<void> deleteFile(String fileName) async {
    final file = await retrieveFile(fileName);
    if (await file.exists()) {
      await file.delete();
    }
  }
}
