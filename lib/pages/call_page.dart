import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //* Inicio de children de ListView
          //* Inicio de Create call Link
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff10CE5F),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add_link_sharp,
                color: Colors.white,
              ),
            ),
            title: Text(
              "Create call link",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 17,
              ),
            ),
            subtitle: Text(
              "Share a link for your WhatsApp call",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          //* fin de Create call link
          //*-----------------------------
          ListTile(
            leading: Text("Recent",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 17)),
          ),
          //*--------------------------
          //* Inicio de relación de las llamadas de los contactos
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
            ),
            title: Text("Profesor José Luis"),
            subtitle: Row(
              children: const [
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
            trailing: const Icon(
              Icons.phone,
              color: Color(0xff10CE5F),
            ),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
            ),
            title: Text("Profesor José Luis"),
            subtitle: Row(
              children: const [
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
            trailing: const Icon(
              Icons.phone,
              color: Color(0xff10CE5F),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            title: Text("Daniel Arias"),
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
          Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.grey,
            thickness: 0.8,
          ),
          //* Inicio de Column que tiene como children Icon y RichText
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                color: Colors.grey,
                size: 15,
              ),
              RichText(
                text: TextSpan(
                  text: "Your personal calls are ",
                  //! necesita de color en fuente para que se vea
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  //* el uso de children es para poder agregar el resto del texto
                  children: [
                    TextSpan(
                      text: "end-to-end encrypted",
                      style: TextStyle(color: Color(0xff10CE5F)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ], //* find de children de ListView
      ),
    );
  }
}
