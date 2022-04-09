import 'package:flutter/material.dart';

const Color white = Color.fromARGB (255,	255,	182,	193);
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Image.network(
          "https://cdn.pixabay.com/photo/2018/05/26/18/06/dog-3431913_960_720.jpg",
           //width: 150,
          height: 150),
     
      
   const   Text("Login",
          style: TextStyle(
            fontSize: 35,
	color: Color.fromARGB(255,	255,	255,	255)
            
          )),
      
      
      
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            children:  [TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'E-mail ID',
               labelStyle: TextStyle(
	color: Color.fromARGB(255,	255,	255,	255),              
)
            
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Password',
               labelStyle: TextStyle(
	color: Color.fromARGB(255,	255,	255,	255),              
)
            ),
          ),
          
                        
          ]
            ),
          ),
    
    
           const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom( alignment: Alignment.topCenter,
              textStyle: const TextStyle(fontSize: 25, 
              color: Color.fromARGB(255,	25,	25,	112)),
            ),
            onPressed: () {},
            child: const Text('Login'),
          ),
      
      const Text("Or, login with...", 
               style: TextStyle(
	color: Color.fromARGB(255,	255,	255,	255),),),
      
      
       Padding(
        padding:const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
            // color: Colors.red,
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/12/11/11/43/google-1088004_960_720.png'),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            //  color: Colors.red,
           width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2021/06/15/12/51/facebook-6338509_1280.png'),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            //  color: Colors.red,
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/11/11/07/47/apple-1815973_960_720.png'),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ]),
      ),
      
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15, 
              color: Color.fromARGB(255,	25,	25,	112)),
            ),
            onPressed: () {},
            child: const Text('Are you new here? Register'),
          ),
     
          
    ],
 
   );
    }
  }

