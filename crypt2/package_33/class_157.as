package package_33
{
   public class class_157 implements class_131
   {
       
      
      var var_437:Array;
      
      public function class_157(param1:class_131, param2:class_131)
      {
         var_437 = [];
         super();
         if(param1 != null)
         {
            var_437.push(param1);
         }
         if(param2 != null)
         {
            var_437.push(param2);
         }
      }
      
      public function add(param1:class_131) : void
      {
         var_437.push(param1);
      }
      
      public function getNumber() : Number
      {
         return Number(getAny());
      }
      
      public function method_582() : class_131
      {
         if(var_437.length == 1)
         {
            return var_437[0] as class_131;
         }
         return this;
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
      
      public function getBoolean() : Boolean
      {
         return Boolean(getAny());
      }
      
      public function getAny() : Object
      {
         var _loc1_:int = 0;
         while(_loc1_ < var_437.length - 1)
         {
            (var_437[_loc1_] as class_131).getAny();
            _loc1_++;
         }
         return (var_437[var_437.length - 1] as class_131).getAny();
      }
   }
}
