import 'package:flutter/material.dart';
import 'package:lishop/Widgets/widget_support.dart';
import 'package:lishop/pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          children: [
            // Fondo degradado
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 0, 0, 0),
                  ],
                ),
              ),
            ),
            // Caja blanca con bordes redondeados
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: const Text(""),
            ),
            // Contenido principal
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  // Imagen redondeada
                  Container(
                    margin: const EdgeInsets.only(
                        top: 10.0, 
                        left: 20.0, 
                        right: 20.0),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200.0),
                        child: Image.asset(
                          "images/logo_licorStore.png",
                          width:
                              MediaQuery.of(context).size.width / 1.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // Formulario de inicio de sesión
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.white, // Fondo blanco
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 5.0),
                          Text(
                            "Registrarse",
                            style: AppWidget.headlineTextFeildStyle(),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Nombre',
                              hintStyle:
                                  AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.person_2_outlined),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Correo',
                              hintStyle:
                                  AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.email_outlined),
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Contraseña',
                              hintStyle:
                                  AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.password_outlined),
                            ),
                          ),
                         
                          const SizedBox(height: 50.0),
                          Material(
                                borderRadius: BorderRadius.circular(20),
                            elevation: 5.0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                     vertical: 10.0),
                                child: Center(
                                  child: Text(
                                    "Registrarse",
                                    style: TextStyle(
                                                        
                                        color: Colors.white, 
                                        fontSize: 18.0,
 
                                  ),
                                ),
                              ),
                            ),
                          ),
                      )], 
                      ),
                    ),
                  ),
                          const SizedBox(height: 70.0,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()) );
                            },
                            child: Text("¿Ya tienes una cuenta? Iniciar sesion ", 
                            style: AppWidget.semiBoldTextFeildStyle(),),
                          )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
