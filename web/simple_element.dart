import 'package:polymer/polymer.dart';

@CustomTag('simple-element')
class SimpleElement extends PolymerElement {
  @published String name;
  @published String surname;

  SimpleElement.created() : super.created();
}