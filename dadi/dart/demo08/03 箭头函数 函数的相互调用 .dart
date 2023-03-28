// forEach((value) 没有返回值
// map((value) 可以有返回值
// list.forEach((value) => print(value));
// var newList2 = list1.map((value) => value > 2 ? value * 2 : value);

void main() {
/*需求：使用forEach打印下面List里面的数据*/

  List list = ['苹果', '香蕉', '西瓜'];
  list.forEach((value) {
    print(value);
  });
  list.forEach((value) => print(value));

  // 注意和方法的区别: 箭头函数内只能写一条语句，并且语句后面没有分号(;)
  list.forEach((value) => {print(value)});

/*需求：修改下面List里面的数据，让数组中大于2的值乘以2*/

  List list1 = [4, 1, 2, 3, 4];
  var newList1 = list1.map((value) {
    if (value > 2) {
      return value * 2;
    }
    return value;
  });
  print(newList1.toList());
  var newList2 = list1.map((value) => value > 2 ? value * 2 : value);
  print(newList2.toList());

/*
需求：    1、定义一个方法isEvenNumber来判断一个数是否是偶数  
         2、定义一个方法打印1-n以内的所有偶数
*/

// 1、定义一个方法isEvenNumber来判断一个数是否是偶数
  bool isEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

//  2、定义一个方法打印1-n以内的所有偶数
  printNum(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEvenNumber(i)) {
        print(i);
      }
    }
  }

  printNum(10);
}
