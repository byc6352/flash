package r1.deval.parser
{
   import package_33.class_131;
   import package_33.class_132;
   import package_33.class_133;
   import package_33.class_152;
   import package_33.class_153;
   import package_33.class_154;
   import package_33.class_155;
   import package_33.class_156;
   import package_33.class_157;
   
   public class class_130 extends class_129
   {
      
      public static var var_336:Boolean = false;
       
      
      private var var_340:Array;
      
      private var var_341:class_156 = null;
      
      private var var_338:class_133;
      
      private var var_339:Array;
      
      private var var_344:int = 0;
      
      private var var_362:int = 0;
      
      private var var_364:int = 0;
      
      private var var_359:int = 0;
      
      private var var_363:int = 0;
      
      private var var_343:Array;
      
      private var var_337:Array;
      
      public function class_130()
      {
         var_337 = [];
         super();
      }
      
      private static function method_539(param1:String, param2:class_133, param3:Array) : void
      {
         var _loc5_:class_132 = null;
         trace(param1);
         var _loc4_:Object = {};
         for each(_loc5_ in param3)
         {
            _loc5_.method_540(_loc4_);
         }
         param2.method_540(_loc4_);
      }
      
      private static function method_541(param1:int) : String
      {
         switch(param1)
         {
            case CLASS:
               return "class";
            case TRY:
               return "try";
            case CATCH:
               return "catch";
            case FINALLY:
               return "finally";
            default:
               return "";
         }
      }
      
      public function method_542(param1:*, param2:int) : void
      {
         if(var_338.method_543)
         {
            method_480("msg.unreachable.code","K51");
         }
         var_338.method_542(param1,param2);
      }
      
      protected function method_544(param1:String = null, param2:Boolean = false) : Array
      {
         var _loc3_:class_133 = new class_133(param1);
         method_545(_loc3_);
         method_546(null,param2);
         var _loc4_:Array = [_loc3_,var_338];
         method_547();
         return _loc4_;
      }
      
      private function method_548() : Object
      {
         return var_339[var_339.length - 1];
      }
      
      protected function method_549() : class_131
      {
         method_479(LP,"msg.no.paren.cond","k51");
         var _loc1_:class_131 = expression();
         method_479(RP,"msg.no.paren.after.cond","k52");
         return _loc1_;
      }
      
      protected function method_550(param1:class_142, param2:class_133, param3:class_133, param4:String = null) : class_142
      {
         if(param1 == null)
         {
            param1 = method_551(param4);
         }
         param1.block = param2;
         param1.var_342 = param3 == null?param2:param3;
         method_552(param1);
         return param1;
      }
      
      public function method_543(param1:class_133) : Boolean
      {
         return param1 != null && param1.method_543;
      }
      
      private function method_553() : class_142
      {
         return var_343.pop() as class_142;
      }
      
      private function method_554(param1:int, param2:class_142) : void
      {
         var _loc4_:String = null;
         var _loc5_:class_131 = null;
         var _loc3_:Boolean = false;
         if(method_475(NAME))
         {
            if(var_331.method_478() == "each")
            {
               _loc3_ = true;
            }
            else
            {
               method_480("msg.no.paren.for","K55");
            }
         }
         method_479(LP,"msg.no.paren.for","k54");
         var _loc6_:int = method_486();
         if(_loc6_ != SEMI)
         {
            if(_loc6_ == VAR)
            {
               method_487();
               method_479(NAME,"msg.bad.var","k55");
               _loc4_ = var_331.method_478();
               if(method_486() == IN)
               {
                  method_487();
                  var_330.method_555(_loc4_);
               }
               else
               {
                  method_556(_loc4_);
                  _loc4_ = null;
               }
            }
            else if(method_486() == NAME)
            {
               _loc4_ = var_331.method_478();
               method_487();
               if(method_486() == IN)
               {
                  method_487();
               }
               else
               {
                  method_481();
                  _loc4_ = null;
                  method_546(null,true);
               }
            }
            else
            {
               method_546(null,true);
            }
         }
         var _loc7_:class_133 = null;
         if(_loc4_)
         {
            _loc5_ = expression();
         }
         else
         {
            method_479(SEMI,"msg.no.semi.for","k56");
            _loc5_ = method_486() == SEMI?null:expression();
            method_479(SEMI,"msg.no.semi.for.cond","k57");
            if(method_486() != RP)
            {
               _loc7_ = method_544(null,true)[0] as class_133;
            }
         }
         method_479(RP,"msg.no.paren.for.ctrl","k58");
         var _loc8_:String = (!!_loc3_?"@for_each_":!!_loc4_?"@for_in_":"@for_") + var_344++;
         if(_loc4_ == null)
         {
            method_557(param1,param2,_loc8_,_loc5_,":for-body:",_loc7_);
         }
         else
         {
            method_558(param1,param2,_loc8_,_loc4_,_loc5_,_loc3_,_loc7_);
         }
      }
      
      private function method_559(param1:class_142) : void
      {
         var label:class_142 = null;
         var var_346:class_133 = null;
         var var_348:class_142 = param1;
         var var_345:Array = method_544(":do-while-body");
         var var_347:class_133 = var_345[0] as class_133;
         var_338.method_560 = var_347;
         if(!method_543((var_345[1] as class_133).method_560))
         {
            (var_345[1] as class_133).method_560 = var_347;
         }
         try
         {
            label = method_550(var_348,var_347,null,"@do_while_");
            var_347.name = label.name;
            method_479(WHILE,"msg.no.while.do","k53");
            var_347.method_561(method_549(),var_331.method_489());
            var_346 = new class_133();
            if(!method_543((var_345[1] as class_133).method_560))
            {
               (var_345[1] as class_133).method_562 = var_346;
            }
            method_547();
            method_545(var_346);
            return;
         }
         finally
         {
            method_563();
         }
      }
      
      override protected function method_523(param1:Boolean = false) : class_132
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function method_564(param1:int, param2:String, param3:String) : String
      {
         if(method_486() != param1)
         {
            method_480(param2,param3);
         }
         var _loc4_:String = var_331.method_478();
         method_487();
         return _loc4_;
      }
      
      private function get method_567() : Boolean
      {
         return var_339.length > 0;
      }
      
      private function method_568(param1:class_142, param2:class_131, param3:int) : void
      {
         method_564(LC,"msg.no.brace.switch","Ksw5");
         var _loc4_:String = "_switch_" + method_569;
         method_542(var_330.method_555(_loc4_,param2),0);
         var _loc5_:class_133 = var_338;
         _loc5_.method_560 = method_545();
         if(param1 == null)
         {
            param1 = method_551();
         }
         param1.var_349 = true;
         param1.block = new class_133();
         method_552(param1);
         var _loc6_:Object = {
            "switchVar":var_330.method_476(null,_loc4_),
            "type":0,
            "branchHead":var_338,
            "branchCondition":_loc5_,
            "label":param1
         };
         var _loc7_:int = method_569;
         var_339.push(_loc6_);
         do
         {
            method_546();
         }
         while(method_569 > _loc7_);
         
      }
      
      protected function method_547() : class_133
      {
         var _loc1_:class_133 = var_337.pop() as class_133;
         var_338 = var_337[var_337.length - 1] as class_133;
         return _loc1_;
      }
      
      private function method_570(param1:String) : class_142
      {
         var _loc2_:class_142 = var_343[param1] as class_142;
         if(_loc2_ == null)
         {
            method_480("msg.undef.label","K53");
         }
         return _loc2_;
      }
      
      private function method_558(param1:int, param2:class_142, param3:String, param4:String, param5:class_131, param6:Boolean, param7:class_133 = null) : void
      {
         var var_350:Array = null;
         var var_357:class_133 = null;
         var name_11:int = param1;
         var var_348:class_142 = param2;
         var var_353:String = param3;
         var var_356:String = param4;
         var var_355:class_131 = param5;
         var var_354:Boolean = param6;
         var var_358:class_133 = param7;
         var var_346:class_133 = new class_133();
         var var_351:int = var_359++;
         var var_352:class_154 = new class_154(var_351,var_356,var_355,var_354,name_11);
         method_542(var_352,name_11);
         var var_347:class_133 = new class_133();
         var_338.method_560 = var_347;
         var_347.method_562 = var_346;
         var label:class_142 = method_550(var_348,var_347,var_358,var_353);
         var_347.name = label.name;
         try
         {
            var_350 = method_544(":for-body:");
            var_357 = var_350[0] as class_133;
            if(var_358 != null)
            {
               var_358.method_560 = var_357.method_560;
               var_357.method_560 = var_358;
            }
            var_347.method_561(new class_153(var_352));
            var_347.method_560 = var_357;
            var_347.method_562 = var_346;
            (var_350[1] as class_133).method_560 = var_347;
            method_547();
            method_545(var_346);
            return;
         }
         finally
         {
            method_563();
         }
      }
      
      private function method_557(param1:int, param2:class_142, param3:String, param4:class_131, param5:String = ":while_body:", param6:class_133 = null) : void
      {
         var var_350:Array = null;
         var var_361:class_133 = null;
         var name_11:int = param1;
         var var_348:class_142 = param2;
         var var_353:String = param3;
         var cond:class_131 = param4;
         var var_360:String = param5;
         var var_358:class_133 = param6;
         var var_346:class_133 = new class_133();
         var var_347:class_133 = new class_133();
         var_338.method_560 = var_347;
         var_347.method_561(cond,name_11);
         var_347.method_562 = var_346;
         var label:class_142 = method_550(var_348,var_347,var_358,var_353);
         var_347.name = label.name;
         try
         {
            var_350 = method_544(var_360);
            var_361 = var_350[1] as class_133;
            if(var_358 != null && !var_361.method_543)
            {
               var_358.method_560 = var_361.method_560;
               var_361.method_560 = var_358;
               var_361 = var_358;
            }
            var_347.method_560 = var_350[0] as class_133;
            if(!var_361.method_543)
            {
               var_361.method_560 = var_347;
            }
            method_547();
            method_545(var_346);
            return;
         }
         finally
         {
            method_563();
         }
      }
      
      private function method_571() : class_142
      {
         if(method_505() != NAME)
         {
            return null;
         }
         method_487();
         return method_570(var_331.method_478());
      }
      
      protected function method_545(param1:* = null) : class_133
      {
         if(param1 == null)
         {
            param1 = new class_133();
         }
         else if(param1 is String)
         {
            param1 = new class_133(String(param1));
         }
         var_337.push(var_338 = param1 as class_133);
         return var_338;
      }
      
      override protected function method_493(param1:String) : void
      {
         super.method_493(param1);
         var_343 = [];
         var_339 = [];
         var_340 = [];
      }
      
      private function method_572(param1:Boolean) : void
      {
         var_338.method_543 = true;
         var _loc2_:class_142 = method_571();
         if(_loc2_ == null)
         {
            _loc2_ = method_573();
         }
         if(_loc2_.var_349)
         {
            if(!param1)
            {
               method_480("msg.bad.continue","Ksw");
            }
            var_338.method_560 = _loc2_.block;
         }
         else
         {
            var_338.method_560 = !!param1?_loc2_.block.method_562:_loc2_.var_342;
         }
      }
      
      public function method_457(param1:String) : Object
      {
         var _loc3_:class_132 = null;
         method_493(param1);
         method_545(":Main:");
         var _loc2_:class_133 = var_338;
         while(method_486() != EOF)
         {
            method_546();
         }
         if(var_338.method_560 == null)
         {
            var_338.method_560 = class_156.const_100;
         }
         method_547();
         if(var_336)
         {
            method_539("===== Pre-optimization =====",_loc2_,var_340);
         }
         _loc2_.method_574();
         for each(_loc3_ in var_340)
         {
            _loc3_.method_574();
         }
         if(var_336)
         {
            method_539("\n===== Post-optimization =====",_loc2_,var_340);
         }
         if(var_340.length == 0)
         {
            return _loc2_;
         }
         return [_loc2_,var_340];
      }
      
      private function method_575(param1:int, param2:class_131) : void
      {
         var_338.method_561(param2,param1);
         var _loc3_:class_133 = new class_133();
         var _loc4_:Array = method_544(":if-part:");
         var_338.method_560 = _loc4_[0] as class_133;
         var _loc5_:class_133 = _loc4_[1] as class_133;
         if(!_loc5_.method_543)
         {
            _loc5_.method_560 = _loc3_;
         }
         if(method_475(ELSE))
         {
            method_487();
            _loc4_ = method_544(":else-part:");
            var_338.method_562 = _loc4_[0] as class_133;
            _loc5_ = _loc4_[1] as class_133;
            if(!_loc5_.method_543)
            {
               _loc5_.method_560 = _loc3_;
            }
         }
         else
         {
            var_338.method_562 = _loc3_;
         }
         method_547();
         method_545(_loc3_);
      }
      
      private function method_576(param1:int, param2:class_131 = null) : void
      {
         var _loc9_:class_142 = null;
         var _loc3_:int = var_331.method_489();
         var _loc4_:Object = method_548();
         var _loc5_:class_133 = _loc4_.branchCondition as class_133;
         var _loc6_:class_133 = _loc4_.branchHead as class_133;
         var _loc7_:int = _loc4_.type as int;
         _loc4_.type = param1;
         if(param2 != null)
         {
            param2 = var_330.method_508(_loc4_.switchVar as class_131,param2,EQ);
         }
         if(_loc7_ == 0)

         {
            if(!_loc6_.method_577())
            {
               method_480("msg.unreachable.stmts.in.switch","Ksw6");
            }
            if(param1 == CASE)
            {
               _loc5_.method_561(param2,_loc3_);
            }
            else
            {
               _loc4_.defaultBlockHead = _loc6_;
            }
            return;
         }
         var _loc8_:class_133 = method_565(_loc6_);
         if(_loc7_ == DEFAULT)
         {
            _loc4_.defaultBlockTail = _loc8_;
         }
         if(param1 == RC)
         {
            _loc9_ = method_553();
            if(!_loc8_.method_543)
            {
               _loc8_.method_560 = _loc9_.block;
            }
            _loc6_ = _loc4_.defaultBlockHead as class_133;
            if(_loc6_ != null)
            {
               _loc8_ = _loc4_.defaultBlockTail as class_133;
               _loc5_.method_562 = _loc6_;
            }
            var_339.pop();
            method_545(_loc9_.block);
            return;
         }
         _loc4_.branchHead = method_545();
         if(!_loc8_.method_543)
         {
            _loc8_.method_560 = var_338;
         }
         if(param1 == DEFAULT)
         {
            _loc4_.defaultBlockHead = var_338;
         }
         else if(param1 == CASE)
         {
            if(_loc5_.method_578() != null)
            {
               _loc5_.method_562 = new class_133();
               _loc5_ = _loc5_.method_562;
               _loc5_.method_562 = method_573().block;
               _loc4_.branchCondition = _loc5_;
            }
            _loc5_.method_561(param2,_loc3_);
            _loc5_.method_560 = var_338;
         }
      }
      
      protected function method_565(param1:class_133) : class_133
      {
         var _loc2_:class_133 = method_547();
         var _loc3_:int = var_337.indexOf(param1);
         if(_loc3_ >= 0)
         {
            var_337.length = _loc3_;
         }
         var_338 = var_337[var_337.length - 1] as class_133;
         return _loc2_;
      }
      
      private function method_551(param1:String = null) : class_142
      {
         if(param1 == null)
         {
            param1 = "@_";
         }
         return new class_142(param1 + var_363++);
      }
      
      private function method_573() : class_142
      {
         if(var_343.length == 0)
         {
            method_480("msg.bad.break.continue","K56");
         }
         return var_343[var_343.length - 1] as class_142;
      }
      
      protected function method_563() : void
      {
         method_553();
      }
      
      private function method_579() : void
      {
         var _loc1_:int = 0;
         while((_loc1_ = method_486()) != EOF && _loc1_ != RC)
         {
            method_546();
         }
      }
      
      private function get method_569() : int
      {
         return var_339.length;
      }
      
      private function method_580(param1:int) : void
      {
         if(!(method_475(NAME) && var_331.method_478() == "xml"))
         {
            method_480("msg.bad.namespace","K57");
         }
         if(!(method_475(NAME) && var_331.method_478() == "namespace"))
         {
            method_480("msg.bad.namespace","K58");
         }
         if(!method_475(ASSIGN))
         {
            method_480("msg.bad.namespace","K59");
         }
         method_542(new class_155(DEFAULT_NS,expression(),param1),param1);
      }
      
      private function method_546(param1:class_142 = null, param2:Boolean = false) : void
      {
         null;
         var _loc4_:class_131 = null;
         null;
         null;
         var _loc9_:String = null;
         var _loc10_:Boolean = false;
         var _loc11_:int = 0;
         var _loc7_:int = var_331.method_489();
         var _loc8_:int = method_486();
         switch(_loc8_)
         {
            case IF:
               method_487();
               method_575(_loc7_,method_549());
               return;
            case SWITCH:
               method_487();
               method_568(param1,method_549(),_loc7_);
               break;
            case CASE:
               method_487();
               if(!method_567)
               {
                  method_480("msg.misplaced.case","Ksw1");
               }
               _loc4_ = expression();
               method_564(COLON,"msg.case.no.colon","Ksw2");
               method_576(CASE,_loc4_);
               return;
            case DEFAULT:
               method_487();
               if(method_486() == COLON)
               {
                  method_564(COLON,"msg.case.no.colon","Ksw3");
                  method_576(DEFAULT);
                  return;
               }
               method_580(_loc7_);
               break;
            case RC:
               if(!method_567 && var_341 == null)
               {
                  method_480("msg.misplaced.right.brace","Krc");
               }
               method_487();
               if(method_567)
               {
                  method_576(RC);
               }
               else
               {
                  var_341 = null;
               }
               return;
            case BREAK:
            case CONTINUE:
               method_487();
               method_572(_loc8_ == BREAK);
               break;
            case THROW:
               method_487();
               var_338.method_543 = true;
               method_542(new class_155(THROW,expression(),_loc7_),_loc7_);
               break;
            case WHILE:
               method_487();
               _loc4_ = method_549();
               method_557(_loc7_,param1,"@while_" + var_364++,_loc4_);
               return;
            case DO:
               method_487();
               method_559(param1);
               return;
            case FOR:
               method_487();
               method_554(var_331.method_489(),param1);
               return;
            case VAR:
               method_487();
               method_556();
               break;
            case RETURN:
               method_487();
               switch(method_505())
               {
                  case SEMI:
                     method_487();
                  case RC:
                  case EOF:
                  case EOL:
                  case ERROR:
                     break;
                  default:
                     method_542(expression(),_loc7_);
               }
               var_338.method_560 = var_341 != null?var_341:class_156.const_100;
               var_338.method_543 = true;
               break;
            case LC:
               method_487();
               method_579();
               method_479(RC,"msg.no.brace.block","k65");
               return;
            case ERROR:
            case SEMI:
               method_487();
               break;
            case IMPORT:
               method_487();
               method_581(_loc7_);
               break;
            case NAME:
               _loc9_ = var_331.method_478();
               method_509();
               _loc4_ = expression();
               if(_loc4_ is class_142)
               {
                  if(param1 == null)
                  {
                     _loc10_ = true;
                     param1 = _loc4_ as class_142;
                  }
                  else
                  {
                     _loc10_ = false;
                  }
                  method_546(param1);
                  break;
               }
               method_542(_loc4_,_loc7_);
               break;
            case FUNCTION:
               method_487();
               var_340.push(method_523());
               break;
            case CLASS:
               method_480("msg.class.not.supported","K64");
               break;
            case TRY:
            case CATCH:
            case FINALLY:
               method_480("msg.reserved.id","K54",method_541(_loc8_));
               break;
            default:
               method_542(expression(),var_331.method_489());
         }
         if(!param2)
         {
            _loc11_ = method_538();
            switch(_loc11_ & CLEAR_TI_MASK)
            {
               case SEMI:
                  method_487();
               case ERROR:
               case EOF:
               case RC:
                  break;
               default:
                  if((_loc11_ & TI_AFTER_EOL) == 0)
                  {
                     method_480("msg.no.semi.stmt","K65");
                     break;
                  }
            }
         }
      }
      
      private function method_581(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function method_552(param1:class_142) : void
      {
         if(var_343[param1.name] != null)
         {
            method_480("msg.dup.label","K61");
         }
         var_343.push(param1);
         var_343[param1.name] = param1;
      }
      
      private function method_556(param1:String = null) : void
      {
         var _loc2_:class_131 = null;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc3_:int = var_331.method_489();
         do
         {
            if(param1 != null)
            {
               _loc4_ = param1;
            }
            else
            {
               method_479(NAME,"msg.bad.var","k66");
               _loc4_ = var_331.method_478();
            }
            if(method_486() == COLON)
            {
               method_487();
               method_479(NAME,"msg.bad.var","k67");
               method_487();
            }
            _loc5_ = null;
            if(method_475(ASSIGN))
            {
               _loc5_ = method_483();
            }
            _loc2_ = var_330.method_555(_loc4_,_loc5_,_loc2_);
         }
         while(method_475(COMMA));
         
         if(_loc2_ is class_157)
         {
            _loc2_ = (_loc2_ as class_157).method_582();
         }
         method_542(_loc2_,_loc3_);
      }
   }
}
