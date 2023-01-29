import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //* Inicio de Create call Link
          ListTile(
            leading: Icon(Icons.add_link_sharp),
            title: Text("Create call link"),
            subtitle: Text("Share a link for your WhatsApp call"),
          ),
          //* fin de Create call link
          //*-----------------------------
          ListTile(
            leading: Text("Recent"),
          ),
          //*--------------------------
          //* Inicio de relación de las llamadas de los contactos
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Acá estará el nombre del contacto"),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call_received,
                  size: 15,
                  color: Color(0xff10CE5F),
                ),
                SizedBox(
                  width: 6,
                ),
                Text("January 21, 13:21"),
              ],
            ),
            trailing: Icon(
              Icons.phone,
              color: Color(0xff10CE5F),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Acá estará el nombre del contacto"),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call_received,
                  size: 15,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 6,
                ),
                Text("January 21, 13:00"),
              ],
            ),
            trailing: Icon(
              Icons.phone,
              color: Color(0xff10CE5F),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Acá estará el nombre del contacto"),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call_made,
                  size: 15,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 6,
                ),
                Text("January 20, 10:00"),
              ],
            ),
            trailing: Icon(
              Icons.phone,
              color: Color(0xff10CE5F),
            ),
          ),
          //* fin de la relación de las llamadas de los contactos
          Divider(color: Colors.grey, thickness: 0.8),
          Text("Acá revisar para saber como poner un RichText"),
        ],
      ),
    );
  }
}
