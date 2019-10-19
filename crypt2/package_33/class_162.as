package package_33
{
   class class_162 implements class_131
   {
       
      
      var var_453:class_131;
      
      var var_454:Array;
      
      function class_162(param1:class_131, param2:*)
      {
         super();
         this.var_453 = param1;
         this.var_454 = param2 is Array?param2 as Array:[param2];
      }
      
      public function getNumber() : Number
      {
         throw new Error("UNIMPLEMENTED");
      }
      
      public function method_478() : String
      {
         throw new Error("UNIMPLEMENTED");
      }
      
      public function addOperand(param1:*, param2:* = null) : void
      {
         var _loc3_:class_131 = null;
         if(param1 is class_131)
         {
            var_454.push(param1);
         }
         else if(param1 is Array)
         {
            for each(_loc3_ in param1 as Array)
            {
               var_454.push(_loc3_);
            }
         }
      }
      
      public function getBoolean() : Boolean
      {
         throw new Error("UNIMPLEMENTED");
      }
      
      public function getAny() : Object
      {
         throw new Error("UNIMPLEMENTED");
      }
   }
}
