import 'package:flutter_refresh_app/models/user_model.dart';

class Message {
  late final User sender;
  late final String time;
  late final String text;
  late final bool read;

  Message({required this.sender,  required this.time, required this.text, required this.read});
}
//Home Screen Data
List <Message> chats=[
  Message(
    sender:paul,
    time:'2:00pm',
    text:'Still up for brunch?',
    read:true
  ),
  Message(
    sender:bill,
    time:'5:00pm',
    text:'What are you wearing for the office party?',
    read:false
  ),
  Message(
    sender:joel,
    time:'5:00pm',
    text:'Do not forget to pick the cake from Naivas?',
    read:true
  ),
  Message(
    sender:brandy,
    time:'2:00pm',
    text:'Still up for brunch?',
    read:false
  ),Message(
    sender:frank,
    time:'2:00pm',
    text:'Nikubuyie njugu?Hakuna chilly crisps',
    read:false
  ),
  Message(
    sender:edith,
    time:'2:00am',
    text:'Nitumie io assignment tena nimeipoteza.',
    read:true
  ),
];

//Chat Screen Messages

List <Message> chatMessages=[
  Message(
    sender:brandy,
    time:'2:10pm',
    text:'am so hungry yes?',
    read:true
  ),
  Message(
    sender:paul,
    time:'2:12pm',
    text:'That makes both of us',
    read:false
  ),
  Message(
    sender:joel,
    time:'5:00pm',
    text:'Do not forget to pick the cake from Naivas?',
    read:true
  ),
  Message(
    sender:brandy,
    time:'5:10pm',
    text:'Am actually running late do you mind picking it instead',
    read:false
  ),Message(
    sender:joel,
    time:'5:15pm',
    text:'Okay i\'ll just send a glovo dude',
    read:false
  ),
  Message(
    sender:brandy,
    time:'5:17pm',
    text:'Oh my thank you sooo much,Love you.',
    read:true
  ),
  
];