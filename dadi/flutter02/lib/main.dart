import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Hot reload worksa123a45')),
        body: const Center(
          child: Text(
            "我是一个文本",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Colors.black,
                // color: Color.fromRGBO(244, 244, 123, 1),
                fontSize: 40),
          ),
        ),
      ),
    );
  }
}


// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Hot reload worksaaaa!!')),
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Hot reload not workinga')),
//       ),
//     ));

/*

第二个片段阻止热重载工作的原因是因为“主”只运行一次，而热重载不运行主。
因此，要使其工作，您必须将 MaterialApp 分离到不同的小部件。

*/ 
/*
Flutter run key commands.
r Hot reload. 🔥🔥🔥
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).
*/

/*
  快捷键总结

 1.ctrl+alt+左/右 编辑器切换
 2.alt+` 切换到终端

*/


/*
1、MaterialApp
MaterialApp是一个方便的Widget，它封装了应用程序实现Material Design所需要的一些Widget。一 般作为顶层widget使用。
常用的属性:
home(主页) 
title(标题) 
color(颜色) 
theme(主题) 
routes(路由)

2、Scaffold
Scaffold是Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet
的API。
Scaffold 有下面几个主要属性:
appBar - 显示在界面顶部的一个 AppBar。 
body - 当前界面所显示的主要内容 Widget。
drawer - 抽屉菜单控件。




 */