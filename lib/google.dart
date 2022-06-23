import 'package:flutter/material.dart';
import 'package:job_portal/styles/textStyles.dart';

class GooglePage extends StatelessWidget {
  const GooglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF22213F),
      appBar: AppBar(
        backgroundColor: const Color(0XFF22213F),
        // leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Google",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          CircleAvatar(
            radius: 50,
            child: Image.asset('assets/images/googleIMG.png'),
          ),
          const Text(
            "product Designer",
            textAlign: TextAlign.center,
            style: CustomTextStyles.knameofTextStyles,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Jankara Indoenesia",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  color: Colors.white30),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Circlebar(
                            textInuput: "Full_time", color: Color(0XFF1F1C3D))),
                  ),
                  Expanded(
                    // child: Padding(
                    //   padding: EdgeInsets.all(15.0),
                    child: Circlebar(
                      textInuput: "hello",
                      color: Color(0XFF22213F),
                      fontsize: 18,
                    ),
                  ),

                  // ),
                ],
              ),
            ],
          ),
          const Text("Responsiblity", style: CustomTextStyles.leftTextStyle),
          ResponsiblityText(
            rtext:
                "Writing a Job Description for Your Job Listing? View Job Description Samples Now. Check Out Our Job Description Guide and Create Your Next Grreat Job Posting Today! Place Job Advert for Free. Advertise Jobs in Minutes. Reach 180M Jobseekers. Hire Local Talent. ",
          ),
          ResponsiblityText(
              rtext:
                  "Writing a Job Description for Your Job Listing? View Job Description Samples Now. Check Out Our Job Description Guide and Create Your Next Grreat Job Posting Today! Place Job Advert for Free. Advertise Jobs in Minutes. Reach 180M Jobseekers. Hire Local Talent. "),
          Container(
            width: 30,
            child: FloatingActionButton(
              backgroundColor: Color(0XFF4358B7),
              onPressed: () {},
              child: const Text(
                "START",
                style: CustomTextStyles.writingText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResponsiblityText extends StatelessWidget {
  final String rtext;
  const ResponsiblityText({
    Key? key,
    required this.rtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              rtext,
              style: CustomTextStyles.writingText,
            ),
          ),
        ],
      ),
    );
  }
}

class Circlebar extends StatelessWidget {
  final String textInuput;
  final Color color;
  final double fontsize = 15;

  Circlebar({
    Key? key,
    required this.textInuput,
    required this.color,
    fontsize = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      height: 50,
      child: Center(
        child: Text(
          textInuput,
          textAlign: TextAlign.center,
          style: CustomTextStyles.writingText.copyWith(fontSize: fontsize),
        ),
      ),
    );
  }
}
