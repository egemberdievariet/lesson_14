void main(List<String> args) {
  // var worker = Worker("Ariet", "Egemberdiev", 50, 30);
  // worker.getSalary();
  var string = Mystring();
  // string.reverse("Ariet");
  // print(string.ucFirst("arfsrg"));
  print(string.ucWord("adfgsdf afsdg asgsfd"));
}

/*Реализуйте класс Worker (Работник), который будет иметь
следующие свойства: name (имя), surname (фамилия), rate (ставка за
день работы), days (количество отработанных дней). Также класс
должен иметь метод getSalary(), который будет выводить зарплату
работника. Зарплата - это произведение (умножение) ставки rate на
количество отработанных дней days.*/

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
/*Реализуйте класс MyString, который будет иметь следующие
методы: метод reverse(), который параметром принимает строку, а
возвращает ее в перевернутом виде, метод ucFirst(), который
параметром принимает строку, а возвращает эту же строку, сделав ее
первую букву заглавной и метод ucWords, который принимает строку и
делает заглавной первую букву каждого слова этой строки.*/

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
