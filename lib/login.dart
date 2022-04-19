import 'package:contoh/register.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text("Contoh Login"),
      //),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column( //cuma bisa 1
          mainAxisAlignment: MainAxisAlignment.center, //biar ditengah
          //crossAxisAlignment: CrossAxisAlignment.center, //biar ditengah
          children: [ //bisa banyak
            Image.asset("assets/logocontoh.png", width: 78, height: 78,), //gambar dari folder assets
            //const SizedBox(height: 36,),
            const Text("Aplikasi Baru",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            const SizedBox(height: 16,), //sidebox buat jarak antar gambar atau tulisan
            const Text("Silahkan Login"),
            const SizedBox(height: 16,),
            TextFormField( //untuk inputan email
              controller: emailController,
              decoration: const InputDecoration( //untuk memberi label dan hint
                labelText: "Email",
                hintText: "contoh : indocyber@gmail.com"
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              controller: passwordController,
              obscureText: true, //untuk tipe password
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 36,),
            ElevatedButton(
                onPressed: () {
                  //print("test"); //untuk mengetes apakah button berfungsi atau tidak
                  //print('email => ${emailController.text}');
                  //print('password => ${passwordController}');

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => register()
                      )
                  );
                },
              child: const Text("Login"),
            )
          ],
        ),
      ),    
    );
  }
}
