(() => {
   'use strict';

   var Persons = () => {
      var persons = [];
      return {
         add: person => { persons.push(person) },
         get: () => persons
      };
   };

   var Person = (iname, iage) => {
      var name = iname;
      var age  = iage;

      return {
         name: name,
         age : age
      };
   };

   var p1 = Person('mato', 21);
   var p2 = Person('ruru', 24);
   var p3 = Person('sato', 43);

   console.log(p1);  // {name: "mato", age: 21}
   console.log(p2);  // {name: "ruru", age: 24}
   console.log(p3);  // {name: "sato", age: 43}

   var persons = Persons();
   persons.add(p1);
   persons.add(p2);
   persons.add(p3);

   console.log(persons.get());  // {p1, p2, p3}

})();
