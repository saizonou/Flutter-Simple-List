import 'package:simple_user_list/models/User.dart';

List<User> getUsers() {
  var userList = List<User>();
  userList.add(User("Jeff Bezos", "jeff.jpg", "Amazon"));
  userList.add(User("Bill Gate", "gate.jpg", "Microsoft"));
  userList.add(User("Steve Jobs", "steve.png", "Apple"));
  userList.add(User("Mark zuckerberg", "mark.jpg", "Facebook"));
  userList.add(User("Elon Musk", "elon.png", "Tesla"));
  userList.add(User("Jack Dorsey", "jack.jpg", "Twitter"));
  userList.add(User("Pierre Omidyar", "pierre.jpg", "e-Bay"));
  return userList;
}
