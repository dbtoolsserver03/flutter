import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Hot reload works')),
        body: const Center(
          child: Text(
            "我是一个文本",
            textDirection: TextDirection.ltr,
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