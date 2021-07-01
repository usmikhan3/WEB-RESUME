import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_web/helper/responsiveness.dart';
import 'package:resume_web/models/acheivements_model.dart';
import 'package:resume_web/models/education_model.dart';
import 'package:resume_web/models/projects.dart';
import 'package:resume_web/models/skills_model.dart';
import 'package:resume_web/models/slider_model.dart';
import 'package:resume_web/models/work_experience_model.dart';
import 'package:resume_web/widgets/container_heading.dart';
import 'package:resume_web/widgets/side_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WorkExperience> workExperience = [
    WorkExperience(
        title: "Junior Flutter Developer at Techriffic. ",
        startDate: "Jan 21-",
        endDate: "Present"),
    WorkExperience(
        title: "Internee Flutter Developer at Techriffic. ",
        startDate: "Nov 20-",
        endDate: "Dec 20"),
  ];

  List<SkillsModel> skills = [
    SkillsModel(skill: "Flutter"),
    SkillsModel(skill: "Dart"),
    SkillsModel(skill: "Html"),
    SkillsModel(skill: "Css"),
    SkillsModel(skill: "Python Core"),
  ];

  List<EducationModel> education = [
    EducationModel(
      title: "Sir Syed University Of Engineering And Technology",
      degree: "Bachelors In Computer Science",
      date: "2017-2020",
    ),
    EducationModel(
      title: "Commecs College",
      degree: "Intermediate, Pre-Engineering",
      date: "2016",
    ),
    EducationModel(
      title: "ShahWilayat Public School",
      degree: "Matriculation, Science",
      date: "2014",
    ),
  ];

  List<Achievements> achievements = [
    Achievements(
        achievements:
            "Proud to achieve several scholarships throughout my academic career of B.S Computer Science."),
    Achievements(
        achievements:
            "Completed online “Core Python Programming” Course initiated by Saylani Mass IT Training."),
    Achievements(
        achievements: "Completed “Dart Course For Beginners” from Udemy"),
  ];

  List<ProjectsModel> projects = [
    ProjectsModel(
      project: "Mid Atlantic Drug Testing Application",
    ),
    ProjectsModel(
      project: "Trash Picker",
    ),
    ProjectsModel(
      project: "Wallpaper Hub",
    ),
    ProjectsModel(
      project: "Netflix Clone",
    ),
    ProjectsModel(
      project: "Weather Update Application",
    ),
    ProjectsModel(
      project: "Uber Clone (Rider)",
    ),
    ProjectsModel(
      project: "Object Detection App",
    ),
    ProjectsModel(
      project: "Cat Breed Identifier",
    ),
    ProjectsModel(
      project: "Pose Estimator App",
    ),
    ProjectsModel(
      project: "Portfolio Website with Flutter web",
    ),
    ProjectsModel(
      project: "Ecommerce App",
    ),
  ];

  List<SliderModel> sliderItems = [
    SliderModel(image: "assets/images/ss1.png"),
    SliderModel(
      image: "assets/images/ss2.png",
    ),
    SliderModel(image: "assets/images/ss3.png"),
    SliderModel(image: "assets/images/ss4.png"),
    SliderModel(
      image: "assets/images/ss5.png",
    ),
    SliderModel(image: "assets/images/ss6.png"),
    SliderModel(image: "assets/images/ss7.png"),
    SliderModel(
      image: "assets/images/ss8.png",
    ),
    SliderModel(image: "assets/images/ss9.png"),
    SliderModel(image: "assets/images/ss10.png"),
    SliderModel(
      image: "assets/images/ss11.png",
    ),
    SliderModel(image: "assets/images/ss12.png"),
    SliderModel(image: "assets/images/ss13.png"),
    SliderModel(
      image: "assets/images/ss14.png",
    ),
    SliderModel(image: "assets/images/ss15.png"),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context)
            ? null
            : AppBar(
                backgroundColor: Colors.white,
                title: Text(
                  "RESUME",
                  style: TextStyle(
                      fontFamily: "Dela Gothic One", color: Colors.black),
                ),
                centerTitle: true,
                elevation: 0.0,
              ),
        body: ResponsiveWidget.isMediumScreen(context) ||
                ResponsiveWidget.isLargeScreen(context)
            ?


            Container(
              height: height,
                width: width,
                decoration: BoxDecoration(color: Colors.grey.shade300),
                child: Center(
                  child: Container(
                    height: height,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex:1,child: SideBar()),
                          Expanded(flex: 2,
                              child: Container(

                               padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: height / 20,),
                                    //PROFESSIONAL PROFILE
                                    FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          "PROFESSIONAL PROFILE",
                                          style: TextStyle(
                                              fontFamily: "Dela Gothic One",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32, decoration: TextDecoration.underline),

                                        )),
                                    SizedBox(height: height / 40,),
                                    //TODO: INTRO LINE
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "‘Motivated Young Professional with an exemplary academic record and passion to progress with in an IT industry’",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w800,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(height: height / 50,),
                                    Text(
                                      "Having acheived excellent grades at BS Computer Science, along with an active involvement in a number of clubs and society. I am keen to pursue a career in the IT industry. ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,


                                      ),
                                      textAlign: TextAlign.center,
                                    ),

                                    SizedBox(height: height / 20,),
                                    //WORK EXPERIENCE
                                    FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          "WORK EXPERIENCE",
                                          style: TextStyle(
                                              fontFamily: "Dela Gothic One",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32, decoration: TextDecoration.underline),

                                        )),
                                    SizedBox(height: height / 40,),
                                    ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),

                                        shrinkWrap: true,
                                        itemCount: workExperience.length,
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
                                                  text: "${workExperience[index].title}",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                  "(${workExperience[index].startDate}  ${workExperience[index].endDate})",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold),
                                                )
                                              ]));
                                        }),

                                    SizedBox(height: height / 20,),
                                    //WORK EXPERIENCE
                                    FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          "EDUCATION HISTORY",
                                          style: TextStyle(
                                              fontFamily: "Dela Gothic One",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32, decoration: TextDecoration.underline),

                                        )),
                                    SizedBox(height: height / 40,),
                                    ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),

                                        shrinkWrap: true,
                                        itemCount: education.length,
                                        itemBuilder: (_, index) {
                                          return ListTile(
                                            title: Text(
                                              "${education[index].title}",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${education[index].degree}",
                                                  style: TextStyle(color: Colors.black),
                                                ),
                                                Text(
                                                  "${education[index].date}",
                                                  style: TextStyle(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),


                                    SizedBox(height: height / 20,),
                                    //WORK EXPERIENCE
                                    FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          "ACHIEVEMENTS",
                                          style: TextStyle(
                                              fontFamily: "Dela Gothic One",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32, decoration: TextDecoration.underline),

                                        )),
                                    SizedBox(height: height / 40,),
                                    ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),

                                        shrinkWrap: true,
                                        itemCount: achievements.length,
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
                                                  text: "${achievements[index].achievements}\n",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ]));
                                        }),

                                    SizedBox(height: height / 20,),
                                    //WORK EXPERIENCE
                                    FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          "PROJECTS",
                                          style: TextStyle(
                                              fontFamily: "Dela Gothic One",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32, decoration: TextDecoration.underline),

                                        )),
                                    SizedBox(height: height / 40,),
                                    ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),

                                        shrinkWrap: true,
                                        itemCount: projects.length,
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
                                                  text: "${projects[index].project}\n",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ]));
                                        }),


                                    SizedBox(height: height / 20,),
                                    //WORK EXPERIENCE
                                    FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          "UI DESIGNED WITH FLUTTER",
                                          style: TextStyle(
                                              fontFamily: "Dela Gothic One",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32, decoration: TextDecoration.underline),

                                        )),
                                    SizedBox(height: height / 40,),
                                    CarouselSlider.builder(

                                      itemCount: sliderItems.length,
                                      itemBuilder: (context, itemIndex, pageIndex) {
                                        return Container(
                                          margin: EdgeInsets.symmetric(horizontal: 10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.asset(
                                              "${sliderItems[itemIndex].image}",
                                              height: 150,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        );
                                      },
                                      options: CarouselOptions(
                                        height: MediaQuery.of(context).size.height * 0.35,
                                        autoPlay: true,


                                      ),
                                    ),
                                    SizedBox(height: height / 20,),
                                    //WORK EXPERIENCE
                                    FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          "Reference",
                                          style: TextStyle(
                                              fontFamily: "Dela Gothic One",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 32, decoration: TextDecoration.underline),

                                        )),
                                    SizedBox(height: height / 40,),
                                    Text(
                                      "Will be furnished upon request.",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,


                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: height / 40,),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            :



            Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TODO: PROFILE PIC AND NAME
                      Row(
                        children: [
                          //IMAGE
                          Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 10),
                              borderRadius: BorderRadius.circular(360),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(360),
                              child: Image.asset(
                                "assets/images/profilemuk.png",
                                height: height * 0.2,
                              ),
                            ),
                          ),

                          Expanded(
                            child: ListTile(
                              title: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    "MUHAMMAD USMAN KHAN",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                              subtitle: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            "+923092023003",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            "usmi.khan3@gmail.com",
                                            style:
                                                TextStyle(color: Colors.black),
                                          )))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      //TODO: INTRO LINE
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "'A learner who is constantly seeking for opportunities to grow and bring impacts to society.'",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(
                        height: height / 20,
                      ),
                      //TODO: WORK EXPERIENCE
                      ContainerHeading(
                        text: "WORK EXPERIENCE",
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: workExperience.length,
                          itemBuilder: (_, index) {
                            return FittedBox(
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "• ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                TextSpan(
                                  text: "${workExperience[index].title}",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "(${workExperience[index].startDate}  ${workExperience[index].endDate})",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ])),
                            );
                          }),

                      SizedBox(
                        height: height / 20,
                      ),
                      //TODO: SKILLS
                      ContainerHeading(
                        text: "PROFESSIONAL SKILLS",
                      ),
                      SizedBox(
                        height: height / 30,
                      ),

                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
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
                                ),
                              ),
                            ]));
                          }),

                      SizedBox(
                        height: height / 20,
                      ),
                      //TODO: EDUCATION HISTORY
                      ContainerHeading(
                        text: "EDUCATION HISTORY",
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: education.length,
                          itemBuilder: (_, index) {
                            return ListTile(
                              title: Text(
                                "${education[index].title}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${education[index].degree}",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    "${education[index].date}",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            );
                          }),

                      SizedBox(
                        height: height / 20,
                      ),
                      //TODO: ACHIEVEMENTS
                      ContainerHeading(
                        text: "ACHIEVEMENTS",
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: achievements.length,
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
                                text: "${achievements[index].achievements}\n",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ]));
                          }),

                      SizedBox(
                        height: height / 20,
                      ),
                      //TODO: PROJECTS
                      ContainerHeading(
                        text: "PROJECTS",
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: projects.length,
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
                                text: "${projects[index].project}\n",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ]));
                          }),

                      SizedBox(
                        height: height / 20,
                      ),
                      //TODO: PROJECTS
                      ContainerHeading(
                        text: "UI DESIGNED WITH FLUTTER",
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      CarouselSlider.builder(
                        itemCount: sliderItems.length,
                        itemBuilder: (context, itemIndex, pageIndex) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "${sliderItems[itemIndex].image}",
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * 0.35,
                          autoPlay: true,
                        ),
                      ),

                      SizedBox(
                        height: height / 20,
                      ),
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
                              width: width / 20,
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
                              width: width / 20,
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
                  ),
                ),
              ));
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
