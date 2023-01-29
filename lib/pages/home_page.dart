import 'package:flutter/material.dart';
import 'package:codigo6_whatsapp/pages/chat_page.dart';
import 'package:codigo6_whatsapp/pages/call_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

//! usamos mixin, llamando con with a SingleTickerProviderStateMixin, para heredar de otra clase
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController
      myTabController; //! con late le indicamos que luego será inicializado el objeto

//? Revisar lo de initState (ciclo de vida de un Stateful)
//! Acá se hace la carga de la info, ya que se ejecuta antes del método Build
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("INITT!!!!!"); //!para visualizar en consola, inicia con restart
    myTabController = TabController(
        length: 4,
        vsync: this); //!Con length indicamos la cantidad de cambios que tendrá
  }

  @override
  Widget build(BuildContext context) {
    print(
        "BILDDDD::::!!!!"); //! para probar lo que se ve en consola, inicia con hot reload
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          controller: myTabController,
          indicatorColor: Colors.white,
          indicatorWeight: 3.5,
//          isScrollable: true,//* para tener un scroll tapBar en caso lo requiera
          labelColor: Colors.white,
          labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
          unselectedLabelColor: Colors.white70,
          tabs: [
            Tab(
              icon: Icon(Icons.people),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALL",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      body: TabBarView(
        controller: myTabController,
        children: [
          Text("Comunidad"),
          //! acá llamamos a la página de ChatPage
          ChatPage(),
          //! acá llamamos a la página de CallPage
          CallPage(),
          Text("Calls"),
        ],
      ),
    );
  }
}
