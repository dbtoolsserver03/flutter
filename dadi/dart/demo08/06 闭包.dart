/*
闭包：

    1、全局变量特点:    全局变量常驻内存、全局变量污染全局
    2、局部变量的特点：  不常驻内存会被垃圾机制回收、不会污染全局  


  /*  想实现的功能：

        1.常驻内存        
        2.不污染全局   

          产生了闭包,闭包可以解决这个问题.....  

          闭包: 函数嵌套函数, 内部函数会调用外部函数的变量或参数, 变量或参数不会被系统回收(不会释放内存)
  
	        闭包的写法： 函数嵌套函数，并return 里面的函数，这样就形成了闭包。

    */  
*/

/*全局变量*/
var a = 123;

void main() {
  print("全局变量--------");
  print(a);

  fn() {
    a++;
    print(a);
  }

  fn();
  fn();
  fn();

  print("局部变量--------");
  //局部变量
  printInfo() {
    var myNum = 123;
    myNum++;
    print(myNum);
  }

  printInfo();
  printInfo();
  printInfo();

  //闭包
  print("闭包--------");
  fnClose() {
    var c = 123; /*不会污染全局   常驻内存*/
    return () {
      c++;
      print(c);
    };
  }

  var b = fnClose();
  b();
  b();
  b();
  print("+++++++");
  fnClose()();
  // print(c); error
}
