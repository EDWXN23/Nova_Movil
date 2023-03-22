import 'package:flutter/material.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class RegistrarPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(child: Container(
         decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/3d/5d/52/3d5d526b829991eaee5288736d0aeb5a.jpg"),
      fit: BoxFit.cover
      )
    ),
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "NOVASPORT", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),

                ),
                hintText: "Email",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            ),
            const SizedBox(height: 15,),
             Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),

                ),
                hintText: "Nombre de usuario",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            ),
            const SizedBox(height: 15,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),

                ),
                hintText: "Contraseña",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            ),
            const SizedBox(height: 15,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                hintText: 'Confirmar tu contraseña',
                fillColor: Colors.white,
                filled: true,
                
              ),
               
            ), 
            
            
            ),
            const SizedBox( height: 30,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
            
              child: 
                Center(
        child: InkWell(
          onTap: () {
         //  Navigator.push(
         // context,
         // MaterialPageRoute(builder: (context) => const ListViewPage()),
         // );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(25.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: const Text(
              "Registrarse",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ),
                
           ),
           const SizedBox( height: 30,),
         
            Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             ElevatedButton(
                      onPressed: () {
                        // acción a realizar cuando se presiona el botón
                      },
                      child: Icon(
                        Icons.abc,
                        size: 20.0,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow, // establecer el color de fondo del botón
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0), // establecer el relleno del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), // hacer los bordes circulares
                        ),
                      ),
                    ),
                     ElevatedButton(
                      onPressed: () {
                        // acción a realizar cuando se presiona el botón
                      },
                      child: Icon(
                        Icons.abc,
                        size: 20.0,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow, // establecer el color de fondo del botón
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0), // establecer el relleno del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), // hacer los bordes circulares
                        ),
                      ),
                    ),
                     ElevatedButton(
                      onPressed: () {
                        // acción a realizar cuando se presiona el botón
                      },
                      child: Icon(
                        Icons.abc,
                        size: 20.0,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow, // establecer el color de fondo del botón
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0), // establecer el relleno del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), // hacer los bordes circulares
                        ),
                      ),
                    ),
            ],
          ),
        ),
           
          ],
        ) ,
       )),
      );
  }
}
   

