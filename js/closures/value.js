(() => {
   'use strict';

   var Value = iv => {
      var value = iv;

      return {
         add: v  => { value += v },
         sub: v  => { value -= v },
         get: () =>   value
      };
   };

   var val1 = Value(3);
   var val2 = Value(8);

   console.log(val1, val2);  // 3 8

   val1.add(5);
   val2.add(3);

   console.log(val1, val2);  // 8 11

   val1.sub(2);
   val2.sub(1);

   console.log(val1, val2);  // 6 10

})();
