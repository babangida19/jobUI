class JobData {
  final String textData;
  final String textdescription;
  final String imageIcon;

  JobData(this.textData, this.textdescription, this.imageIcon);
}

String one = "hello";
JobData jobDataone =
    JobData("Product Designer", "Google", "assets/images/googleIMG.png");

List<JobData> job = [
  jobDataone,
  JobData("Ui Mobile Designer", "Microsoft", "assets/images/microsoft.png"),
];

class Description {
  final String decription;
  final String textMain;
  final String imageData;

  Description(this.decription, this.textMain, this.imageData);
}

List<Description> jobDescription = [
  Description("Takeppedia", "Network Engineer", "assets/images/tokopedia.jpg"),
  Description("Slack", "Digital Marketing", "assets/images/slack.png")
];
