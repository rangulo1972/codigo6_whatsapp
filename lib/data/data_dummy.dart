import 'package:codigo6_whatsapp/models/chat_model.dart';
import 'package:codigo6_whatsapp/models/message_model.dart';

class DataDummy {
  List<ChatModel> chats = [
    ChatModel(
        avatar:
            "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        name: "Daniel Arias",
        message: "Hola cómo estas?",
        time: "14:23",
        date: "12/03",
        isTyping: false,
        countMessage: 3),
    ChatModel(
        avatar:
            "https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        name: "Mercedes Gonzáles",
        message: "La recepción será este fin de semana",
        time: "11:30",
        date: "12/03",
        isTyping: true,
        countMessage: 0),
    ChatModel(
        avatar:
            "https://images.pexels.com/photos/871495/pexels-photo-871495.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        name: "Roxana Maldonado",
        message: "Estoy esperando ese informe",
        time: "09:45",
        date: "12/03",
        isTyping: true,
        countMessage: 2),
    // {
    //   'avatar':
    //       'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    //   'name': 'Daniel Arias',
    //   'message': 'Hola cómo estas?',
    //   'time': '14:23',
    //   'date': '12/03'
    // },
    // {
    //   'avatar':
    //       'https://images.pexels.com/photos/871495/pexels-photo-871495.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    //   'name': 'Roxana Maldonado',
    //   'message': 'Estoy esperando ese informe',
    //   'time': '11:30',
    //   'date': '12/03'
    // },
    // {
    //   'avatar':
    //       'https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    //   'name': 'Mercedes Gonzáles',
    //   'message': 'La recepción será este fin de semana',
    //   'time': '11:30',
    //   'date': '12/03'
    // },
  ];
  List<MessageModel> messages = [
    MessageModel(message: "Hola", type: "other", time: "10:30"),
    MessageModel(message: "Hola, Cómo estas?", type: "me", time: "10:32"),
    MessageModel(
        message: "Estás estudiando Flutter?", type: "me", time: "10:33"),
    MessageModel(
        message: "Si, ahora estoy practicando", type: "other", time: "10:50"),
  ];
}
