// ignore: empty_constructor_bodies
class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.isOnline});
}

final User brandy = User(
    id: 0,
    name: 'Brandy',
    imageUrl: 'assets/images/IMG_20170828_084259.jpg',
    isOnline: true);
final User bill = User(
    id: 1,
    name: 'Billy',
    imageUrl: 'assets/images/IMG_20170828_084259.jpg',
    isOnline: true);
   
    final User paul = User(
    id: 2,
    name: 'Paul',
    imageUrl: 'assets/images/DSC_0512.jpg',
    isOnline: false);
    final User joel = User(
    id: 3,
    name: 'Joel',
    imageUrl: 'assets/images/IMG_20180101_071330.jpg',
    isOnline: false);
    final User edith = User(
    id: 4,
    name: 'Edith',
    imageUrl: 'assets/images/IMG_20210213_122534_8.jpg',
    isOnline: true);
    final User steve = User(
    id: 5,
    name: 'Steve',
    imageUrl: 'assets/images/IMG-20200912-WA0016.jpg',
    isOnline: false);
    final User frank = User(
    id: 6,
    name: 'Frank',
    imageUrl: 'assets/images/IMG-20201120-WA0008.jpg',
    isOnline: true);
