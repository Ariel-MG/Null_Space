// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';


class MenuPage extends StatelessWidget {
  String clubSanwich ="El legendario. Tocino, pollo, queso americano, jamón, lechuga, jitomate, aguacate y mayonesa de tu elección en 4 panes de caja acompañado de unas mini francesitas.";
  String melli ="3 huevos con 50g de proteína  acompañado de frijoles refritos y pan tostado.";
  String enchi ="100g pollo, crema, queso rayado, cebolla morada, frijoles refritos y salsa de la casa.";
  String bVeggie = "20g queso blanco, 20g queso oaxaca, 20g queso manchego, jitomate, aguacate, cebolla y lechuga.";
  String latte_frio ="Un gran clásico preparado en su punto, sin adornos y sencillo, de manera que se exprese plenamente la pureza de los ingredientes.";

  MenuPage({super.key});
  //-----------------------CLUB SANDWICH WIDGET-----------------------
  Widget clubs() => FullScreenWidget(
        child: SafeArea(
          child: Card(
            elevation: 4,
            child: Container(
              height: 350,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: "customWidget",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/ClubSanwich.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Club Sandwich',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Text(
                      clubSanwich,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      //-----------------------MEllZOS ESTRELADOS WIDGET-----------------------
      Widget mellizos() => FullScreenWidget(
        child: SafeArea(
          child: Card(
            elevation: 4,
            child: Container(
              height: 350,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: "customWidget",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/Mellizos.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Mellizos',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Text(
                      melli,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      
      //-----------------------Veggie-----------------------
      
      Widget veggie() => FullScreenWidget(
        child: SafeArea(
          child: Card(
            elevation: 4,
            child: Container(
              height: 350,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: "Barra Veggie",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/BarraVeggie.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Barra Vegie',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Text(
                      bVeggie,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
   //-----------------------Enchiladas-----------------------
      
      Widget enchiladas() => FullScreenWidget(
        child: SafeArea(
          child: Card(
            elevation: 4,
            child: Container(
              height: 350,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: "Enchiladas",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/enchiladasRojas.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Enchiladas',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Text(
                      enchi,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
   //-----------------------Latte Frio-----------------------
      
      Widget latteFrio() => FullScreenWidget(
        child: SafeArea(
          child: Card(
            elevation: 4,
            child: Container(
              height: 350,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: "Latte Frio",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/LatteFrio.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Latte Frio',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Text(
                      latte_frio,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //-----------------Club Sandwich---------------
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: clubs(),
                  ),
                ],
              ),
              //---------------Mellizos al gusto---------------
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: mellizos(),
                  ),
                ],
              ),
              //---------------Enchiladas-----------------
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: enchiladas(),
                  ),
                ],
              ),
              //---------------Barra Veggie-----------------
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: veggie(),
                  ),
                ],
              ),
              //---------------Latte Frio-----------------
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: latteFrio(),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}