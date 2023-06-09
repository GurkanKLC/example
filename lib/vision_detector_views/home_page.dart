import 'package:flutter/material.dart';

import 'object_detector_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Object Detection"), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Model Seçiniz"),
            ElevatedButton(onPressed:(){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ObjectDetectorView(modelName: "densenet_1_metadata_1.tflite",)));
            }, child: Text("DenseNet")),
            ElevatedButton(onPressed:(){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ObjectDetectorView(modelName: "efficientnet_lite3_int8_2.tflite",)));
            }, child: Text("EfficientNet")),
            ElevatedButton(onPressed:(){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ObjectDetectorView(modelName: "mnasnet_1.3_224_1_metadata_1.tflite",)));
            }, child: Text("MnasNet")),
            ElevatedButton(onPressed:(){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ObjectDetectorView(modelName: "mobilenet_v1_1.0_224_quantized_1_metadata_1.tflite",)));
            }, child: Text("MobileNet")),
            ElevatedButton(onPressed:(){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ObjectDetectorView(modelName: "squeezenet_1_metadata_1.tflite",)));
            }, child: Text("SqueezeNet")),
          ],
        ),
      ),
    );
  }
}
