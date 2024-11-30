import 'package:flutter/material.dart';
import 'package:login_registration_flow/widgets/button_collection.dart';
import 'package:login_registration_flow/widgets/colors_collection.dart';
import 'package:login_registration_flow/widgets/text_widgets.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              blue,
              purple,
            ]
          ),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 CircleAvatar(
                   radius: 70,
                   backgroundImage: AssetImage("lib/images/lorem.png",),
                 ),
                Text("Logo Name",style: whiteTitleBoldStyle(),)
              ],
            )),
            Expanded(
              flex: 6,
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                whiteButton(context, () {
                  
                }, Text("Get Started")),
                SizedBox(height: 20,),
                RichText(

                    text: TextSpan(
                      text: "Have an account already?",
                      children: [
                        TextSpan(
                          style: TextStyle(
                              color: Colors.amber,
                            fontWeight: FontWeight.bold
                          ),
                          text: "  Log in"
                        )
                      ]
                    ),
                ),

                SizedBox(height: 80,)
              ],
            ))
          ],
        ),
      )
    );
  }
}
