//!creamos el widget personalizado para ser reutilizado en el chat
import 'package:codigo6_whatsapp/models/chat_model.dart';
import 'package:codigo6_whatsapp/pages/chat_detail_page.dart';
import 'package:flutter/material.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel dataChat;
  ItemChatWidget({required this.dataChat});

  @override
  Widget build(BuildContext context) {
    // print(dataChat.isTyping);
    return ListTile(
      onTap: () {
        //!para habilitar el click en los elementos del LisTile
        Navigator.push(
            //!
            context,
            MaterialPageRoute(
                builder: (context) => ChatDetailPage(
                      //! para hacer el llamado de image,name y ser mostrado en chat_detail_page
                      image: dataChat.avatar,
                      name: dataChat.name,
                    )));
      },
      leading: CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 22,
        backgroundImage: NetworkImage(dataChat.avatar),
      ),
      title: Text(
        dataChat.name,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        dataChat.isTyping
            ? "Typing..."
            : dataChat
                .message, //usando el operador ternario de if para poder realizar la modificación como el modelo
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: dataChat.isTyping
              ? Color(0xff10CE5f)
              : Colors
                  .black54, //uso del operador ternario para poder usar el if
        ),
      ),
      trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dataChat.time,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                  color: Colors.black54),
            ),
            //! uso del operador ternario para que se pueda usar el if y condicionar la aparición de los mensajes sin leer..
            dataChat.countMessage > 0
                ? Container(
                    //! El container se visualiza si la cantidad de mensajes es mayo a cero
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: Color(0xff10ce5f), shape: BoxShape.circle),
                    child: Text(
                      dataChat.countMessage.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : const SizedBox(),
          ]),
    );
  }
}
