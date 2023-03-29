import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Text("你好Flutter")),
        body: Column(children: const [
          MyApp(),
          MyButton(),
          MyText(),
          MyMargin(),
          MyPadding()
        ])),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // margin属性是表示Container与外部其他组件的距离。 EdgeInsets.all(20.0),
        margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),

        //topCenter:顶部居中对齐
        //topLeft:顶部左对齐
        //topRight:顶部右对齐
        //center: 水平垂直居中对齐
        //centerLeft:垂直居中水平居左对齐
        //centerRight:
        //垂直居中水 平居右对齐
        //bottomCenter
        //底部居中对齐
        //bottomLeft:底部居左对齐
        //bottomRight:底部居右对齐
        alignment: Alignment.center, //配置Container容器内元素的方位

        width: 200, //容器宽度
        height: 200, //容器高度
        // transform:Matrix4.translationValues(0, -40, 0),// 位移
        // transform:Matrix4.rotationZ(0.2),// 旋转
        transform: Matrix4.skewY(.2),
        decoration: BoxDecoration(
            color: Colors.yellow, //背景颜色
            border: Border.all(
                //边框
                color: Colors.red,
                width: 2),
            borderRadius: BorderRadius.circular(10), //配置圆角 也可以实现圆形
            boxShadow: const [
              //配置阴影效果
              BoxShadow(color: Colors.blue, blurRadius: 20.0)
            ],
            // LinearGradient 背景线性渐变 RadialGradient径向渐变
            gradient:
                const LinearGradient(colors: [Colors.red, Colors.yellow])),

        // 容器子元素
        child: const Text(
          "你好Flutter",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      // margin: const EdgeInsets.all(10),   //四周margin
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      // padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child:
          const Text("按钮", style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: const BoxDecoration(color: Colors.yellow),
      child: const Text(
        "你好我是Flutter你好我是Flutter你好我是Flutter你好我是Flutter你好我是Flutter",
        textAlign:
            TextAlign.left, //文本对齐方式(center居中，left左对齐，right右对齐，justfy两端对齐)
        textDirection: TextDirection.ltr, // 文本方向(ltr从左至右，rtl从右至左)
        textScaleFactor: 1, //字体显示倍率

        overflow:
            TextOverflow.ellipsis, //文字超出屏幕之后的处理方式(clip裁剪，fade渐隐，ellipsis省略号)

        maxLines: 1, //文字显示最大行数
        style: TextStyle(
            fontSize: 20, //文字大小
            fontWeight: FontWeight.w900, //字体粗细(bold粗体，normal正常体)
            color: Colors.red, //文字颜色
            fontStyle: FontStyle.italic, //文字样式(italic斜体，normal正常体)
            letterSpacing: 2, //字母间隙(如果是负值，会让字母变得更紧凑)
            wordSpacing: 1, //单词间隙(如果是负值，会让单词变得更紧凑
            //文字装饰线(none没有线，lineThrough删除线，overline上划线， underline下划线
            decoration: TextDecoration.underline,
            //文字装饰线颜色
            decorationColor: Colors.black,
            //文字装饰线风格([dashed,dotted]虚线，double两根线，solid一根实线， wavy波浪线)
            decorationStyle: TextDecorationStyle.dashed),
      ),
    );
  }
}

class MyMargin extends StatelessWidget {
  const MyMargin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 167, 59)),
      margin: const EdgeInsets.all(20.0), //容器外补白 color: Colors.orange,
      child: const Text("Hello world!"),
    );
  }
}

class MyPadding extends StatelessWidget {
  const MyPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 88, 59, 255)),
      padding: const EdgeInsets.all(20.0), //容器内补白 color: Colors.orange,
      child: const Text("Hello world!"),
    );
  }
}
