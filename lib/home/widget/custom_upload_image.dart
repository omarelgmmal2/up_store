import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class CustomUploadImage extends StatefulWidget {
  const CustomUploadImage({super.key});

  @override
  State<CustomUploadImage> createState() => _CustomUploadImageState();
}

class _CustomUploadImageState extends State<CustomUploadImage> {
  XFile? selectedImage;

  Future<void> _uploadImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      selectedImage = pickedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 125.h,
            width: 125.h,
            decoration: BoxDecoration(
              color: AppColor.white,
              border: Border.all(color: AppColor.primary, width: 5),
              shape: BoxShape.circle,
            ),
            child: selectedImage == null
                ? null
                : AppImage(selectedImage!.path, fit: BoxFit.cover),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -90),
          child: IconButton(
              onPressed: _uploadImage,
              icon: AppImage(AppImages.edit),
          ),
        ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: AppColor.green,
        //     fixedSize: Size(180.w, 40.h),
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(12.r),
        //     ),
        //   ),
        //   onPressed: _uploadImage,
        //   child: Text(
        //     selectedImage == null ? "Upload Image" : "Change Image",
        //     style: TextStyle(color: AppColor.white),
        //   ),
        // ),
        if (selectedImage != null)
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.white,
              fixedSize: Size(180.w, 40.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            onPressed: () {
              setState(() {
                selectedImage = null;
              });
            },
            child: Text("Remove Image", style: TextStyle(color: AppColor.red),
            ),
          ),
      ],
    );
  }
}
