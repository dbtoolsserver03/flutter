//最新版本的dart中需要初始化不可为null的实例字段，如果不初始化的话需要在属性前面加上late
class Person {
  late String name;
  late int age;
  //默认构造函数的简写
  Person(this.name, this.age);
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}

class People {
  late String name;
  late int age;
//   //默认构造函数
  People() {
    print('这是构造函数里面的内容  这个方法在实例化的时候触发');
  }
  void printInfo() {
    print("${this.name}----${this.age}");
  }

  void setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

void main() {
  Person p1 = new Person('张三', 20);
  p1.printInfo();

  Person p2 = new Person('李四', 25);
  p2.printInfo();

  People p3 = new People();
  p3.setInfo("li", 12);
  p3.printInfo();
}
