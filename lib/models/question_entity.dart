class QuizQuestion {
  final String text;

  // convention here is to ensure the correct answer is always the first element
  // so we do not want to modify the order
  final List<String> answers;

  const QuizQuestion(this.text, this.answers);

  List<String> getShuffledAnswerList(){
    final copiedList = List.of(answers);

    // shuffle() on this.answers would change its state so work on a
    // independent temp list instead
    copiedList.shuffle();

    return copiedList;
  }
}
