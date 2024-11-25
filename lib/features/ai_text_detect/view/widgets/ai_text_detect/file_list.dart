import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/Config/Route/app_route.dart';
import '../../../../../core/constant/app_constants.dart';
import '../../../../../core/constant/string.dart';
import '../../../../../core/constant/text_style.dart';
import '../../../../../core/utils/Widget/build_default_button.dart';
import '../../../view_model/cubit/file/file_cubit.dart';
import 'upload_image_container.dart';
import 'upload_process.dart';

class FileList extends StatelessWidget {
  const FileList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FileCubit, FileState>(
      listener: (context, state) {
        // You can handle success/failure messages here if needed
      },
      builder: (context, state) {
        List<String> files = [];

        if (state is FileSuccess) {
          files = state.files;
        }
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UploadImageContainer(
                onFilePicked: (pickedFileName) {
                  context.read<FileCubit>().addFile(pickedFileName);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 20).r,
                child: Text(
                  AppString.files,
                  style: AppTextStyles.style16xW700cornFlowerPrimary(),
                ),
              ),
              Expanded(
                child: files.isNotEmpty
                    ? ListView.separated(
                        itemCount: files.length,
                        itemBuilder: (context, index) => UploadProcess(
                          fileIndex: index,
                          fileName: files[index],
                          onCancel: () =>
                              context.read<FileCubit>().removeFile(index),
                          onComplete: () {
                            // context.read<FileCubit>().addFile(files[index]);
                          },
                        ),
                        separatorBuilder: (context, index) =>
                            AppConstants.userVerticalSpace20,
                      )
                    : Center(
                        child: Text(
                          AppString.fileListNoFile,
                          style: AppTextStyles.style16xW700(),
                        ),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32).r,
                // Adjust padding if needed
                child: BuildCustomButton(
                  onPressed: () {
                    files.isNotEmpty
                        ? () {
                            Navigator.pushNamed(
                                context, AppRoutes.extractedTextScreen);
                          }
                        : null;
                    // Handle button press for verification (consider adding logic if needed)
                  },
                  text: AppString.filesConfirmed,
                ),
              ),

              // BuildCustomButton(
              //   text: "Confirm",
              //   // color: AppColors.darkBlue,
              //   // height: 0.12,
              //   onPressed: files.isNotEmpty
              //       ? () {
              //     Navigator.pushNamed(context, AppRoutes.extractedTextScreen);
              //   }
              //       : null,
              // ),
            ],
          ),
        );
      },
    );
  }
}
