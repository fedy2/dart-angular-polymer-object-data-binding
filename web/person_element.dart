    import 'package:polymer/polymer.dart';
    import 'person.dart';
    
    @CustomTag('person-element')
    class PersonElement extends PolymerElement {
      @published Person person;
    
      PersonElement.created() : super.created();
    }