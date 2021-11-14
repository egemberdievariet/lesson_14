import 'dart:io';

void main(List<String> args) {
  // var worker = Worker("Ariet", "Egemberdiev", 50, 30);
  // worker.getSalary();
  // var string = Mystring();
  // string.reverse("Ariet");
  // print(string.ucFirst("arfsrg"));
  // print(string.ucWord("adfgsdf afsdg asgsfd"));
  // var emails = Validator();
  // emails.isEmail("egemberdievariet@gmail.com");
}

class Worker {
  String? name;
  String? surname;
  double? rate;
  double? days;

  Worker(this.name, this.surname, this.rate, this.days);

  void getSalary() {
    var salary = rate! * days!;
    print("$name $surname gets \$${salary} monthly");
  }
}

class Mystring {
  void reverse(String a) {
    List<String> listA = a.split('');
    var reversedList = new List.from(listA.reversed);
    print(reversedList.join());
  }

  String ucFirst(String a) {
    return a[0].toUpperCase() + a.substring(1);
  }

  String ucWord(String a) {
    return a
        .split(" ")
        .map((e) => e[0].toUpperCase() + e.substring(1))
        .toList()
        .join(" ");
  }
}

class Validator {
  void isEmail(String email) {
    // var enteredEmail = stdin.readLineSync();
    bool emailValid = RegExp("@").hasMatch(email);
    print(emailValid);
  }
}
