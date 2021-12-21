class Question {
  final String noiDung;
  final List<String> dapAn;
  final String dapAnDung;

  Question({
    required this.noiDung,
    required this.dapAn,
    required this.dapAnDung,
  });
}

final List<Question> questionsData = [
  Question(
    noiDung:
        "The three pillars of empiricism are: The three pillars of empiricism are: The three pillars of empiricism are: The three pillars of empiricism are:",
    dapAn: [
      'Planning, Inspection, Adaptation.',
      'Transparency, Eliminating Waste, Kaizen.',
      'Inspection, Transparency, Adaptation.',
      'Planning, Demonstration, Retrospective.',
      'Respect For People, Kaizen, Eliminating Waste.'
    ],
    dapAnDung: "Inspection, Transparency, Adaptation.",
  ),
  Question(
    noiDung: "Who has the final say on the order of the Product Backlog?",
    dapAn: [
      'The Scrum Master.',
      'The Product Owner.',
      'The Stakeholders.',
      'The Developers.',
      'The CEO.'
    ],
    dapAnDung: "The Product Owner.",
  ),
  Question(
    noiDung: "What is the recommended size for a Scrum Team?",
    dapAn: [
      "Minimum of 7.",
      "9.",
      "Typically 10 or fewer people.",
      "7 plus or minus 2."
    ],
    dapAnDung: "Typically 10 or fewer people.",
  )
];
