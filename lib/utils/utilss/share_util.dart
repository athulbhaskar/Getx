import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class ShareUtils {
  ShareUtils._();

  //download the file to local directory and return the file path
  static Future<String?> downloadFile(String url, String fileName) async {
    //debugPrint(url);
    //debugPrint(fileName);
    Directory? directory;
    if (Platform.isAndroid) {
      directory = await getExternalStorageDirectory();
    } else if (Platform.isIOS) {
      directory = await getApplicationDocumentsDirectory();
    }

    //debugPrint("Directory $directory");
    //debugPrint("Directory=====> ${directory?.path}");
    HttpClient httpClient = HttpClient();
    File? file;
    String filePath = '';

    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == 200) {
        var bytes = await consolidateHttpClientResponseBytes(response);
        filePath = '${directory?.path}/$fileName.png';
        file = File(filePath);

        //debugPrint("File path ${file.path}");

        await file.writeAsBytes(bytes);
      } else {
        filePath = 'Error code: ${response.statusCode}';
      }
    } catch (ex) {
      filePath = 'Can not fetch url';
    }

    return file?.path;
  }
}
