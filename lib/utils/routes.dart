import 'package:flutter/material.dart';
import 'package:propapp/screen/Kesimpulan_recap.dart';
import 'package:propapp/screen/answer.dart';
import 'package:propapp/screen/dice_experiment_1.dart';
import 'package:propapp/screen/dice_experiment_2.dart';
import 'package:propapp/screen/dice_experiment_3.dart';
import 'package:propapp/screen/dice_summary.dart';
import 'package:propapp/screen/dice_table_1.dart';
import 'package:propapp/screen/question_checkbox_2.dart';
import '../screen/splash_screen.dart';
import '../screen/intro_page.dart';
import '../screen/critical/criticalPage.dart';
import '../screen/critical/critical_2.dart';
import '../screen/critical/critical_3.dart';
import '../screen/question_checkbox.dart';
import '../screen/interactive_page.dart';
import '../screen/multiple_choice_page.dart';
import '../screen/closing_page.dart';
import 'package:propapp/screen/answer_recap.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (_) => const SplashScreen1(),
  '/intro': (_) => const IntroPage(),
  '/critical1': (_) => const CritalPage(),
  '/critical2': (_) => const Critical2Page(),
  '/critical3': (_) => const Critical3Page(),
  '/checkbox': (_) => const QuestionCheckboxPage(),
  '/checkbox2': (_) => const QuestionCheckboxPage2(),
  '/interactive': (_) => const ProbabilitySelectionPage(),
  '/dice': (_) => const DiceExperimentPage1(),
  '/dice2': (_) => const DiceExperimentPage2(),
  '/dice3': (_) => const DiceExperimentPage3(),
  '/diceSummary': (_) => const ExperimentSummaryPage(),
  '/kesimpulan': (_) => const KesimpulanRecap(),
  '/correct_answer': (_) => const AnswerRecap(),
  '/multiple': (_) => const MultipleChoicePage(),
  '/closing': (_) => const ClosingPage(),
  '/correct_answer': (context) => const CorrectAnswerPage(),
  '/incorrect_answer': (context) => const IncorrectAnswerPage(),
  '/second_question': (context) => const SecondQuestionPage(),
  '/second_correct_answer': (context) => const SecondCorrectAnswerPage(),
  '/second_incorrect_answer': (context) => const SecondIncorrectAnswerPage(),
  '/third_question': (context) => const ThirdQuestionPage(),
  '/third_correct_answer': (context) => const ThirdCorrectAnswerPage(),
  '/third_incorrect_answer': (context) => const ThirdIncorrectAnswerPage(),
  '/fourth_question': (context) => const FourthQuestionPage(),
  '/fourth_correct_answer': (context) => const FourthCorrectAnswerPage(),
  '/fourth_incorrect_answer': (context) => const FourthIncorrectAnswerPage(),
  '/experiment_completed': (context) => const UpdatedExperimentCompletedPage(),
};

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/diceTable1':
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (_) => DiceResultsTablePage1(
          totalRolls: args['totalRolls'],
          results: args['results'],
        ),
      );
    default:
      return null;
  }
}
