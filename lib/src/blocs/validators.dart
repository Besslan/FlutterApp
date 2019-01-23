import 'dart:async';

class Validators {
  // StreamTransformer<String "input type", String "output type">
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (String email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Enter a valid email');
    }
  });
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (String password, sink) {
    if (password.length >= 8) {
      sink.add(password);
    } else {
      sink.addError('Password must be at least 8 charcters long');
    }
  });
}
