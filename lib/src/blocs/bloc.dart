import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';


//Use with to add mixin to the class. Mixins give all the methods to the class
class Bloc with Validators {
  //using .broadcast inables the stream to be listen to multiple times

  // final _emailController = StreamController<String>.broadcast();  without rxdart
  // final _passwordController = StreamController<String>.broadcast();  without rxdart

  // Using rxdart the BehaviorSubject (which is a broadcast stream) allows us to use 
  // extra funcinality than what dart StreamControllers offer like taking the value out of the stream
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();


// Add data to stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>_passwordController.stream.transform(validatePassword);
// Joining both streams using combineLatest2 method from rxdart
// creating a stream of boolians to check if both email and password are valid
  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) => true);

// Change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changepassword => _passwordController.sink.add;


  getValues() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    return [validEmail,validPassword] ;
  }

  
  dispose() {
    _emailController.close();
    _passwordController.close();
    
  }
}

final bloc = new Bloc();
