// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text("Instagram Giriş Ekranı"),),
      body:Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Image.asset("assets/instag.png",
                height: 250,
                width: 250,
                ),
                Image.asset("assets/isntragyazi.png",
                
                width: 250,
                ),
              ],
            ),
            
          ),
          Center(
            child: Column(
              children:  [
                
                const SizedBox(
                
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextField(   
                       
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mail), // Mail Iconu Ekler
                          border: OutlineInputBorder(), // Çevresine Şerit Çeker
                          labelText: "Mail Adresiniz", //  Texti Yukarda Gösterir
                          fillColor: Colors.white,  //   Kutucuğun içini boyar

                          ),
                          
                    ),
                  ),
                ),
                const SizedBox(
                  width: 250,
                  child: const TextField(    
                   // 20den fazla karakter girişine izin vermez.
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail), // Mail Iconu Ekler
                        border: OutlineInputBorder(), // Çevresine Şerit Çeker
                        labelText: "Şifreniz", //  Texti Yukarda Gösterir
                        fillColor: Colors.white,  //   Kutucuğun içini boyar

                        ),
                        
                  ),
                  
                ),
                ElevatedButton(onPressed: () {
                  
                }, child: const Text("Giriş yap"),
                ),
                
              ],
              
            ),
          ),
        ],
      )
      ,
    );
  }
}
