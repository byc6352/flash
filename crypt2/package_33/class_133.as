package package_33
{
   import r1.deval.parser.class_130;
   
   public class class_133
   {
      
      private static var var_372:int = 0;
       
      
      private var var_374:class_133;
      
      private var var_375:class_131;
      
      private var var_376:Array = null;
      
      public var name:String;
      
      private var var_377:Array = null;
      
      private var var_373:Boolean = false;
      
      public var stmts:Array;
      
      private var var_381:int;
      
      private var var_380:class_133;
      
      private var var_379:Boolean = false;
      
      public function class_133(param1:String = null, param2:Boolean = true)
      {
         super();
         if(class_130.var_336 || !param2)
         {
            if(param2)
            {
               if(param1 == null)
               {
                  param1 = "";
               }
               this.name = param1 + "/" + ++var_372;
            }
            else
            {
               this.name = param1;
            }
         }
         var_373 = !param2;
      }
      
      public function method_587() : Boolean
      {
         return var_375 == null;
      }
      
      public function info(param1:int = 0) : String
      {
         var _loc6_:class_150 = null;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1)
         {
            _loc2_ = _loc2_ + "  ";
            _loc3_++;
         }
         var _loc4_:String = "\n" + _loc2_;
         if(this is class_156)
         {
            if(this == class_156.const_100)
            {
               return _loc2_ + "<EXIT name=\"" + name + "\" />";
            }
            return null;
         }
         if(method_588())
         {
            return _loc2_ + method_589(true);
         }
         var _loc5_:* = _loc2_ + "<Block name=\"" + name + "\" optimized=\"" + var_373 + "\">";
         for each(_loc6_ in stmts)
         {
            _loc5_ = _loc5_ + (_loc4_ + "  <stmt");
            if(_loc6_.name_11 > 0)
            {
               _loc5_ = _loc5_ + (" line=\"" + _loc6_.name_11 + "\"");
            }
            _loc5_ = _loc5_ + (">" + String(_loc6_) + "</stmt>");
         }
         return _loc5_ + _loc4_ + "  " + method_589() + _loc4_ + "</Block>";
      }
      
      public function method_542(param1:Object, param2:int = 0) : void
      {
         if(stmts == null)
         {
            stmts = [];
         }
         if(!(param1 is class_150))
         {
            if(param1 is class_131)
            {
               param1 = new class_159(param1 as class_131,param2);
            }
         }
         stmts.push(param1);
      }
      
      public function method_577() : Boolean
      {
         return method_587() && (stmts == null || stmts.length == 0) && !(this is class_156);
      }
      
      private function method_590(param1:class_133, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(var_377 == null)
            {
               var_377 = [];
            }
            var_377.push(param1);
         }
         else
         {
            if(var_376 == null)
            {
               var_376 = [];
            }
            var_376.push(param1);
         }
      }
      
      public function set method_560(param1:class_133) : void
      {
         if(var_374 != null)
         {
            var_374.method_591(this);
         }
         var_374 = param1;
         if(param1 != null)
         {
            param1.method_590(this);
         }
      }
      
      public function method_588() : Boolean
      {
         return (stmts == null || stmts.length == 0) && var_375 != null;
      }
      
      public function method_578() : class_131
      {
         return var_375;
      }
      
      public function run(param1:class_133 = null) : void
      {
         if(param1 == null)
         {
            param1 = class_156.const_100;
         }
         var _loc2_:class_133 = this;
         var _loc3_:Number = 0;
         while(_loc2_ != null && _loc2_ != param1)
         {
            _loc2_ = _loc2_.method_592();
            if(_loc3_ > class_134.var_378)
            {
               throw new class_158("msg.rt.infinite.loop");
            }
            _loc3_++;
         }
      }
      
      public function get method_543() : Boolean
      {
         return var_379 || var_374 is class_156;
      }
      
      public function method_592() : class_133
      {
         var s:class_150 = null;
         if(stmts != null)
         {
            for each(s in stmts)
            {
               try
               {
                  s.method_592();
               }
               catch(e:Error)
               {
                  if(e is class_158)
                  {
                     (e as class_158).name_11 = s.name_11;
                  }
                  throw e;
               }
            }
         }
         if(var_375 == null || var_375.getBoolean())
         {
            return var_374;
         }
         return var_380;
      }
      
      public function get method_560() : class_133
      {
         return var_374;
      }
      
      public function method_561(param1:class_131, param2:int = -1) : void
      {
         var_375 = param1;
         if(param2 >= 0)
         {
            var_381 = param2;
         }
      }
      
      public function set method_562(param1:class_133) : void
      {
         if(var_380 != null)
         {
            var_380.method_591(this,false);
         }
         var_380 = param1;
         if(param1 != null)
         {
            param1.method_590(this,false);
         }
      }
      
      public function method_589(param1:Boolean = false) : String
      {
         if(method_560 is class_156)
         {
            return "<return/>";
         }
         var _loc2_:String = var_375 == null?"<goto ":"<test ";
         if(param1 && name != null)
         {
            _loc2_ = _loc2_ + ("name=\"" + name + "\" ");
         }
         if(var_375 != null)
         {
            _loc2_ = _loc2_ + ("expr=\"" + String(var_375) + "\" ");
         }
         if(var_381 > 0)
         {
            _loc2_ = _loc2_ + ("line=\"" + var_381 + "\" ");
         }
         if(var_374 != null)
         {
            _loc2_ = _loc2_ + ("trueNext=\"" + var_374.name + "\" ");
         }
         if(var_380 != null && var_375 != null)
         {
            _loc2_ = _loc2_ + ("falseNext=\"" + var_380.name + "\" ");
         }
         return _loc2_ + "/>";
      }
      
      private function method_591(param1:class_133, param2:Boolean = true) : void
      {
         if(param2)
         {
            if(var_377 != null)
            {
               var_377.splice(var_377.indexOf(this));
            }
         }
         else if(var_376 != null)
         {
            var_376.splice(var_376.indexOf(this));
         }
      }
      
      public function method_540(param1:Object, param2:int = 0) : void
      {
         if(param1[name] != null)
         {
            return;
         }
         param1[name] = true;
         var _loc3_:String = info(param2);
         if(_loc3_ != null)
         {
            trace("\n" + _loc3_);
         }
         if(method_560 != null)
         {
            method_560.method_540(param1,param2);
         }
         if(method_562 != null)
         {
            method_562.method_540(param1,param2);
         }
      }
      
      public function method_574() : void
      {
         var _loc1_:class_133 = null;
         var _loc2_:Object = null;
         var _loc3_:class_133 = null;
         if(var_373)
         {
            return;
         }
         var_373 = true;
         if(var_374 != null && !(var_374 is class_156))
         {
            var_374.method_574();
            if(var_374.method_577())
            {
               method_560 = var_374.method_560;
            }
            else if(method_587())
            {
               _loc1_ = var_374 as class_133;
               if(_loc1_.method_566() == 1 && _loc1_.method_587())
               {
                  if(stmts == null)
                  {
                     stmts = _loc1_.stmts;
                  }
                  else
                  {
                     for each(_loc2_ in _loc1_.stmts)
                     {
                        stmts.push(_loc2_);
                     }
                  }
                  method_560 = _loc1_.method_560;
               }
            }
         }
         if(var_380 != null && !(var_380 is class_156))
         {
            var_380.method_574();
            if(var_380.method_577())
            {
               method_562 = var_380.method_560;
            }
         }
         if(method_577())
         {
            for each(_loc3_ in var_377)
            {
               if(_loc3_ != null)
               {
                  _loc3_.var_374 = var_374;
               }
            }
            for each(_loc3_ in var_376)
            {
               if(_loc3_ != null)
               {
                  _loc3_.var_380 = var_374;
               }
            }
            method_560 = method_562 = null;
            var_377 = var_376 = null;
         }
      }
      
      public function get method_562() : class_133
      {
         return var_380;
      }
      
      public function method_566() : int
      {
         return (var_377 == null?0:var_377.length) + (var_376 == null?0:var_376.length);
      }
      
      public function set method_543(param1:Boolean) : void
      {
         var_379 = param1;
      }
   }
}
