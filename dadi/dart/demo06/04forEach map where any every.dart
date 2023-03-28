/*
        forEach     
        map         
        where       
        any
        every
*/
void main() {
   List myList=['香蕉','苹果','西瓜'];
  for(var i=0;i<myList.length;i++){
    print(myList[i]);
  }

  for(var item in myList){
    print(item);
  }

  myList.forEach((value){
      print("$value");
  });

  // List myList=[1,3,4];
  // List newList=new List();
  // for(var i=0;i<myList.length;i++){
  //   newList.add(myList[i]*2);
  // }
  // print(newList);

  List myList4=[1,3,4];
  var newList4=myList4.map((value){
      return value*2;
  });
  print(newList4.toList());

  List myList3=[1,3,4,5,7,8,9];
  var newList3=myList3.where((value){
      return value>5;
  });
  print(newList3.toList());

  List myList1=[1,3,4,5,7,8,9];
  var f1=myList1.any((value){   //只要集合里面有满足条件的就返回true
      return value>5;
  });
  print(f1);

  List myList2=[1,3,4,5,7,8,9];
  var f2=myList2.every((value){   //每一个都满足条件返回true  否则返回false
      return value>5;
  });
  print(f2);

  // set

  var s=new Set();

  s.addAll([1,222,333]);

  s.forEach((value)=>print(value));

  //map

  Map person = {"name": "张三", "age": 20};

  person.forEach((key, value) {
    print("$key---$value");
  });
}
