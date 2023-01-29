import 'package:codigo6_whatsapp/data/data_dummy.dart';
import 'package:codigo6_whatsapp/models/message_model.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  //! creamos los atributos necesarios para ser llamado desde item_chat_widget y mostrarlo en este scaffold
  String image;
  String name;
  ChatDetailPage({required this.image, required this.name});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  DataDummy mensajes = DataDummy();
  //!para tener acceso a la lista de los chats
  bool isTyping = false;
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9E1D8),
      appBar: AppBar(
        leadingWidth: 20,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white12,
              backgroundImage: NetworkImage(widget.image),
            ),
            const SizedBox(
              width: 6.0,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    "Las seen today 11:00 am",
                    style: TextStyle(fontSize: 14.0, color: Colors.white60),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          ListView.builder(
            itemCount:
                mensajes.messages.length, //! establece la cantidad de ListView
            itemBuilder: (BuildContext context, int index) {
              print(mensajes.messages[index]);
              return Align(
                alignment: mensajes.messages[index].type == "me"
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  //height: 60,
                  // padding: const EdgeInsets.symmetric(
                  //     horizontal: 12.0, vertical: 10.0),
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      //! no poner const cuando varia la data
                      color: mensajes.messages[index].type == "me"
                          ? Color(0xffEF7FFDC)
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(10),
                        bottomRight: const Radius.circular(10),
                        topLeft: mensajes.messages[index].type == "me"
                            ? const Radius.circular(10)
                            : const Radius.circular(0),
                        topRight: mensajes.messages[index].type == "me"
                            ? const Radius.circular(0)
                            : const Radius.circular(10),
                      )),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              mensajes.messages[index].message,
                              // style: TextStyle(
                              //   fontSize: 20,
                              //   color: Colors.black45,
                              // ),
                            ),
                            const SizedBox(
                              width: 60.0,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 6,
                        child: Row(
                          children: [
                            Text(
                              mensajes.messages[index].time,
                              style: const TextStyle(
                                fontSize: 13.0,
                                color: Colors.black45,
                              ),
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            mensajes.messages[index].type == "me"
                                ? const Icon(
                                    Icons.check,
                                    size: 13,
                                    color: Color(0xff53BDEB),
                                  )
                                : const Text(""),
                            mensajes.messages[index].type == "me"
                                ? const Icon(
                                    Icons.check,
                                    size: 13,
                                    color: Color(0xff53BDEB),
                                  )
                                : const Text(""),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          //! Esto crea el TxtField para escribir el chat
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 60,
              //color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Message",
                        prefixIcon: const Icon(
                          Icons.sentiment_satisfied_rounded,
                          color: Color(0xff8796A2),
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.attach_file_outlined,
                                color: Color(0xff8796A2)),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(Icons.camera_alt_rounded,
                                color: Color(0xff8796A2)),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: 14.0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (String value) {
                        if (value.isNotEmpty) {
                          isTyping = true;
                        } else {
                          isTyping = false;
                        }
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (messageController.text.isEmpty) {
                        MessageModel message = MessageModel(
                            message: messageController.text,
                            type: "me",
                            time: "14:50");
                        //print(messageController.text);
                        mensajes.messages.add(message);
                        setState(() {});
                        messageController.clear();
                      }
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xff00A884), shape: BoxShape.circle),
                      // height: 100,
                      // width: 100,
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        isTyping ? Icons.send : Icons.mic,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // body: Stack(
      //   alignment: Alignment.center,
      //   clipBehavior: Clip.none,
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 200,
      //       color: Colors.amber,
      //       child: Stack(
      //         clipBehavior: Clip.none,
      //         children: [
      //           Positioned(
      //             top: -30,
      //             right: -20,
      //             child: Container(
      //               width: 100,
      //               height: 100,
      //               color: Colors.pink,
      //             ),
      //           ),
      //           Container(
      //             width: 50,
      //             height: 50,
      //             color: Colors.cyan,
      //           ),
      //         ],
      //       ),
      //     ),
      //     Positioned(
      //       bottom: -50,
      //       right: -50,
      //       child: Container(
      //         height: 150,
      //         width: 150,
      //         decoration:
      //             BoxDecoration(color: Colors.red, shape: BoxShape.circle),
      //       ),
      //     ),
      //     Positioned(
      //       top: 20,
      //       left: 10,
      //       child: Container(
      //         height: 70,
      //         width: 70,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Align(
      //       alignment: Alignment.topRight,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.indigo,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
