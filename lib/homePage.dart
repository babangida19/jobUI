import 'package:flutter/material.dart';
import 'package:job_portal/jobs.dart';
import 'package:job_portal/styles/textStyles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF22213F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: const Text(
                    "Hi George!\n Choose One\n You Like",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.knameofTextStyles,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10),
                  itemBuilder: (_, index) {
                    var emojiIcon = [
                      "👨‍💻",
                      "👨‍🍳",
                      "👨‍🌾",
                      "👨‍🏫",
                    ];
                    var emojitext = [
                      "Programmer",
                      "Chef",
                      "Farmer",
                      "Teacher",
                    ];
                    return titleWidget(
                        emoji: emojiIcon[index], emojiText: emojitext[index]);
                  },
                  itemCount: 4,
                ),
              ),
              FloatingActionButton.extended(
                  backgroundColor: Color(0XFF4358B7),
                  onPressed: () {
                    print("is clicked");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Jobs()));
                  },
                  label: const Text(
                    "START",
                    style: CustomTextStyles.writingText,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class titleWidget extends StatelessWidget {
  final String emoji;
  final String emojiText;
  const titleWidget({
    Key? key,
    required this.emoji,
    required this.emojiText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0XFF1F1C3C),
          ),
          child: Container(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                emoji,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ),
        Text(
          emojiText,
          style: CustomTextStyles.writingBigText,
        )
      ],
    );
  }
}

// Color(0XFF262341)
