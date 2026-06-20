import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'details_dialog.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  bool isMarked = false;

  void markPresent() {
    if (!isMarked) {
      setState(() {
        isMarked = true;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Mike Rack marked as Present ✅'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundColor: Colors.blue.shade100,
                  child: const Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      'New',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Text(
              'Mike Rack',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.h),
            Text('ID: STU-2025-0042', style: TextStyle(fontSize: 13.sp)),
            SizedBox(height: 4.h),
            Text(
              'Computer Science & Engineering',
              style: TextStyle(fontSize: 13.sp),
            ),
            SizedBox(height: 20.h),

            /// View Details
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.info_outline),
                label: const Text('View Details'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const DetailsDialog(),
                  );
                },
              ),
            ),

            SizedBox(height: 10.h),

            /// Mark Present
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: markPresent,
                icon: Icon(
                  isMarked ? Icons.check_circle : Icons.how_to_reg,
                  color: Colors.green,
                ),
                label: Text(
                  isMarked ? 'Marked Present' : 'Mark Present',
                  style: const TextStyle(color: Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}