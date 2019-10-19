package package_31
{
   import package_33.class_132;
   import package_33.class_133;
   import package_33.class_134;
   import r1.deval.parser.class_130;
   
   public class D
   {
      
      private static var var_319:int = 512;
      
      private static var var_320:Object = {};
      
      private static var var_318:Boolean = true;
      
      public static const const_47:int = 3;
      
      public static const const_45:int = 1;
      
      public static const const_46:int = 2;
      
      public static const const_44:int = 0;
       
      
      public function D()
      {
         super();
      }
      
      public static function method_452(param1:String) : void
      {
         class_134.method_452(param1);
      }
      
      public static function method_453(param1:Function) : void
      {
         class_134.var_321 = param1;
      }
      
      public static function method_454(param1:Object) : Object
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc2_:Object = {};
         for each(_loc3_ in param1)
         {
            _loc4_ = param1[_loc4_];
            if(_loc4_ is class_132)
            {
               _loc2_[_loc3_] = _loc4_;
            }
         }
         return _loc2_;
      }
      
      public static function method_455(param1:Boolean = true, param2:int = -1) : void
      {
         var_318 = param1;
         if(param2 > 0)
         {
            var_319 = param2;
         }
      }
      
      public static function method_456(param1:Object, param2:String = "text", param3:int = 2048) : void
      {
         var var_322:Object = param1;
         var prop:String = param2;
         var var_323:int = param3;
         method_453(function(param1:String):void
         {
            var _loc2_:String = var_322[prop];
            if(_loc2_ == "")
            {
               _loc2_ = param1;
            }
            else
            {
               if(_loc2_.length >= var_323)
               {
                  _loc2_ = _loc2_.substring(_loc2_.length - var_323);
               }
               _loc2_ = _loc2_ + "\n" + param1;
            }
            var_322[prop] = _loc2_;
         });
      }
      
      public static function method_457(param1:String) : Object
      {
         return new class_130().method_457(param1);
      }
      
      public static function method_458(param1:Class) : void
      {
         class_134.method_458(param1);
      }
      
      public static function eval(param1:*, param2:Object = null, param3:Object = null) : Object
      {
         var _loc4_:String = null;
         var _loc5_:class_132 = null;
         if(param1 == null || param1 == "")
         {
            return null;
         }
         if(param1 is String)
         {
            _loc4_ = String(param1);
            if(var_318 && _loc4_.length <= var_319)
            {
               param1 = var_320[_loc4_];
               if(param1 == null)
               {
                  var_320[_loc4_] = param1 = method_457(_loc4_);
               }
            }
            else
            {
               param1 = method_457(_loc4_);
            }
         }
         if(param1 is Array)
         {
            if(param2 == null)
            {
               param2 = {};
            }
            for each(_loc5_ in param1[1])
            {
               param2[_loc5_.name] = _loc5_;
            }
            param1 = param1[0];
         }
         return class_134.run(param1 as class_133,param3,param2);
      }
      
      public static function importFunction(param1:String, param2:Function) : void
      {
         class_134.importFunction(param1,param2);
      }
      
      public static function method_459(param1:*, param2:Object = null, param3:Object = null) : Number
      {
         return Number(eval(param1,param2,param3));
      }
      
      public static function method_460(param1:int) : void
      {
         class_134.method_460(param1);
      }
      
      public static function method_461(param1:String) : Object
      {
         var _loc4_:class_132 = null;
         var _loc2_:Object = {};
         var _loc3_:Object = method_457(param1);
         if(_loc3_ is Array)
         {
            for each(_loc4_ in _loc3_[1])
            {
               _loc2_[_loc4_.name] = _loc4_;
            }
         }
         return _loc2_;
      }
      
      public static function method_462(param1:*, param2:Object = null, param3:Object = null) : String
      {
         return eval(param1,param2,param3) as String;
      }
      
      public static function method_463(param1:*, param2:Object = null, param3:Object = null) : Boolean
      {
         return Boolean(eval(param1,param2,param3));
      }
      
      public static function method_464(param1:*, param2:Object = null, param3:Object = null) : int
      {
         return int(eval(param1,param2,param3));
      }
      
      public static function importStaticMethods(param1:Class, param2:* = null) : void
      {
         class_134.importStaticMethods(param1,param2);
      }
   }
}
