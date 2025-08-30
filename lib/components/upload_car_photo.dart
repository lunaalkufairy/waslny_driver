// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:waslny_driver/components/custom_Button.dart';
// import 'package:waslny_driver/constants.dart';
// import 'package:waslny_driver/controllers/image_picker_controller.dart';

// class UploadCarPhoto extends StatelessWidget {
//   final String photoPath;
//   final String photoName;
//   const UploadCarPhoto({
//     super.key,
//     required this.photoPath,
//     required this.photoName,
//   });

//   @override
//   Widget build(BuildContext context) {
//     ImagePickerController controller = Get.put(ImagePickerController());

//     return GestureDetector(
//       onTap: () {
//         Get.bottomSheet(
//           Container(
//             height: 150,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: black1,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(30),
//                 topRight: Radius.circular(30),
//               ),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 60,
//                   width: 130,
//                   child: CustomButton(
//                       onTap: () {
//                         controller.getImage(ImageSource.gallery);
//                         Get.back();
//                       },
//                       text: 'المعرض'),
//                 ),
//                 SizedBox(
//                   width: 40,
//                 ),
//                 Container(
//                   height: 60,
//                   width: 130,
//                   child: CustomButton(
//                       onTap: () {
//                         controller.getImage(ImageSource.camera);
//                         Get.back();
//                       },
//                       text: 'الكاميرا'),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//       child: Obx(
//         () {
//           return Container(
//             height: 180,
//             width: 188,
//             decoration: BoxDecoration(
//               shape: BoxShape.rectangle,
//               borderRadius: BorderRadius.circular(12),
//               color: blue.withOpacity(0.15),
//               border: Border.all(color: blue, width: 2),
//             ),
//             child: controller.imagePath.isNotEmpty
//                 ? Image.file(
//                     File(
//                       controller.imagePath.toString(),
//                     ),
//                   )
//                 : Padding(
//                     padding: const EdgeInsets.all(50),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           photoPath,
//                           width: 50,
//                           height: 50,
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           photoName,
//                           style: TextStyle(color: white),
//                         ),
//                       ],
//                     ),
//                   ),
//           );
//         },
//       ),
//     );
//   }
// }
