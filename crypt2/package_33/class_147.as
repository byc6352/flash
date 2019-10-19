package package_33
{
   class class_147 implements class_131
   {
       
      
      function class_147()
      {
         super();
      }
      
      public function getNumber() : Number
      {
         return Number(getAny());
      }
      
      public function getBoolean() : Boolean
      {
         return Boolean(getAny());
      }
      
      public function getAny() : Object
      {
         throw new Error("UNIMPLEMENTED");
      }
      
      public function method_478() : String
      {
         var _loc1_:Object = getAny();
         if(_loc1_ == null)
         {
            return null;
         }
         return _loc1_.toString();
      }
   }
}
