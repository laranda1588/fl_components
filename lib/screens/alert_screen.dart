import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({super.key});

  void displayDialog(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (contex){
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10) ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('ok')
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar')
                  ),
                )
              ],
            ),
            
          ],
        );

      }
    );

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: Colors.green,
          //   shape: const StadiumBorder()
          // ),
          onPressed: () => displayDialog( context ),
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child:  Text('Mostrar Alerta', style: TextStyle(fontSize: 20),),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:  const Icon (Icons.close),
        onPressed: () => Navigator.pop(context)
        
      ),
    );
  }
}