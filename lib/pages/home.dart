import 'package:flutter/material.dart';
import 'package:lishop/Widgets/widget_support.dart';


class Home extends StatefulWidget {
  const Home ({super.key});

  @override
  State<Home> createState () => _HomeState();
}

class _HomeState extends State<Home> {
  
bool picapollo = false, hamburguesa= false, polloconvegetales=false;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Hola, Bienvenidooo", 
               style:AppWidget.boldTextFeildStyle()),
               Container(
                margin: EdgeInsets.only(right: 20.0),
                padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10),
               ),
              child: const Icon(Icons.shopping_cart_outlined, color: Color.fromARGB(255, 255, 255, 255),),
               ),
             ],
           ),
           const SizedBox(height: 20.0 ,),
             Text("El mejor menú", 
               style:AppWidget.headlineTextFeildStyle()
               ),
              Text("Descubre los mejores platillos", 
               style:AppWidget.lighteTextFeildStyle()
               ),
               SizedBox(height: 20.0,
               ),
          
               Container(
                margin: EdgeInsets.only(right: 20.0),
                child: showItem()),
               SizedBox(height: 30.0,),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                  children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset("images/tacos.jpg", height: 150, width: 150, fit: BoxFit.cover,),
                          Text("Tacos", 
                          style: AppWidget.semiBoldTextFeildStyle(),),
                          SizedBox(height: 5.0,),
                          Text("Tacos de pollo, res y queso", 
                          style: AppWidget.lighteTextFeildStyle(),),
                          SizedBox(height: 5.0,),
                          Text("\$350", 
                          style: AppWidget.semiBoldTextFeildStyle(),)
                      
                        ],),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                   Container(
                    margin: EdgeInsets.all(4),
                     child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset("images/pizza.jpg", height: 150, width: 150, fit: BoxFit.cover,),
                          Text("Pizza", 
                          style: AppWidget.semiBoldTextFeildStyle(),),
                          SizedBox(height: 5.0,),
                          Text("Diferentes especialidades", 
                          style: AppWidget.lighteTextFeildStyle(),),
                          SizedBox(height: 5.0,),
                          Text("\$1,350", 
                          style: AppWidget.semiBoldTextFeildStyle(),)
                      
                        ],),
                      ),
                                       ),
                   ),
                 ],
                 
                 ),
               )
                    
                    ],
        ),
      ),
    );
  }
               
          Widget showItem(){
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 GestureDetector(
                  onTap: (){
                    picapollo=true;
                    hamburguesa=false;
                    polloconvegetales=false;
                    setState(() {
                      
                    });
                  },
                   child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                     width: 100.0,
                     height: 100.0,
                    
                     decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: 
                        AssetImage("images/pica pollo.jpg",  )
                   
                      ),
                   
                     ),
                      
                    ),
                                   ),
                 ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                   width: 100.0,
                   height: 100.0,
                      
                   decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: 
                      AssetImage("images/hamburguesa.jpg",  )

                    ),

                   ),
                    
                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                   width: 100.0,
                   height: 100.0,
                      
                   decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: 
                      AssetImage("images/pollo con vegetales.jpg",  )

                    ),

                   ),
                    
                  ),
                ),
                
                ],
               );
          }

     
}