import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _crearFondo(context),
          _loginFrom(context),
        ],
      ),
    );
  }

  Widget _loginFrom(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 230.0,
          )),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text('Registrate', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 60.0),
                _crearEmail(),
                SizedBox(height: 30.0),
                _crearPassword(),
                SizedBox(height: 30.0),
                _crearBoton(),
              ],
            ),
          ),
          Text("Olvido la contraseña ?"),
          SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fondoAzulado = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(28, 96, 167, 1.0),
          Color.fromRGBO(25, 90, 167, 1.0),
        ]),
      ),
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );

    return Stack(
      children: [
        fondoAzulado,
        Positioned(top: 90.0, left: 30.0, child: circulo),
        Positioned(top: -40.0, right: -30.0, child: circulo),
        Positioned(bottom: -50.0, right: -10.0, child: circulo),
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.airplanemode_on,
                color: Colors.white,
                size: 100.0,
              ),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              Text(
                "Flight-Manager",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _crearEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            Icons.alternate_email,
            color: Color(0xFF1c60a7),
          ),
          hintText: "ejemplo@correo.com",
          labelText: "Correo electronico",
        ),
      ),
    );
  }

  Widget _crearPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock_outline,
            color: Color(0xFF1c60a7),
          ),
          labelText: "Contraseña",
        ),
      ),
    );
  }

  Widget _crearBoton() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Text("Ingresar"),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      elevation: 0.0,
      color: Color(0xFF1c60a7),
      textColor: Colors.white,
      onPressed: () {},
    );
  }
}
