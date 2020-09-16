import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Tuto 3'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int actualRadio;

  List<Widget> radios() {
    List<Widget> l = [];
    for (int x = 0; x < 5; x++) {
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('valeur #${x + 1}'),
          Radio(
              value: x,
              groupValue: actualRadio,
              onChanged: (int i) {
                setState(() {
                  actualRadio = i;
                });
              })
        ],
      );
      l.add(row);
    }
    return l;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: radios(),
        ),
      ),
    );
  }
}

// Map todos = {
//   "Mathématiques": false,
//   "Français": false,
//   "SVT": false,
//   "Anglais": false
// };

// List<Widget> todoList() {
//   List<Widget> l = [];
//   todos.forEach((key, value) {
//     Row row = Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(key),
//         Checkbox(
//             value: value,
//             onChanged: (bool b) {
//               setState(() {
//                 todos[key] = b;
//               });
//             })
//       ],
//     );
//     l.add(row);
//   });
//   return l;
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(widget.title),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: todoList(),
//       ),
//     ),
//   );
// }

// String onChange;
// String onSubmit;
// @override
// Widget build(BuildContext context) {
//   // GestureDetector permet à l'input field de fonctionner sous iOS également.
//   return GestureDetector(
//     onTap: () {
//       FocusScope.of(context).requestFocus(FocusNode());
//     },
//     child: Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               keyboardType: TextInputType.text,
//               onChanged: (String string) {
//                 setState(() {
//                   onChange = string;
//                 });
//               },
//               onSubmitted: (String string) {
//                 setState(() {
//                   onSubmit = string;
//                 });
//               },
//               decoration: InputDecoration(labelText: "Entrez votre pseudo"),
//             ),
//             Text(onChange ?? ''),
//             Text(onSubmit == null ? '' : "Votre pseudo est : $onSubmit")
//           ],
//         ),
//       ),
//     ),
//   );
// }
