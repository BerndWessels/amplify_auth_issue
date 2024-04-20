import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sisyphus_app/services/appsync.dart';
import 'package:sisyphus_app/widgets/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: "Home",
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text("A Bernd"),
              const Text("B Wessels"),
              const Text("C Bernd"),
              const Text("D Wessels"),
              ElevatedButton(onPressed: () async {
                await GetIt.I<AppSyncService>().queryViewer();
              }, child: const Text('QUERY')),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
              const Text("Bernd"),
              const Text("Wessels"),
            ],
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
