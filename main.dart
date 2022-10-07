import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

const List<String> userPerfil = <String>[
  'Selecione seu perfil',
  'Dois filhos',
  'Três filhos ou mais',
];

void main() {
  runApp(const MaterialApp(
      home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super (key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _dropdownValue = userPerfil.first;
  String _filhos = "Seus filhos estão vacinados?";
  String _op1 = "";
  String _solteira = "Você é mãe solteira?";
  String _op2 = "";
  String _renda = "Selecione a renda da família";
  String _op3 = "";
  String _receber = "Você está apto a receber";
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void _resetFields(){
    setState((){
      _formkey = GlobalKey<FormState>();
    });
  }

  void _calculate(){
  }

  @override
  Widget build(BuildContext context) {
    var val;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consulta de bolsas"),
        centerTitle: true,
        backgroundColor: Colors.green.shade400,
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.refresh),
              onPressed: _resetFields),
        ],
      ),
      backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Icon(Icons.monetization_on, size: 60, color: Colors.lime),
              Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: Colors.black,
                    ),
                    child: DropdownButton<String>(
                        isExpanded: true,
                        value: _dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 30,
                        style: const TextStyle(color: Colors.white,
                            fontSize: 18),
                        items: userPerfil.map<DropdownMenuItem<String>>((
                            String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(
                              child: Text(
                                value,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _dropdownValue = value!;
                          });
                        }
                    ),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 20, left: 20),
                child: Container(
                  child: Text(
                    _filhos,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 20, left: 20),
                      child: Container(
                        height: 50, width: 154,
                        child: ListTile(
                          title: const Text("SIM", style: TextStyle(
                              color: Colors.white
                          ),),
                          leading: Radio(
                            value: 1,
                            groupValue: _op1,
                            fillColor:
                              MaterialStateColor.resolveWith((states) => Colors.white),
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            },
                            activeColor: Colors.blueAccent,
                            toggleable: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 20, left: 20),
                      child: Container(
                        height: 50, width: 153,
                        child: ListTile(
                          title: const Text("NÃO", style: TextStyle(
                              color: Colors.white
                          ),),
                          leading: Radio(
                            value: 2,
                            groupValue: _op1,
                            fillColor:
                              MaterialStateColor.resolveWith((states) => Colors.white),
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            },
                            activeColor: Colors.blueAccent,
                            toggleable: true,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              Padding(padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 20, left: 20),
                child: Container(
                  child: Text(
                    _solteira,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 20, left: 20),
                      child: Container(
                        height: 50, width: 154,
                        child: ListTile(
                          title: const Text("SIM", style: TextStyle(
                            color: Colors.white
                        ),),
                          leading: Radio(
                            value: 1,
                            groupValue: _op2,
                            fillColor:
                              MaterialStateColor.resolveWith((states) => Colors.white),
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            },
                            activeColor: Colors.blueAccent,
                            toggleable: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 20, left: 20),
                      child: Container(
                        height: 50, width: 153,
                        child: ListTile(
                          title: const Text("NÃO", style: TextStyle(
                            color: Colors.white
                            ),),
                          leading: Radio(
                            value: 2,
                            groupValue: _op2,
                            fillColor:
                              MaterialStateColor.resolveWith((states) => Colors.white),
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            },
                            activeColor: Colors.blueAccent,
                            toggleable: true,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              Padding(padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 20, left: 20),
                child: Container(
                  child: Text(
                    _renda,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 20, left: 20),
                      child: Container(
                        height: 50,
                        child: ListTile(
                          title: const Text("MENOR QUE DOIS SALÁRIOS MÍNIMOS (2428,00 REAIS)", style: TextStyle(
                              color: Colors.white
                          ),),
                          leading: Radio(
                            value: 1,
                            groupValue: _op3,
                            fillColor:
                              MaterialStateColor.resolveWith((states) => Colors.white),
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            },
                            activeColor: Colors.blueAccent,
                            toggleable: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 20, left: 20),
                      child: Container(
                        height: 50,
                        child: ListTile(
                          title: const Text("MENOR QUE UM SALÁRIO MÍNIMO (1212,00 REAIS)",style: TextStyle(
                              color: Colors.white
                          ),),
                          leading: Radio(
                            value: 2,
                            groupValue: _op3,
                            fillColor:
                              MaterialStateColor.resolveWith((states) => Colors.white),
                            onChanged: (value) {
                              setState(() {
                                val = value;
                              });
                            },
                            activeColor: Colors.blueAccent,
                            toggleable: true,
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        height: 50, width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade400,
                            elevation: 20,
                          ),
                          child: const Text('VERIFICAR BOLSA'),
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              _calculate();
                            }
                          },
                        ),
                      ),
                    ),
                  ]
              ),

              Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 100,
                  child: Text(
                    _receber,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}