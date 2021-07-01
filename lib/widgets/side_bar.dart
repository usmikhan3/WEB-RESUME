import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:resume_web/helper/responsiveness.dart';
import 'package:resume_web/models/skills_model.dart';
import 'package:resume_web/widgets/container_heading.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    List<SkillsModel> skills = [
      SkillsModel(skill: "Flutter"),
      SkillsModel(skill: "Dart"),
      SkillsModel(skill: "Html"),
      SkillsModel(skill: "Css"),
      SkillsModel(skill: "Python Core"),
    ];

    return Column(
      children: [

        Container(

          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
          color: Colors.blueAccent.withOpacity(0.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //IMAGE
              Center(
                child: Container(

                  decoration: BoxDecoration(
                    border:
                    Border.all(color: Colors.black, width: 10),
                    borderRadius: BorderRadius.circular(360),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(360),
                    child: Image.asset(
                      "assets/images/profilemuk.png",
                     scale: 5,
                    ),
                  ),
                ),
              ),

              SizedBox(height: height / 30,),
              //NAME
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "MUHAMMAD USMAN \nKHAN",
                  style: TextStyle(
                      fontFamily: "Dela Gothic One",
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: height / 20,),
              //CONTACTS
              FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "CONTACTS",
                    style: TextStyle(
                        fontFamily: "Dela Gothic One",
                        fontWeight: FontWeight.bold,
                        fontSize: 24, decoration: TextDecoration.underline),

                  )),
              SizedBox(height: height / 40,),
              FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "+923092023003",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
              SizedBox(height: height / 40,),
              FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "usmi.khan3@gmail.com",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),

              SizedBox(height: height / 20,),
              //CONTACTS
              FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "SKILLS",
                    style: TextStyle(
                        fontFamily: "Dela Gothic One",
                        fontWeight: FontWeight.bold,
                        fontSize: 24, decoration: TextDecoration.underline),

                  )),
              SizedBox(height: height / 40,),
              ListView.builder(

                  shrinkWrap: true,
                  itemCount: skills.length,
                  itemBuilder: (_, index) {
                    return RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "• ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          TextSpan(
                            text: "${skills[index].skill}\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                          ),
                        ]));
                  }),

              //TODO: GITHUB AND LINKEDIN
              InkWell(
                onTap: () async {
                  await _launchURL(
                      url: "https://www.github.com/usmikhan3");
                },
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(2, 3),
                              )
                            ]),
                        child: Image.asset(
                          "assets/images/github.png",
                          height: 50,
                        )),
                    SizedBox(
                      width: width / 50,
                    ),
                    //TO
                    Text(
                      "GITHUB",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              InkWell(
                onTap: () async {
                  await _launchURL(
                      url:
                      "https://www.linkedin.com/in/usman-khan-bb278b140/");
                },
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(2, 3),
                              )
                            ]),
                        child: Image.asset(
                          "assets/images/in.png",
                          height: 50,
                        )),
                    SizedBox(
                      width: width / 50,
                    ),
                    Text(
                      "LINKEDIN",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: height / 30,
              ),

              InkWell(
                  onTap: ()=>downloadFile("https://drive.google.com/file/d/1wEY9C8fbYp4KE9E84EWdtaNOkowfiFnc/view?usp=sharing"),
                  child: ContainerHeading(text: "Download Pdf",)),
              SizedBox(
                height: height / 30,
              ),
            ],
          )
        ),

      ],
    );
  }
  _launchURL({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  downloadFile(url){
    AnchorElement anchorElement = new AnchorElement(href: url);
    anchorElement.download = "Usman Resume";
    anchorElement.click();
  }
}