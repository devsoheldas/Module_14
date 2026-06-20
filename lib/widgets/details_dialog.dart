import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsDialog extends StatelessWidget {
  const DetailsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Student Details',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.h),

            Row(
              children: const [
                Icon(Icons.person),
                SizedBox(width: 8),
                Text('Name: Mike Rack'),
              ],
            ),
            SizedBox(height: 8),

            Row(
              children: const [
                Icon(Icons.badge),
                SizedBox(width: 8),
                Text('ID: STU-2025-0042'),
              ],
            ),
            SizedBox(height: 8),

            Row(
              children: const [
                Icon(Icons.school),
                SizedBox(width: 8),
                Text('Dept: Computer Science & Engineering'),
              ],
            ),

            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}