
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:foodninja/Ui/Upload%20Photo/upload_preview.dart';
import 'package:image_picker/image_picker.dart';

import '../../Const/const.dart';
class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  Future<void> getImage() async {
    image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }
  Future<void> getImageCamera() async {
    image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.9,
                alignment: Alignment.topRight,
                decoration:
                BoxDecoration(color: kWhite.withOpacity(0.1), image: const DecorationImage(image: AssetImage('images/appBarBg.png'), fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF9A84D).withOpacity(0.1),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xffDA6317),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Upload Your Photo\nProfile',
                        style: kTextStyle.copyWith(fontSize: 23, fontWeight: FontWeight.bold, color: kTitleColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'This data will be displayed in your account profile for security',
                        style: kTextStyle.copyWith(color: kSubTitleColor),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Column(
                  children: [

                    Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kPrimaryColor),
                            image: image == null
                                ? const DecorationImage(image: AssetImage('images/profile.png'), fit: BoxFit.cover)
                                : DecorationImage(image: FileImage(File(image!.path)), fit: BoxFit.cover)),


                      ),


                    ),
                    Container(

                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: kWhite),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  getImage();
                                });
                              },
                              child: Image.asset(
                                'images/Gallery.png',
                                height: 50,
                              ),
                            ),
                            Text('From Gallery',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(

                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: kWhite),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  getImageCamera();
                                });
                              },
                              child: Image.asset(
                                'images/camera.png',
                                height: 50,
                              ),
                            ),
                            Text('Take Camera',style: kTextStyle.copyWith(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UploadPreview()),
                );
              },
              child: Container(
                height: 50,
                width: 157,
                alignment: Alignment.center,
                decoration: kBoxdecortion,
                child: Text(
                  'Next',
                  style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
