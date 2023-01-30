import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //* Inicio de children de ListView
          //* Inicio de Create call Link
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/6831134/pexels-photo-6831134.jpeg"),
            ),
            title: Text(
              "My status",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 17,
              ),
            ),
            subtitle: Text(
              "Add an update",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          //* fin de Create call link
          //*-----------------------------
          const ListTile(
            leading: Text("Recent updates",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 17)),
          ),
          //*--------------------------
          //* Inicio de relación de las llamadas de los contactos
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/448754/pexels-photo-448754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            title: Text("Profesor José Luis"),
            subtitle: Text("1 week ago"),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/4254283/pexels-photo-4254283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            title: Text("Primo José"),
            subtitle: Text("1 mounth ago"),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/5710947/pexels-photo-5710947.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            title: Text("Daniel Arias"),
            subtitle: Text("12 minutes ago"),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/7887204/pexels-photo-7887204.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            title: Text("Salvador Gonzáles"),
            subtitle: Text("1 hour ago"),
          ),
          //* fin de la relación de las llamadas de los contactos
          const Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.grey,
            thickness: 0.8,
          ),
          //* Inicio de Column que tiene como children Icon y RichText
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
                color: Colors.grey,
                size: 15,
              ),
              RichText(
                text: const TextSpan(
                  text: "Your status update are ",
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
