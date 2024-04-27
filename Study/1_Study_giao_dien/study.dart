// import 'dart:html';

class Book {
  //khai bao thuoc tinh
  String nameB;
  int yearB;

  // khoi tao doi tuong moi tu class, co 3 kieu khai bao khoi tao
  // khai bao phuong thuc khoi tao kieu 1
  Book(this.nameB, this.yearB) {
    // this.name = name;
    // this.year = year;
  }
}

// required - yeu cau nguoi dung truyen bien
// last - cho phep khai bao tre
class Film {
  String nameF;
  int yearF;
  Film({required this.nameF, required this.yearF});
}

// final - chi khai bao 1 gia tri khong the thay doi gia tri
// su dung _ de khai bao - k the goi ten
class Music {
  final String _nameM;
  int yearM;

  Music(this._nameM, this.yearM);

  //khai bao cac phuong phuc
  void showMusic() {
    print('Dang nghe bai $_nameM');
  }
}

class Game {
  late String _nameG;
  late int yearG;
  // static - cap do class - su dung k can khoi tao doi tuong moi
  static int age = 5;

  Game(this._nameG, this.yearG);
  // kieu 2
  Game.newGame(String name) {
    _nameG = name;
    yearG = 2022;
  }
  String get getName => _nameG;
  set setName(String name) {
    _nameG = name;
  }

  void showGame() {
    print('Dang choi $_nameG');
  }
}

// extends - Ke thua cac thuoc tinh cua lop Cha
// super - tham chieu den lop Cha
class FilmDart extends Film {
  String type;
  FilmDart(String nameF, int yearF, {this.type = 'horrified'})
      : super(nameF: nameF, yearF: yearF);
  void showFilmDart() {
    print('Dang hoc $nameF tren Youtobe');
  }
}

// ===========================================================================================file main.dart=============
// ignore_for_file: avoid_print

// import 'book.dart';

void main(List<String> args) {
  //===============================================================01 Khai bao bien==================
  // cac kieu du lieu: String, int, bool, double
  String name = 'QH';
  int age = 18;
  bool old = false;
  double sum = 8.5;
  name = 'Quynh huong'; //luon in ra gia tri duoc khai bao moi
  age = 19;

  print(name);
  print(age);
  print(old);
  print(sum);

//---------------------------------------
  dynamic all; // dynamic chap nhan moi kieu, k can khoi tao gia tri ban dau
  all = 'Nguyen Thi Quynh Huong';
  all = 20;

  print(all);

  //--------------------------------------
  Object varAll; // var chap nhan moi kieu => neu k khoi tao gia tri ban dau. Nguoc lai, Neu khoi tao gia tri ban dau => bien la kieu du lieu do k thay doi kieu khac
  varAll = 'Nguyen Thi Quynh Huong';
  varAll = 21;

  print(varAll);

  //===============================================================02 Khai bao bien nang cao==================
  // List - khai bao danh sach bien theo mang
  List<String> listName = [
    'Huong',
    'Nam',
    'Quynh'
  ]; // List <KDL> khai bao kieu du kieu ben trong mang
  print(listName[2]);

  // map - truyen <KEY, VALUE>
  Map<String, String> obj = {'userName': 'QuynhHuong', 'passWord': '123456'};
  print(obj);
  print(obj['userName']);

  //----------------Hang so const, final-------
  const time =
      1000; // phai khai bao gia tri khoi tao ban dau, khong the thay doi gia tri khac
  print(time);

  //===========================================================03 Toan tu========================
  int a = 2;
  int b = 4;
  int c = 5;

  bool e = true;
  bool d = false;

  List<String> arrName = ['Huong', 'Nam', 'Quynh'];
  // + , - , * , / , ~/ , %
  print(a + b);
  print(b - a);
  print(a * b);
  print(b / a);
  print(c ~/ b);
  print(c % b);

  // += , -= , ++ , -- , >=
  print(c--);
  // & , | , !
  print(e & d); //and
  print(e | d); // or
  // == , !=
  //Toan tu dieu kien    ?  :
  a == 6 ? print('dung') : print('sai');
  // if-else
  if (a == 6) {
    print('phep toan dung');
  } else {
    print('phep toan sai');
  }
  // vong lap for
  print(arrName);
  for (var i = 0; i < arrName.length; i++) {
    print(arrName[i]);
  }
  // thay doi 1 gia tri ben trong mang
  for (var i = 0; i < arrName.length; i++) {
    arrName[i] == 'Quynh' ? arrName[i] = 'Quoc' : arrName[i];
    print(arrName);
  }
  //===========================================================04 Function========================
  // void - khong can tham so dau vao, khong tra ve gia tri nao ca
  // void main(List<String> args) {
  void showHello() {
    print('Hello QH');
  }

  showHello();

  void add(int a, int b) {
    print(a + b);
  }

  add(2, 3);

  int showAdd({int a = 1, int b = 2}) => a + b;
  var result = showAdd(a: 2);
  print(result);
  // }
  //===========================================================05 06 Class========================
  var myBook = Book('Diko', 2020);
  print(myBook.yearB);

  var myFilm = Film(nameF: 'hoc IT', yearF: 2024);
  print(myFilm.nameF);

  var YourFilm = FilmDart('Lap trinh Flutter', 2024);
  print(YourFilm.nameF);
  print(YourFilm.yearF);
  print(YourFilm.type);
  YourFilm.showFilmDart();

  var myMusic = Music('baby shark', 2020);
  // myMusic.nameM = 'Do Do Do';
  myMusic.showMusic();

  var myGame = Game('PIKACHU', 2011);
  var yourGame = Game.newGame('Poker');

  print(myGame.getName);
  print(yourGame.getName);
  print(Game.age);
  myGame.showGame();
}


