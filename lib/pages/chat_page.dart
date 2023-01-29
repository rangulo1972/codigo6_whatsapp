import 'package:flutter/material.dart';
import 'package:codigo6_whatsapp/widgets/item_chat_widget.dart';
import 'package:codigo6_whatsapp/data/data_dummy.dart';

class ChatPage extends StatelessWidget {
  DataDummy listaChat =
      DataDummy(); //! instanciamos un objeto de la clase DataDummy para poder tener acceso a la data.chats
  @override
  Widget build(BuildContext context) {
    //? como evotar el desbordamiento de la pantalla
    return ListView.builder(
        //! usamos un ListView para evitar el desbordamiento de la pantalla
        itemCount: listaChat.chats
            .length, //! esto indica la cantidad de elementos a tener en el chat
        itemBuilder: (BuildContext contex, int index) {
          return ItemChatWidget(
            dataChat: listaChat.chats[index],
          ); //! importado desde widgets/itme_chat_widget.dart
        });
  }
}
