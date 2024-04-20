import 'package:flutter/material.dart';
import 'package:sisyphus_app/widgets/app_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: "Profile",
      body: Container(
        color: Colors.yellow,
        child: const SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("A Bernd"),
                Text("B Wessels"),
                Text("C Bernd"),
                Text("D Wessels"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
