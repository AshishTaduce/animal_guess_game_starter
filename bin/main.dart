import 'dart:io';

class Node{
  String question;
  Node yesNode;
  Node noNode;

  Node({this.question,this.yesNode,this.noNode});

  nextQuestion(){
    return question;
  }
  bool isEnd(){
    return yesNode == null && noNode == null ? true : false;
  }
  addQuestion(String userQuestion){
    question = userQuestion;
  }
}

class AnimalGame{
  Node beginning = Node(question:'duck');
  bool playGame(){
    Node start = beginning;

    while(!start.isEnd()){
      print("Think of an animal");
      sleep(Duration(milliseconds: 100));
      print(start.question);
      String reply = stdin.readLineSync();
      if(reply == 'yes'){
        start = start.yesNode;
      }
      else {
        start = start.noNode;
      }
    }
    print("Think of an animal");
    sleep(Duration(seconds: 1));
    print('is it a ${start.question} ?');

    String finalReply = stdin.readLineSync();

    if(finalReply != 'yes'){
      print("Oops - Its Big Brain Time");
      print('What was the animal? ');
      String animal = stdin.readLineSync().toLowerCase();
      print('question that distinguishes $animal from ${start.question}');
      String newQuestion = stdin.readLineSync();
      print('is it true for $animal ? ');
      if(stdin.readLineSync() == 'yes'){
        start.yesNode = Node(question: animal);
        start.noNode = Node(question: start.question);
        start.addQuestion(newQuestion);
      }
      else{
        start.noNode = Node(question: animal);
        start.yesNode = Node(question: start.question);
        start.addQuestion(newQuestion);
      }
    }
    print('play again? ');
    if(stdin.readLineSync() != 'yes'){
      return true;
    }
    else {
      return false;
    }
  }
}

void main(){
  AnimalGame game = AnimalGame();
  bool completed = false;
  while(!completed){
    completed = game.playGame();
  }
}