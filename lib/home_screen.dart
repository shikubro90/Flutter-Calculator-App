import 'package:calculatorapp/components/my_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  MyButton(title : '1', onPress: (){
                    print('object');
                  },),
                  MyButton(title: '+/-', onPress: (){
                    print("tab");
                  },),
                  MyButton(title: '%',onPress: (){
                    print('object');
                    },),
                  MyButton(title: '/', color: Color(0xffffa00a), onPress: (){
                    print('object');
                  },),
                ],
              ),
              Row(
                children: [
                  MyButton(title : '7', onPress: (){
                    print('object');
                  },),
                  MyButton(title: '8', onPress: (){
                    print("tab");
                  },),
                  MyButton(title: '9',onPress: (){
                    print('object');
                  },),
                  MyButton(title: 'x', color: Color(0xffffa00a), onPress: (){
                    print('object');
                  },),
                ],
              ),
              Row(
                children: [
                  MyButton(title : '4', onPress: (){
                    print('object');
                  },),
                  MyButton(title: '5', onPress: (){
                    print("tab");
                  },),
                  MyButton(title: '6',onPress: (){
                    print('object');
                  },),
                  MyButton(title: '-', color: Color(0xffffa00a), onPress: (){
                    print('object');
                  },),
                ],
              ),
              Row(
                children: [
                  MyButton(title : '1', onPress: (){
                    print('object');
                  },),
                  MyButton(title: '2', onPress: (){
                    print("tab");
                  },),
                  MyButton(title: '3',onPress: (){
                    print('object');
                  },),
                  MyButton(title: '+', color: Color(0xffffa00a), onPress: (){
                    print('object');
                  },),
                ],
              ),
              Row(
                children: [
                  MyButton(title : '0', onPress: (){
                    print('object');
                  },),
                  MyButton(title: '.', onPress: (){
                    print("tab");
                  },),
                  MyButton(title: 'DEL',onPress: (){
                    print('object');
                  },),
                  MyButton(title: '=', color: Color(0xffffa00a), onPress: (){
                    print('object');
                  },),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
