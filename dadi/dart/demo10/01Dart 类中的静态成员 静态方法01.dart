/*
Dart中的静态成员:
  1、使用static 关键字来实现类级别的变量和函数
  2、静态方法不能访问非静态成员，非静态方法可以访问静态成员
*/

class Person {
  static String name = '张三';
  static void show() {
    print(name);
  }
}

main() {
  print(Person.name);
  Person.show();
}
