import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';


class AuthenticationHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get user => _auth.currentUser;
  get uid => user.uid;

  //creates a new user with email and password
  Future signUp({required String email, required String password}) async {
    print(uid);
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      DatabaseReference mDatabase = FirebaseDatabase.instance.ref();
      mDatabase.child("users").child(user.uid).set("hello world");
      return true;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }

  }

  String getUID() {
    return user.uid;
  }

  //SIGN IN METHOD
  Future signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
       print(uid);
       print(email);
       print(password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN OUT METHOD
  Future signOut() async {
    await _auth.signOut();

    print('signout');
  }
}