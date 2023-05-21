import 'package:flutter/material.dart';
class Marca extends StatelessWidget {
  const Marca({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
      title: 'Formulario de Vehiculo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _marcaController = TextEditingController();
  TextEditingController _modeloController = TextEditingController();


  @override
  void dispose() {
    _marcaController.dispose();
    _modeloController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Vehiculo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
              height: 10,
              ),
              Image.network("https://th.bing.com/th/id/OIP.5iFBPyVZKdzO6FAje-jVbQHaER?pid=ImgDet&rs=1",width: 300,height: 300,),

              TextFormField(
                controller: _marcaController,
                decoration: InputDecoration(labelText: 'Marca'),                
              ),
              SizedBox(
              height: 10,
              ),
              TextFormField(
                controller: _modeloController,
                decoration: InputDecoration(labelText: 'Modelo'),                
              ),
              SizedBox(
              height: 10,
              ),
               ElevatedButton(
                onPressed: () {
                  // Acción del tercer botón
                },
                child: Container(
                  padding: EdgeInsets.all(10), // Espaciado interno del botón
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // Borde redondeado
                    color: Color.fromARGB(90, 98, 179, 226), // Color de fondo del botón
                  ),
                  child: Text(
                    'Agregar',
                    style: TextStyle(
                      color: Colors.white, // Color del texto del botón
                      fontSize: 16, // Tamaño de fuente del texto del botón
                    ),
                  ),
                ),
              ),
              SizedBox(
              height: 10,
              ),
              SizedBox(width: 10), // Espacio entre botones
               ElevatedButton(
                onPressed: () {
                  // Acción del tercer botón
                },
                child: Container(
                  padding: EdgeInsets.all(10), // Espaciado interno del botón
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // Borde redondeado
                    color: Color.fromARGB(90, 98, 179, 226), // Color de fondo del botón
                  ),
                  child: Text(
                    'Actualizar',
                    style: TextStyle(
                      color: Colors.white, // Color del texto del botón
                      fontSize: 16, // Tamaño de fuente del texto del botón
                    ),
                  ),
                ),
              ),
              SizedBox(
              height: 10,
              ),
              SizedBox(width: 10), // Espacio entre botones
               ElevatedButton(
                onPressed: () {
                  // Acción del tercer botón
                },
                child: Container(
                  padding: EdgeInsets.all(10), // Espaciado interno del botón
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // Borde redondeado
                    color: Color.fromARGB(90, 98, 179, 226), // Color de fondo del botón
                  ),
                  child: Text(
                    'Eliminar',
                    style: TextStyle(
                      color: Colors.white, // Color del texto del botón
                      fontSize: 16, // Tamaño de fuente del texto del botón
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ),
      
    );
  }
}