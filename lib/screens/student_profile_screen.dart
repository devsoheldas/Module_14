import 'dart:async';
import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/shimmer_card.dart';

class StudentProfileScreen extends StatefulWidget {
  const StudentProfileScreen({super.key});

  @override
  State<StudentProfileScreen> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Student Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: isLoading ? const ShimmerCard() : const ProfileCard(),
      ),
    );
  }
}