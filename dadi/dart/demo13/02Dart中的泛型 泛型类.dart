//集合List 泛型类的用法

//案例：把下面类转换成泛型类，要求MyList里面可以增加int类型的数据，也可以增加String类型的数据。但是每次调用增加的类型要统一

/*
class MyList {
  List list = <int>[];
  void add(int value) {
    this.list.add(value);
  }
  List getList() {
    return list;
  }
}

MyList l = new MyList();
l.add(1);
l.add(12);
l.add(5);
print(l.getList());

*/

class MyList<T> {
  List list = <T>[];
  void add(T value) {
    this.list.add(value);
  }

  List getList() {
    return list;
  }
}

main() {
  MyList l1 = new MyList();
  l1.add("张三");
  l1.add(12);
  l1.add(true);
  print(l1.getList());

  // MyList l2 = new MyList<String>();
  // l2.add("张三1");
  // // l2.add(11);  //错误的写法
  // print(l2.getList());

  // MyList l3 = new MyList<int>();
  // l3.add(11);
  // l3.add(12);
  // // l3.add("aaaa"); //错误的写法
  // print(l3.getList());

  List list1 = List.filled(2, "");
  list1[0] = "张三1";
  list1[1] = "李四1";
  print(list1);

  List list2 = new List.filled(2, "");
  list2[0] = "张三2";
  list2[1] = "李四2";
  print(list2);

  List list3 = new List<String>.filled(2, "");
  list3[0] = "张三1";
  list3[1] = "李四";
  print(list3);

  List list4 = new List<int>.filled(2, 0);
  list4[0] = 12;
  list4[1] = 13;
  print(list4);
}
