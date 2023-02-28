import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pattern_slider/screen/controller/home_controller.dart';


class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _PatternPageState();
}

class _PatternPageState extends State<Home_Page> {
  Home_Controller homeController = Get.put(Home_Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Pattern",style: TextStyle(color: Colors.white),),
            centerTitle: true,
            backgroundColor: Colors.orange,
            elevation: 0,
          ),
          body: Column(
            children: [
              Obx(() => Slider(
                inactiveColor: Colors.black87,
                activeColor: Colors.orange,
                label: "${homeController.f.value}",
                value: homeController.f.value,
                onChanged: (value) {
                  homeController.f.value = value;
                  homeController.pat.clear();
                  for(int i=1; i<=value.round(); i++)
                  {
                    List data = [];
                    for(int j=1; j<=i; j++)
                    {
                      data.add(j);
                    }
                    homeController.pat.add(data);
                  }
                },
                max: 10,
                min: 0,
                divisions: 10,
              )),
              SizedBox(height: Get.height/15,),
              Container(
                height: Get.height/2,
                width: Get.width,
                margin: EdgeInsets.only(left: Get.width/15),
                child: Obx(
                      () => ListView.builder(
                    itemCount: homeController.pat.length,
                    itemBuilder: (context, index) {
                      return Text(
                        "${homeController.pat[index]}",
                        style: TextStyle(
                            color: Colors.orange.shade800,
                            fontSize: 25,
                        ),
                      );
                    },
                  ),
                ),
                // color: Colors.red,
              ),
            ],
          )
      ),
    );
  }
}
