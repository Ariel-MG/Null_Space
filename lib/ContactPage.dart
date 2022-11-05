// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'dart:io';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sms/flutter_sms.dart';



class ContactPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  openwhatsapp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURlAndroid =
        "whatsapp://send?phone=$whatsapp&text=$message";
    var whatappURLIos = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURLIos)) {
        await launch(whatappURLIos, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no instalado")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURlAndroid)) {
        await launch(whatsappURlAndroid);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }

  // ignore: duplicate_ignore
  _hacerLlamadaTelefonica() async {
    const url = 'tel:+52 5951229981';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Error al llamar a $url';
    }
  }

  void _enviarSMS(String message, List<String> recipents) async {
    String _resultado = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_resultado);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                appBar: AppBar(
                  title: const Text('Contact'),
                ),
                body: Center(
                  child: Column(children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(25),
                      width: 100,
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                          onSurface: Colors.grey,
                        ),
                        onPressed: _hacerLlamadaTelefonica,
                        child: const Text(
                          'Llamada',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(25),
                      width: 100,
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                          onSurface: Colors.grey,
                        ),
                onPressed: () {
                  String mensaje = "Esto es un mensaje";
                  List<String> destinatarios = ["1234567890", "5556787676"];
                  _enviarSMS(mensaje, destinatarios);
                },
                child: const Text(
                  'SMS',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              width: 100,
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey,
                ),
                onPressed: () {
                  String mensaje = "Esto es un mensaje";
                  String destinatario = "+52555555555";
                  openwhatsapp(mensaje, destinatario);
                },
                child: const Text(
                  'Whatsapp',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            )
          ]))),
    );
  }
}
