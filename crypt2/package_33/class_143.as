package package_33
{
   import r1.deval.parser.class_128;
   
   public class class_143 extends class_128
   {
       
      
      public function class_143()
      {
         super();
      }
      
      public function method_555(param1:String, param2:class_131 = null, param3:class_131 = null) : class_131
      {
         return method_522(param3,new class_167(param1,param2));
      }
      
      public function method_498(param1:class_131) : class_131
      {
         return new class_170(param1,ESCXMLATTR);
      }
      
      public function method_525(param1:class_131, param2:*, param3:Boolean, param4:Boolean, param5:Boolean = false) : class_131
      {
         if(param1 is class_169 && class_169(param1).method_611(param3,param4,param5))
         {
            class_169(param1).addOperand(param2);
            return param1;
         }
         return new class_169(param1,param2,param3,param4,param5);
      }
      
      public function method_476(param1:class_131, param2:*, param3:class_131 = null, param4:Boolean = false, param5:Boolean = false) : class_131
      {
         var _loc6_:* = param2;
         if(_loc6_ is class_144)
         {
            _loc6_ = (_loc6_ as class_144).getAny();
         }
         if(param3 == null && !param4 && !param5)
         {
            return new class_177(param1,_loc6_);
         }
         return new class_178(param1,_loc6_,param3,false,param4,param5);
      }
      
      public function method_508(param1:class_131, param2:class_131, param3:int) : class_131
      {
         if(param1 is class_174)
         {
            class_174(param1).addOperand(param2,param3);
            return param1;
         }
         return new class_174(param1,[param2],[param3]);
      }
      
      public function method_502(param1:class_131, param2:int) : class_131
      {
         if(param2 == ADD)
         {
            return param1;
         }
         if(param2 == SUB)
         {
            if(param1 is class_144)
            {
               if(param1 == class_144.const_103)
               {
                  return class_144.const_104;
               }
               if(param1.getAny() is Number)
               {
                  return new class_144(-param1.getNumber());
               }
            }
         }
         return new class_170(param1,param2);
      }
      
      public function method_490(param1:class_145, param2:class_131, param3:int, param4:int) : class_131
      {
         return new class_172(param1,param2,param3,param4);
      }
      
      public function method_530(param1:class_131, param2:class_131) : class_131
      {
         return new class_178(param1,param2,null,true);
      }
      
      public function method_534(param1:Object, param2:Boolean = false, param3:Array = null) : class_131
      {
         return !!param2?new class_144(param1):new class_165(param1,param3);
      }
      
      public function method_520(param1:class_131, param2:*, param3:int) : class_131
      {
         if(param1 is class_168 && class_168(param1).method_611(param3))
         {
            class_168(param1).addOperand(param2);
            return param1;
         }
         return new class_168(param1,param2,param3);
      }
      
      public function method_515(param1:class_131, param2:class_131, param3:int) : class_131
      {
         if(param1 is class_166)
         {
            class_166(param1).addOperand(param2,param3);
            return param1;
         }
         return new class_166(param1,[param2],[param3]);
      }
      
      public function literal(param1:Object) : class_131
      {
         if(param1 is Number)
         {
            if(param1 == 0)
            {
               return class_144.const_105;
            }
            if(param1 == 1)
            {
               return class_144.const_103;
            }
            if(param1 == -1)
            {
               return class_144.const_104;
            }
         }
         else
         {
            if(param1 is Boolean)
            {
               return param1 == true?class_144.TRUE:class_144.FALSE;
            }
            if(param1 == null)
            {
               return class_144.NULL;
            }
            if(param1 == "")
            {
               return class_144.const_106;
            }
         }
         return new class_144(param1);
      }
      
      public function method_612(param1:class_131, param2:class_131) : class_131
      {
         if(param1 is class_144 && param2 is class_144)
         {
            return new class_144(new QName(param1.getAny() as Namespace,param2.method_478()));
         }
         return new class_173(param1,param2);
      }
      
      public function method_526(param1:class_131, param2:class_131, param3:int) : class_131
      {
         return new class_171(param1,param2,param3);
      }
      
      public function method_535() : class_131
      {
         return class_175.const_107;
      }
      
      public function method_531(param1:class_131) : class_148
      {
         return new class_148(false,param1);
      }
      
      public function method_496(param1:class_131, param2:class_131, param3:Boolean = true) : class_131
      {
         if(param1 == null)
         {
            return !!param3?param2:method_502(param2,SUB);
         }
         if(param1 is class_179)
         {
            class_179(param1).addOperand(param2,param3);
            return param1;
         }
         return new class_179(param1,[param2],[param3]);
      }
      
      public function method_537(param1:String, param2:String) : class_131
      {
         return new class_144(new RegExp(param1,param2));
      }
      
      public function method_527(param1:class_131) : class_148
      {
         return new class_148(true,param1);
      }
      
      public function method_533(param1:class_131, param2:class_131, param3:class_131) : class_131
      {
         return new class_176(param1,param2,param3);
      }
      
      public function method_513(param1:class_131, param2:class_131, param3:int) : class_131
      {
         if(param1 is class_164)
         {
            class_164(param1).addOperand(param2,param3);
            return param1;
         }
         return new class_164(param1,[param2],[param3]);
      }
      
      public function method_499(param1:class_131, param2:class_131) : class_131
      {
         return new class_170(method_496(param1,param2),ESCXMLTEXT);
      }
      
      public function method_522(param1:class_131, param2:class_131) : class_131
      {
         if(param1 == null)
         {
            return param2;
         }
         if(param1 is class_157)
         {
            class_157(param1).add(param2);
            return param1;
         }
         return new class_157(param1,param2);
      }
   }
}
