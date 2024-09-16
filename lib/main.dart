import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo' ,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Text(
              'Авторизация',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 170.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: const Color(0xFFF0EFF4),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                  ),
                  hintText: 'Логин',
                  hintStyle:
                  const TextStyle(color: Color(0xFF9F9EA3), fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: const Color(0xFFF0EFF4),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                  ),
                  hintText: 'Пароль',
                  hintStyle:
                  const TextStyle(color: Color(0xFF9F9EA3), fontSize: 20),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: isChecked ? const Color(0xFF0B6BFE) : const Color(0xFFF0EFF4),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFF9F9EA3), width: 1),
                    ),
                    child: isChecked
                        ? const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    )
                        : null,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Запомнить меня',
                  style: TextStyle(color: Color(0xFF9F9EA3), fontSize: 20),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0B6BFE),
                    textStyle: const TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(color: Color(0xFF357DC1)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Color(0xFF3594C1), width: 1),
                    ),
                  ),
                  child: const Text(
                    'Регистрация',
                    style: TextStyle(
                        color: Color(0xFF3594C1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              'Восстановить пароль',
              style: TextStyle(color: Color(0xFF9F9EA3), fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
