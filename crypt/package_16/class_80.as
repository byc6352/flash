﻿package package_16
{
   public class class_80
   {
      
      private static var K174935280292A9EDB4409FB9076EE4A7F8A342445898K:String = "0123456789abcdef";
       
      
      public function class_80()
      {
         super();
      }
      
      public static function method_106(param1:int, param2:int) : int
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      public static function method_291(param1:int, param2:int) : uint
      {
         var _loc3_:int = 32 - param2;
         return param1 << _loc3_ | param1 >>> 32 - _loc3_;
      }
      
      public static function K17493564EA0CE1798F4540B76658EAA134C02C445898K(param1:int, param2:Boolean = false) : String
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:String = "";
         if(param2)
         {
            _loc4_ = 0;
            while(_loc4_ < 4)
            {
               _loc3_ = _loc3_ + (K174935280292A9EDB4409FB9076EE4A7F8A342445898K.charAt(param1 >> (3 - _loc4_) * 8 + 4 & 15) + K174935280292A9EDB4409FB9076EE4A7F8A342445898K.charAt(param1 >> (3 - _loc4_) * 8 & 15));
               _loc4_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < 4)
            {
               _loc3_ = _loc3_ + (K174935280292A9EDB4409FB9076EE4A7F8A342445898K.charAt(param1 >> _loc5_ * 8 + 4 & 15) + K174935280292A9EDB4409FB9076EE4A7F8A342445898K.charAt(param1 >> _loc5_ * 8 & 15));
               _loc5_++;
            }
         }
         return _loc3_;
      }
   }
}
