// ignore_for_file: avoid_print

import 'Questions.dart';

class QuizBrain {
  int _queno = 0;
  final List<Questions> _queans = [
    Questions('Some cats are actually allergic to humans', true),
    Questions('You can lead a cow down stairs but not up stairs.', false),
    Questions(
        'Approximately one quarter of human bones are in the feet.', true),
    Questions('A slug\'s blood is green.', true),
    Questions('Buzz Aldrin\'s mother\'s maiden name was Moon\'s.', true),
    Questions('It is illegal to pee in the Ocean in Portugal.', true),
    Questions(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Questions(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Questions(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Questions(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Questions('Google was originally called Backrub.', true),
    Questions(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Questions(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextque() {
    if (_queno < _queans.length-1) {
      _queno++;
    }
    print('$_queno ');
    print(_queans.length);
  }

  String getQueText() {
    return _queans[_queno].qText;
  }

  bool getQueAns() {
    return _queans[_queno].qAnswer;
  }

  bool isfinished(){
    if(_queno >= _queans.length-1){
      print('Last Q');
      return true;
    }
    else{
      return false;
    }
  }

  void reset(){
    _queno=0;
  }
}
