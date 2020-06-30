import 'package:chat/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});

  static User currentUser =
      User(id: 0, name: 'Current User', imageUrl: 'assets/images/greg.jpg');

  static User greg =
      User(id: 1, name: 'Greg', imageUrl: 'assets/images/greg.jpg');

  static User james =
      User(id: 2, name: 'James', imageUrl: 'assets/images/james.jpg');

  static User john =
      User(id: 3, name: 'John', imageUrl: 'assets/images/john.jpg');

  static User olivia =
      User(id: 4, name: 'Olivia', imageUrl: 'assets/images/olivia.jpg');

  static User sam = User(id: 5, name: 'Sam', imageUrl: 'assets/images/sam.jpg');

  static User steven =
      User(id: 6, name: 'Steven', imageUrl: 'assets/images/steven.jpg');

  static User sophia =
      User(id: 7, name: 'Sophia', imageUrl: 'assets/images/sophia.jpg');

  static List<User> favorites = [sam, steven, olivia, john, greg];

  List<Message> chats = [
    Message(
        sender: steven,
        time: '5:30PM',
        text: 'Hey, how are you?',
        isLiked: false,
        unread: true),
    Message(
        sender: james,
        time: '4:30PM',
        text: 'Hey, what\'s up?',
        isLiked: false,
        unread: true),
    Message(
        sender: greg,
        time: '3:30PM',
        text: 'Beer\'s on me',
        isLiked: false,
        unread: false),
    Message(
        sender: sophia,
        time: '2:30PM',
        text: 'No on\'s home',
        isLiked: true,
        unread: false),
    Message(
        sender: olivia,
        time: '1:30PM',
        text: 'Are you free?',
        isLiked: false,
        unread: true),
    Message(
        sender: sam,
        time: '12:30PM',
        text: 'Wanna head out tonight?',
        isLiked: false,
        unread: true),
    Message(
        sender: john,
        time: '8:30PM',
        text: 'Hey, what\'s going on?',
        isLiked: false,
        unread: true)
  ];
}
