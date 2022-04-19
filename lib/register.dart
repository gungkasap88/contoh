import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Register"),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.asset("assets/logocontoh.png", width: 78, height: 78,),
            Image.network("https://cdn.iconscout.com/icon/free/png-256/facebook-logo-2019-1597680-1350125.png", width: 70, height: 70,),
            const SizedBox(height: 36,),
            const Text("Selamat Datang",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            const SizedBox(height: 16,), //sidebox buat jarak antar gambar atau tulisan
            const Text("Silahkan Login"),
            const SizedBox(height: 16,),
            TextFormField( //untuk inputan email
              decoration: const InputDecoration( //untuk memberi label dan hint
                  labelText: "Email",
                  hintText: "contoh : indocyber@gmail.com",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
              ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              obscureText: true, //untuk tipe password
              decoration: const InputDecoration(
                labelText: "Password",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 36,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  }, child: const Text("Register")
            ),
          ],
        ),
      )
    );
  }
}
