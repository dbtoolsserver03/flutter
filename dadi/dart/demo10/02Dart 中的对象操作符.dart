/*
Dart中的对象操作符:

    ?     条件运算符 （了解）   https://dart.dev/tools/diagnostic-messages#invalid_null_aware_operator        
    as    类型转换
    is    类型判断
    ..    级联操作 （连缀）  (记住)
*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

main() {
  // Person p;
  // p?.printInfo(); //已被最新的dart废弃 了解

  //  Person p=new Person('张三', 20);
  //  p?.printInfo();   //已被最新的dart废弃 了解
  print("11--------------");
  Person p = new Person('张三1', 11);
  if (p is Person) {
    p.name = "李四";
  }
  p.printInfo();
  print(p is Object);

  print("22--------------");
  var p1;
  p1 = '';
  p1 = new Person('张三2', 22);
  p1.printInfo();
  (p1 as Person).printInfo();

  print("33--------------");
  Person p3 = new Person('张三3', 33);
  p3.printInfo();
  p3.name = '张三222';
  p3.age = 40;
  p3.printInfo();

  print("44--------------");
  Person p4 = new Person('张三4', 44);
  p4.printInfo();
  p4
    ..name = "李四"
    ..age = 30
    ..printInfo();
}
