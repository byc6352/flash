package package_33
{
   import flash.system.ApplicationDomain;
   import r1.deval.parser.class_128;
   
   public class class_171 extends class_170
   {
      
      private static const const_115:int = -7;
      
      private static const const_110:int = -2;
      
      private static const const_111:int = -3;
      
      private static const const_114:int = -6;
      
      private static const const_113:int = -5;
      
      private static const const_116:int = -8;
      
      private static const const_112:int = -4;
      
      private static const const_109:int = -1;
       
      
      private var type;
      
      private var id:int;
      
      public function class_171(param1:class_131, param2:*, param3:int)
      {
         var _loc4_:String = null;
         super(param1,param3);
         this.type = param2 as class_131;
         id = const_109;
         if(param2 is String)
         {
            _loc4_ = String(param2).toLowerCase();
            if(_loc4_ == "int")
            {
               id = const_112;
            }
            else if(_loc4_ == "uint")
            {
               id = const_113;
            }
            else if(_loc4_ == "number")
            {
               id = const_111;
            }
            else if(_loc4_ == "string")
            {
               id = const_114;
            }
            else if(_loc4_ == "boolean")
            {
               id = const_116;
            }
            else if(_loc4_ == "date")
            {
               id = const_115;
            }
            else if(_loc4_ == "array")
            {
               id = const_110;
            }
         }
      }
      
      override public function getNumber() : Number
      {
         return Number(getBoolean());
      }
      
      public function method_660() : Array
      {
         if(var_458 != class_128.IN)
         {
            return null;
         }
         return [base,type];
      }
      
      override public function method_478() : String
      {
         return getBoolean().toString();
      }
      
      override public function getBoolean() : Boolean
      {
         var var_462:String = null;
         var var_461:Class = null;
         var x:Object = null;
         if(var_458 == class_128.AS)
         {
            return Boolean(getAny());
         }
         var o:Object = base.getAny();
         if(var_458 == class_128.IN)
         {
            try
            {
               return o in (type as class_131).getAny();
            }
            catch(e:Error)
            {
               return false;
            }
            if(id == const_109)
            {
               var_461 = null;
               if(type is String)
               {
                  var_462 = type as String;
               }
               else
               {
                  try
                  {
                     x = (type as class_131).getAny();
                     if(x is Class)
                     {
                        var_461 = x as Class;
                     }
                     else
                     {
                        var_462 = x.toString();
                     }
                  }
                  catch(e:Error)
                  {
                     return false;
                  }
               }
               if(var_461 == null)
               {
                  try
                  {
                     var_461 = ApplicationDomain.currentDomain.getDefinition(var_462) as Class;
                  }
                  catch(e:Error)
                  {
                     return false;
                  }
               }
               if(var_458 == class_128.IS)
               {
                  return o is var_461;
               }
               return o instanceof var_461;
            }
            switch(id)
            {
               case const_112:
                  return o is int;
               case const_113:
                  return o is uint;
               case const_111:
                  return o is Number;
               case const_116:
                  return o is Boolean;
               case const_114:
                  return o is String;
               case const_115:
                  return o is Date;
               case const_110:
                  return o is Array;
               default:
                  return false;
            }
         }
         else
         {
            if(id == const_109)
            {
               var_461 = null;
               if(type is String)
               {
                  var_462 = type as String;
               }
               else
               {
                  x = (type as class_131).getAny();
                  if(x is Class)
                  {
                     var_461 = x as Class;
                  }
                  else
                  {
                     var_462 = x.toString();
                  }
               }
               if(var_461 == null)
               {
                  var_461 = ApplicationDomain.currentDomain.getDefinition(var_462) as Class;
               }
               if(var_458 == class_128.IS)
               {
                  return o is var_461;
               }
               return o instanceof var_461;
            }
            switch(id)
            {
               case const_112:
                  return o is int;
               case const_113:
                  return o is uint;
               case const_111:
                  return o is Number;
               case const_116:
                  return o is Boolean;
               case const_114:
                  return o is String;
               case const_115:
                  return o is Date;
               case const_110:
                  return o is Array;
               default:
                  return false;
            }
         }
      }
      
      override public function getAny() : Object
      {
         var o:Object = null;
         var var_462:String = null;
         var x:Object = null;
         if(var_458 != class_128.AS)
         {
            return getBoolean();
         }
         o = base.getAny();
         switch(id)
         {
            case const_112:
               return o as int;
            case const_113:
               return o as uint;
            case const_111:
               return o as Number;
            case const_116:
               return o as Boolean;
            case const_114:
               return o as String;
            case const_115:
               return o as Date;
            case const_110:
               return o as Array;
            default:
               var var_461:Class = null;
               if(type is String)
               {
                  var_462 = type as String;
               }
               else
               {
                  try
                  {
                     x = (type as class_131).getAny();
                     if(x is Class)
                     {
                        var_461 = x as Class;
                     }
                     else
                     {
                        var_462 = x.toString();
                     }
                  }
                  catch(e:Error)
                  {
                     return o;
                  }
               }
               if(var_461 == null)
               {
                  try
                  {
                     var_461 = ApplicationDomain.currentDomain.getDefinition(var_462) as Class;
                  }
                  catch(e:Error)
                  {
                     return o;
                  }
               }
               return o as var_461;
         }
      }
   }
}
