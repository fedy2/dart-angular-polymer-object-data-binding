import 'package:polymer/polymer.dart';
import 'package:angular/application_factory.dart';
import 'package:angular_node_bind/angular_node_bind.dart' show NodeBindModule;
import 'person.dart';
import 'package:angular/angular.dart';

@MirrorsUsed(override: '*')
import 'dart:mirrors';

    void main() {
      initPolymer()
      .run(() {
        applicationFactory()
          .addModule(new NodeBindModule())
          .addModule(new PersonModule())
          .run();
      });
    }

    @Controller(
        selector: '[person-container]',
        publishAs: 'ctrl')
    class PersonController { 
      List<Person> persons = [new Person('John','Smith'), new Person('Mario','Rossi')];
    }
    
    class PersonModule extends Module {
      PersonModule() {
        bind(PersonController);
      }
    }
