import 'dart:io';

class Animal {
  String questionText;
  Animal yesNode;
  Animal noNode;
  String name;
  Animal(this.questionText, this.name);
}

void gamePath(Animal animal) {
  while (animal.yesNode != null || animal.noNode != null) {
    print("${animal.questionText}");
    String response = stdin.readLineSync();
    if (response == "yes") {
      animal = animal.yesNode;
    } else if (response == "no") {
      animal = animal.noNode;
    }
  }

  print(" The animal is ${animal.name}");
  return;
}

main() {
  print('Think of a animal');
  //declaration of all static routes
  Animal one = Animal(
    "Can it Fly?",
    "",
  );
  Animal two = Animal(
    "Can it Swim",
    "",
  );
  Animal three = Animal(
    "Can it climb trees?",
    "",
  );
  Animal four = Animal(
    "",
    "Duck",
  );
  Animal five = Animal(
    "",
    "Parrot",
  );
  Animal six = Animal(
    "",
    "Monkey",
  );
  Animal seven = Animal(
    "Is it a Pet?",
    "",
  );
  Animal eight = Animal(
    "",
    "Dog",
  );
  Animal nine = Animal(
    "",
    "Is it taller than 2 meters?",
  );
  Animal ten = Animal(
    "",
    "Giraffe",
  );
  Animal eleven = Animal(
    "",
    "Fox",
  );

  //pathway

  one.yesNode = two;
  one.noNode = three;
  two.yesNode = four;
  two.noNode = five;
  three.yesNode = six;
  three.noNode = seven;
  seven.yesNode = eight;
  seven.noNode = nine;
  nine.yesNode = ten;
  nine.noNode = eleven;
  four.yesNode = null;
  four.noNode = null;
  five.yesNode = null;
  five.noNode = null;
  six.yesNode = null;
  six.noNode = null;
  eight.yesNode = null;
  eight.noNode = null;
  ten.noNode = null;
  ten.noNode = null;
  eleven.yesNode = null;
  eleven.noNode = null;
  gamePath(one);
  print("End of Tree");
}

class CheckAnimal {
  String name;
  List qualities;
  CheckAnimal forward;
}

/// Sample Output

// Think of an animal
// Is it a duck?
/// No
// Oops - looks like I need to improve.
// What is the animal?
// A monkey
// What question would distinguish between a duck and A monkey?
// Can it fly?
// For A monkey, is the answer yes or no?
// /No
// Thanks for helping me to improve!
//
// Want to play again?
/// Yes
// Think of an animal
// Can it fly?
/// Yes
// Is it a duck?
/// No
// Oops - looks like I need to improve.
// What is the animal?
// Parrot
// What question would distinguish between a duck and Parrot?
// Can it swim?
// For Parrot, is the answer yes or no?
/// No
// Thanks for helping me to improve!
//
// Want to play again?
/// Yes
// Think of an animal
// Can it fly?
/// No
// Is it A monkey?
/// Yes
// Yay!  I got it!
//
// Want to play again?
/// Yes
// Think of an animal
// Can it fly?
/// No
// Is it A monkey?
/// No
// Oops - looks like I need to improve.
// What is the animal?
// Dog
// What question would distinguish between A monkey and Dog?
// Can it climb trees?
// For Dog, is the answer yes or no?
/// no
// Thanks for helping me to improve!
//
// Want to play again?
/// yes
// Think of an animal
// Can it fly?
/// No
// Can it climb trees?
/// No
// Is it Dog?
///No
// Oops - looks like I need to improve.
// What is the animal?
// a cow
// What question would distinguish between Dog and a cow?
// Is it taller than 1 meter?
// For a cow, is the answer yes or no?
/// yes
// Thanks for helping me to improve!
//
// Want to play again?
/// yes
// Think of an animal
// Can it fly?
/// No
// Can it climb trees?
/// Yes
// Is it A monkey?
/// No
// Oops - looks like I need to improve.
// What is the animal?
// a cat
// What question would distinguish between A monkey and a cat?
// Is it a pet?
// For a cat, is the answer yes or no?
/// yes
// Thanks for helping me to improve!
//
// Want to play again?
/// no

//In Class Run Through
// Think of animal
// Is it a duck?
/// no
// improve me
// What is the animal
/// Tiger
// Distinguishing question b/w tiger and duck
/// Can it Fly?
// For Tiger is the answer yes/no?
/// No

// Think of an Animal
// Can it fly?
/// yes
// Is it a duck?
/// no
// improve me
// What is the animal
/// Eagle
// improving question
/// Is it a predatory animal
// for eagle is it yes or no
/// yes
//
// Think of an Animal
// Can it fly?
/// no
// Is it a tiger?
/// no
// Which animal?
/// Elephant
// distinguish b/w elep and tiger
/// Is it herbivorous?
// is the answer for elephant yes/no
/// yes

// Think of an Animal
// Can it fly?
/// no
// Is it herbivorous?
/// yes
// Elephant is it?
/// no
// which one it is imrpve me
/// Cow
// distinguish b/w elephant and cow
/// does it have trunk
// for cow is it yes or no
/// no

// Think of animal
//  Can it fly?
/// yes
// Is it a predator?
/// yes
// is it a eagle?
/// no
// improve me
/// bat
// distinguish question bat and eagle
/// Is it nocturnal
// yes or no for bat
/// yes

// Think of animal
//  Can it fly?
/// yes
// Is it a predator?
/// yes
// is it nocturnal?
/// no
// is it eagle
/// yes
// YAYYY
