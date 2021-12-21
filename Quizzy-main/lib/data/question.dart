class Question {
  final int id;
  final String question;
  final List<String> options;
  final String answer;

  Question({
    required this.id,
    required this.question,
    required this.options,
    required this.answer,
  });
}

final List<Question> questionsData = [
  Question(
    id: 1,
    question:
        "The three pillars of empiricism are: The three pillars of empiricism are: The three pillars of empiricism are: The three pillars of empiricism are:",
    options: [
      'Planning, Inspection, Adaptation.',
      'Transparency, Eliminating Waste, Kaizen.',
      'Inspection, Transparency, Adaptation.',
      'Planning, Demonstration, Retrospective.',
      'Respect For People, Kaizen, Eliminating Waste.'
    ],
    answer: "Inspection, Transparency, Adaptation.",
  ),
  Question(
    id: 2,
    question: "Who has the final say on the order of the Product Backlog?",
    options: [
      'The Scrum Master.',
      'The Product Owner.',
      'The Stakeholders.',
      'The Developers.',
      'The CEO.'
    ],
    answer: "The Product Owner.",
  ),
  Question(
    id: 3,
    question: "What is the recommended size for a Scrum Team?",
    options: [
      "Minimum of 7.",
      "9.",
      "Typically 10 or fewer people.",
      "7 plus or minus 2."
    ],
    answer: "Typically 10 or fewer people.",
  )
];
