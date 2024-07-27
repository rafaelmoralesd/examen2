import 'package:flutter/material.dart';
import 'package:myapp/input.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Examen - Rafael Morales'),
    );
  }
}

class MyHomePage extends StatefulWidget {
 MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final TextEditingController preguntaController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(

       
        
        title: Text(widget.title),
      ),
      
      body:  Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text('texto'),
           const SizedBox(

            height: 225,
           ),

           CuntomInput(
                    label: 'Haz una pregunta',
                    
                  
          
                    controller: preguntaController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese una pregunta';
                      }
                      if (!value.endsWith('?')) {
                        return 'Por favor coloque una pregunta';
                      }
                      return null;
                      
                    },
                      suffixicon: IconButton(onPressed: () {

                      if (formKey.currentState!.validate()) {
                        
                      }
                      
                    }, icon: const Icon(Icons.arrow_forward)),
                    
                    
                  ),
                  
            
          ],
        ),
      ),
       
    );
  }
}
