import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class ThreedModel extends StatefulWidget {
  const ThreedModel({super.key});

  @override
  _ThreedModelState createState() => _ThreedModelState();
}

O3DController controller = O3DController();

class _ThreedModelState extends State<ThreedModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Insane.18',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          O3D.asset(
            controller: controller,
            cameraControls: false,
            src: "assets/threed.glb",
          ),
          SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  controller.cameraOrbit(0, 75, 70);
                  controller.cameraTarget(0, 0.95, -2.2);
                },
                child: const Icon(Icons.zoom_in),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      controller.cameraOrbit(90, 97, 70);
                      controller.cameraTarget(1, 1, 0);
                    },
                    child: const Icon(Icons.swipe_left_alt_rounded),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      controller.cameraOrbit(0, 75, 70);
                      controller.cameraTarget(0, 0.85, 0);
                    },
                    child: const Icon(Icons.center_focus_strong),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      controller.cameraOrbit(-90, 75, 70);
                      controller.cameraTarget(-1, 1, 0);
                    },
                    child: const Icon(Icons.swipe_right_alt_rounded),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  controller.cameraControls = true;
                },
                child: const Icon(Icons.threed_rotation_outlined),
              )
            ],
          ))
        ],
      ),
    );
  }
}
