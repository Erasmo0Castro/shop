import 'package:flutter/material.dart';
import 'package:lishop/Widgets/widget_support.dart';

// colores: marron >255, 93, 37, 3 y beige>255, 161, 110, 34



class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
    int a=1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      // Aplicar gradiente
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255), // Color inicial (rosa claro)
            Color.fromARGB(255, 255, 255, 255), // Color inicial (rosa claro)
            Color.fromARGB(255, 255, 255, 255), // Color inicial (rosa claro)
            Color.fromARGB(255, 255, 255, 255), // Color inicial (rosa claro)
            Color.fromARGB(255, 255, 255, 255), // Color inicial (rosa claro)
            Color.fromARGB(255, 255, 251, 251), // Color inicial (rosa claro)
            Color.fromARGB(255, 255, 255, 255), // Color inicial (rosa claro)
           Color.fromARGB(255, 248, 244, 244), // Blanco
            Color.fromARGB(255, 230, 223, 221),   // Marrón claro
            Color.fromARGB(255, 138, 111, 101),   // Marrón claro
            Color.fromARGB(255, 70, 44, 37),   // Marrón claro
            Color.fromARGB(255, 27, 22, 22),   // Marrón oscuro/Negro// Color inicial (rosa claro)
          ],
          begin: Alignment.topRight, // Inicio del gradiente
          end: Alignment.bottomRight, // Fin del gradiente
        ),), // Cambia el color aquí

      child: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: 
        Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined,
          color: const Color.fromARGB(255, 93, 37, 3 ),
          ),
        ),
        Image.asset("images/sixPackPresidente.jpg", width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/2.5, 
        fit: BoxFit.fill),
        SizedBox(height: 15.0,),

        Row(
 
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Six Pack Presidente", style:
                  AppWidget.semiBoldTextFeildStyle(),),
                Text("8 Oz cada lata", style: 
                  AppWidget.boldTextFeildStyle(),),      
              ],
            ),   
            Spacer(),           
          GestureDetector(
            onTap: (){
              if(a>1){
              --a;  
              }
              setState(() {     
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color:
               const Color.fromARGB(255, 93, 37, 3),borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.remove, 
              color:
               Colors.white,),
            ),
          ),
          SizedBox(width: 20.0,),
          Text(a.toString(), style: AppWidget.semiBoldTextFeildStyle(),),
          SizedBox(width: 20.0,),
          GestureDetector(
            onTap: (){
              ++a;
              setState(() {      
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color:
               const Color.fromARGB(255, 93, 37, 3),borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.add, 
              color:
               Colors.white,),
            ),
          ),
        ], 
        ),
        SizedBox(height: 20.0,),
        Text("El six-pack de Cerveza Presidente trae una cerveza dorada, ligera y con un toque suave y dulce, perfecta para disfrutar bien fría. Tiene 5% de alcohol.",
        maxLines: 3,
        style: AppWidget.lighteBigTextFeildStyle(),
        
        ),
        SizedBox(height: 55.0,),
        Row(children: [
          Text("Delivery 24/7", style: AppWidget.headlineTextFeildStyle(),),
        SizedBox(width: 55.0,),
        Icon(Icons.alarm, 
        color:
         const Color.fromARGB(255, 69, 34, 6), ),
        SizedBox(width: 5.0,),
          Text("25 minutos", style: AppWidget.headlineTextFeildStyle(),),

        ],),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 45.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Precio Total:", style: 
              AppWidget.whiteboldTextFeildStyle(),),
              Text("\$300", style: AppWidget.whitelightTextFeildStyle(),),
            ],),
            Container(
              width: MediaQuery.of(context).size.width/2,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: const Color.fromARGB(255, 161, 110, 34), borderRadius: BorderRadius.circular(10),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end ,
                children: [
                Text("Agregar", style: 
                TextStyle(color: Colors.white, fontSize: 20.0,),),
                
                SizedBox(width: 30.0,),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 93, 37, 3), borderRadius: BorderRadius.circular(8)
                  ),
                  child: Icon(
                    Icons.shopping_cart_outlined, color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.0,),
              
              
              
              ],),
            )
          ],),
        )





        ],
        ),
      ),
    ),);
  }
}