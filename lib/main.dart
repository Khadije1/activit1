import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images.png'),
                    radius: 50.0,
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 'ajout',
                    groupValue: null,
                    onChanged: (value) {
                      // Logique pour le premier bouton radio
                    },
                  ),
                  Text('Ajouter'),
                  Radio(
                    value: 'modif',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                  Text('Modifier'),
                  Radio(
                    value: 'supp',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                  Text('Supprimer'),
                ],
              ),
              SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Nom',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Prénom',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Adresse',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          Checkbox(value: false, onChanged: (bool? value) {}),
                          Text('Bacaloreat'),
                        ]),
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          Checkbox(value: false, onChanged: (bool? value) {}),
                          Text('Bts')
                        ]),
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          Checkbox(value: false, onChanged: (bool? value) {}),
                          Text('Licence')
                        ]),
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          Checkbox(value: false, onChanged: (bool? value) {}),
                          Text('Master')
                        ]),
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          Checkbox(value: false, onChanged: (bool? value) {}),
                          Text('Doctorat')
                        ])
                      ]),
                  SizedBox(width: 16.0),
                  Column(
                    children: [
                      ElevatedButton(
                        child: Text('CONFIRMER'),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 120),
                            textStyle: TextStyle(fontSize: 20),
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white),
                        onPressed: () => null,
                      ),
                      Text(
                        'Résultat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
