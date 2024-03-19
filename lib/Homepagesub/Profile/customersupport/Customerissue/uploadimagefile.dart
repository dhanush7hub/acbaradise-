import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'dart:math' as math;
// import 'package:permission_handler/permission_handler.dart';

class ImageUpload extends StatefulWidget {
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  File? _image;

  // Future<void> requestPermission(Permission permission) async {
  //   final status = await permission.request();
  //   print('$permission status is $status');
  // }

  Future getImage() async {
    // await requestPermission(Permission.storage);
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 100, // Set image quality to 100 (no compression)
    );

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future uploadImageToFirebase(BuildContext context) async {
    String fileName = basename(_image!.path);
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("upload/$fileName");
    var imageData = await _image!.readAsBytes();
    UploadTask uploadTask = ref.putData(imageData);
    await uploadTask.whenComplete(() => null);
    print('File Uploaded');
    await ref.getDownloadURL().then((fileURL) {
      print(fileURL);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 17),
        height: 65,
        child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              splashColor: Colors.amber,
              onTap: getImage,
              child: Container(
                margin: const EdgeInsets.only(
                  left: 17,
                ),
                child: Center(
                  child: _image == null
                      ? Row(
                          children: [
                            Container(
                              child: Transform.rotate(
                                angle:
                                    30 * math.pi / 180, // Rotate by 45 degrees
                                child: const Icon(
                                  Icons.attach_file,
                                  size: 26,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Flexible(
                              child: Text(
                                'Attach Screenshot',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lexend',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Container(
                                width: 250,
                                child: Row(
                                  children: [
                                    const Flexible(
                                      child: Icon(
                                        Icons.image,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 4),
                                        child: Text(
                                          basename(_image!.path),
                                          style: const TextStyle(fontSize: 16),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                setState(() {
                                  _image = null;
                                });
                              },
                            ),
                          ],
                        ),
                ),
              ),
            )));
  }
}
