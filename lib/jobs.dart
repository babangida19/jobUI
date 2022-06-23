import 'package:flutter/material.dart';
import 'package:job_portal/google.dart';
import 'package:job_portal/gridList.dart';
import 'package:job_portal/styles/textStyles.dart';

class Jobs extends StatelessWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF22213F),
      appBar: AppBar(
        backgroundColor: const Color(0XFF22213F),
        elevation: 0,
        title: const Text(
          "JOBBY",
          style: CustomTextStyles.knameofTextStyles,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Find Your  Dream Job",
                    hintStyle: CustomTextStyles.writingText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Jobs For You", style: CustomTextStyles.leftTextStyle),
                Text("SEE ALL", style: CustomTextStyles.writingText),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: job.length,
              itemBuilder: (BuildContext context, int index) {
                JobData jobData = job[index];
                return ResuebleCard(
                  textIndex: jobData.textData,
                  iconString: jobData.imageIcon,
                  textDescription: jobData.textdescription,
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Applied Jobs",
                style: CustomTextStyles.leftTextStyle,
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: jobDescription.length,
                itemBuilder: (BuildContext context, int index) {
                  Description jobDescript = jobDescription[index];
                  return AppliedJob(
                      mainText: jobDescript.textMain,
                      maindescription: jobDescript.decription,
                      imagedata: jobDescript.imageData);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppliedJob extends StatelessWidget {
  final String mainText;
  final String maindescription;
  final String imagedata;

  const AppliedJob({
    Key? key,
    required this.mainText,
    required this.maindescription,
    required this.imagedata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF1F1C3C),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(imagedata),
            backgroundColor: Colors.white,
          ),
          Column(
            children: [
              Text(
                mainText,
                style: CustomTextStyles.knameofTextStyles,
              ),
              SizedBox(height: 4),
              Text(
                maindescription,
                style: CustomTextStyles.writingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ResuebleCard extends StatelessWidget {
  final String textIndex;
  final String textDescription;
  final String iconString;
  const ResuebleCard({
    Key? key,
    required this.textIndex,
    required this.iconString,
    required this.textDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0XFF1F1C3C),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(iconString),
              backgroundColor: Colors.white,
            ),
            Text(
              textIndex,
              style: CustomTextStyles.writingText,
            ),
            Text(
              textDescription,
              style: CustomTextStyles.writingText,
            ),
            FloatingActionButton.extended(
                backgroundColor: Color(0XFF4358B7),
                onPressed: () {
                  print("is clicked");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GooglePage()));
                },
                label: const Text(
                  "START",
                  style: CustomTextStyles.writingText,
                )),
          ],
        ),
      ),
    );
  }
}
