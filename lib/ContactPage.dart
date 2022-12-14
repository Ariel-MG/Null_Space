// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, depend_on_referenced_packages
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  void openWhatsapp(
      {
      required String text,
      required String number}) async {

        var whatsapp = number; 
        var whatsappURlAndroid = "whatsapp://send?phone=$whatsapp&text=$text";
        var whatsappURLIos = "https://wa.me/$whatsapp?text=${Uri.tryParse(text)}";
        if (Platform.isIOS) {
          // for iOS phone only
          if (await canLaunchUrl(Uri.parse(whatsappURLIos))) {
            await launchUrl(Uri.parse(
              whatsappURLIos,
            ));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Whatsapp not installed")));
          }
        } else {
          // android , web
          if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
            await launchUrl(Uri.parse(whatsappURlAndroid));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Whatsapp not installed")));
          }
        }
      }

      void openInstagram() async {
 
        var whatsappURlAndroid = "https://www.instagram.com/nullspacecafe/";

        if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
            await launchUrl(Uri.parse(whatsappURlAndroid));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Whatsapp not installed")));
          }
      }

  _hacerLlamadaTelefonica() async {
    const url = 'tel:+52 5951229981';
    
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error al llamar a $url';
    }
  }

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[  
            Column(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Image(image: AssetImage('assets/Organiza tus eventos con nosotros.png'),),
                )
              ],
            ),
            Column(
              
              children: const <Widget>[
              
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Image(image: AssetImage('assets/Screen Shot 2022-12-01 at 18.44.11.png'),),
                  
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [

              //Whatsapp
              Container(
                margin: const EdgeInsets.all(25),
                //height: 200,
                child: IconButton(
                iconSize: 100,
                icon: const Icon(Icons.phone),
                onPressed:_hacerLlamadaTelefonica,
                ),
              ),

              //Mensaje
              Container(
                margin: const EdgeInsets.all(25),
                child: IconButton(
                  iconSize: 100,
                  icon: const Icon(Icons.whatsapp), 
                  onPressed: () { 
                    openWhatsapp( text: "Hola, quiero informes sobre...",number:"52 5951229981");                
                 },  
                ),
              ),
              
            ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Container(
                margin: const EdgeInsets.all(25),
                //height: 200,
                child: IconButton(
                iconSize: 100,
                icon: const Icon(Icons.facebook_sharp),
                onPressed:openInstagram,
                ),
              ),
              ]  
            ),
          ],
        ),
      ),
    );
  }
}
