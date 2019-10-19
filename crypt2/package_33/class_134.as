package package_33
{
   import flash.utils.describeType;
   import package_31.D;
   
   public class class_134
   {
      
      public static var var_321:Function = trace;
      
      private static var var_383:int = D.const_45;
      
      private static var var_382:Array = [];
      
      private static const const_101:Object = {
         "decodeURI":decodeURI,
         "decodeURIComponent":decodeURIComponent,
         "encodeURI":encodeURI,
         "encodeURIComponent":encodeURIComponent,
         "escape":escape,
         "isFinite":isFinite,
         "isNaN":isNaN,
         "isXMLName":isXMLName,
         "parseFloat":parseFloat,
         "parseInt":parseInt,
         "trace":trace,
         "unescape":unescape,
         "printf":printf,
         "importFunction":importFunction,
         "importStaticMethods":importStaticMethods,
         "Array":Array,
         "Boolean":Boolean,
         "int":int,
         "Number":Number,
         "Object":Object,
         "String":String,
         "uint":uint,
         "XML":XML,
         "XMLList":XMLList,
         "Date":Date,
         "Math":Math,
         "RegExp":RegExp,
         "QName":QName,
         "Namespace":Namespace,
         "Error":Error,
         "Class":Class
      };
      
      public static var var_378:Number = 100000;
      
      private static const const_102:Object = {
         "msg.no.paren.parms":"missing ( before function parameters.",
         "msg.misplaced.case":"misplaced case",
         "msg.no.colon.prop":"missing : in object property definition",
         "msg.no.brace.switch":"missing { in switch",
         "msg.bad.continue":"incorrect use of continue",
         "msg.illegal.character":"illegal character",
         "msg.reserved.id":"identifier is a reserved word",
         "msg.bad.break.continue":"incorrect use of break or continue",
         "msg.unreachable.code":"unreachable code",
         "msg.bad.prop":"invalid property id",
         "msg.no.name.after.dot":"missing name after . operator",
         "msg.no.paren":"missing ) in parenthetical",
         "msg.misplaced.right.brace":"misplaced }",
         "msg.unreachable.stmts.in.switch":"unreachable code in switch statement",
         "msg.XML.bad.form":"illegally formed XML syntax",
         "msg.dup.label":"duplicatet label",
         "msg.no.semi.stmt":"missing ; before statement",
         "msg.class.not.supported":"class not supported",
         "msg.no.colon.cond":"missing : in conditional expression",
         "msg.bad.number.base":"incorrect number base",
         "msg.missing.exponent":"missing exponent",
         "msg.case.no.colon":"missing : after case expression",
         "msg.no.name.after.xmlAttr":"missing name after .@",
         "msg.no.brace.prop":"missing } after property list",
         "msg.unterminated.re.lit":"unterminated regular expression literal",
         "msg.invalid.escape":"invalid Unicode escape sequence",
         "msg.unterminated.comment":"unterminated comment",
         "msg.invalid.re.flag":"invalid flag after regular expression",
         "msg.caught.nfe":"number format error",
         "msg.not.assignable":"not assignable",
         "msg.unexpected.eof":"Unexpected end of file",
         "msg.no.brace.body":"missing \'{\' before function body",
         "msg.undef.label":"undefined labe",
         "msg.function.expr.not.supported":"function expression is not supported",
         "msg.missing.function.name":"missing function name",
         "msg.syntax":"syntax error",
         "msg.unterminated.string.lit":"unterminated string literal",
         "msg.no.bracket.arg":"missing ] after element list",
         "msg.bad.namespace":"not a valid default namespace statement. Syntax is: default xml namespace : EXPRESSION;",
         "msg.no.bracket.index":"missing ] in index expression",
         "msg.no.name.after.coloncolon":"missing name after ::",
         "msg.no.paren.for":"missing ( after for",
         "msg.no.paren.after.parms":"missing ) after formal parameters"
      };
      
      private static var var_384:class_134;
       
      
      private var var_391:Object;
      
      private var var_385:Array;
      
      private var var_41:Object;
      
      private var var_390:Object;
      
      private var var_389:Object;
      
      private var var_21:Object;
      
      public function class_134(param1:Object, param2:Object)
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:String = null;
         super();
         this.var_389 = param1;
         this.var_41 = param2;
         this.var_385 = [param2];
         var_390 = {};
         var_391 = {};
         if(param1)
         {
            this.var_385.push(param1);
            if(param1.prototype != null)
            {
               this.var_385.push(param1.prototype);
            }
            _loc3_ = describeType(param1);
            for each(_loc4_ in _loc3_.accessor)
            {
               _loc5_ = _loc4_.@access;
               if(_loc5_ == "readwrite")
               {
                  true;
                  var_391[_loc4_.@name] = true;
                  var_390[_loc4_.@name] = true;
               }
               else if(_loc5_ == "readonly")
               {
                  var_391[_loc4_.@name] = true;
               }
               else if(_loc5_ == "writeonly")
               {
                  var_390[_loc4_.@name] = true;
               }
            }
         }
         else
         {
            var_390 = var_391;
         }
         this.var_385.push(const_101);
      }
      
      public static function method_129(param1:String) : Class
      {
         var _loc2_:* = const_101[param1];
         if(_loc2_ == null)
         {
            return null;
         }
         if(_loc2_ is Class)
         {
            return _loc2_ as Class;
         }
         if(_loc2_ is Array)
         {
            _loc2_ = (_loc2_ as Array)[0];
            if(_loc2_ is Class)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function method_593(param1:*) : Object
      {
         return var_384.method_593(param1);
      }
      
      public static function method_594() : Boolean
      {
         var _loc1_:* = var_384.var_385[0];
         return _loc1_ is XML || _loc1_ is XMLList;
      }
      
      public static function method_595(... rest) : void
      {
         var_321("[D:warn ] " + method_529.apply(null,rest));
      }
      
      public static function method_452(param1:String) : void
      {
         var_321(param1);
      }
      
      public static function run(param1:class_133, param2:Object = null, param3:Object = null) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function method_458(param1:Class, param2:String = null) : void
      {
         if(param2 == null)
         {
            param2 = describeType(param1).@name;
         }
         var _loc3_:Array = param2.split(/\./g);
         param2 = _loc3_[_loc3_.length - 1];
         method_599(param2,param1);
      }
      
      public static function method_600() : Object
      {
         return var_384.var_389;
      }
      
      public static function method_601(param1:*, param2:Object) : void
      {
         var_384.method_601(param1,param2);
      }
      
      public static function printf(... rest) : void
      {
         method_452(method_602.apply(null,rest));
      }
      
      private static function method_598() : void
      {
         var_382.pop();
         if(var_382.length > 0)
         {
            var_384 = var_382[var_382.length - 1];
         }
         else
         {
            var_384 = null;
         }
      }
      
      public static function importFunction(param1:String, param2:Function) : void
      {
         method_599(param1,param2);
      }
      
      public static function method_584(param1:Object) : void
      {
         var_384.method_597 = param1;
      }
      
      public static function method_529(... rest) : String
      {
         if(rest.length > 0)
         {
            rest[0] = method_603(rest[0]);
         }
         return method_602.apply(null,rest);
      }
      
      public static function method_460(param1:int) : void
      {
         var_383 = param1;
      }
      
      private static function method_599(param1:String, param2:*) : void
      {
         if(var_383 != D.const_45)
         {
            if(const_101[param1])
            {
               switch(var_383)
               {
                  case D.const_46:
                     method_595("msg.override.global.name",param1);
                     break;
                  case D.const_47:
                     throw new class_158("msg.override.global.name",param1);
               }
            }
         }
         const_101[param1] = param2;
      }
      
      public static function method_585() : Object
      {
         return var_384.method_597;
      }
      
      public static function method_602(... rest) : String
      {
         switch(rest.length)
         {
            case 0:
               return "";
            case 1:
               return String(rest[0]);
            default:
               return class_160.substitute.apply(null,rest);
         }
      }
      
      public static function method_586() : *
      {
         return var_384.method_586();
      }
      
      private static function method_603(param1:String) : String
      {
         var _loc2_:String = const_102[param1] as String;
         return _loc2_ == null?param1:_loc2_;
      }
      
      private static function method_596(param1:class_134) : void
      {
         var_382.push(var_384 = param1);
      }
      
      public static function method_480(... rest) : void
      {
         var_321("[D:error] " + method_529.apply(null,rest));
      }
      
      public static function method_604(... rest) : void
      {
         var_321("[D:debug] " + method_529.apply(null,rest));
      }
      
      public static function method_583(param1:*) : void
      {
         var_384.method_583(param1);
      }
      
      public static function method_605() : *
      {
         return var_384.var_385[0];
      }
      
      public static function importStaticMethods(param1:Class, param2:* = null) : void
      {
         var _loc4_:XML = null;
         var _loc5_:String = null;
         var _loc3_:XML = describeType(param1);
         for each(_loc4_ in _loc3_.method)
         {
            _loc5_ = _loc4_.@name;
            if(param2)
            {
               if(param2 is RegExp)
               {
                  if(!_loc5_.match(param2 as RegExp))
                  {
                     _loc5_ = null;
                  }
               }
               else if(param2 is Array)
               {
                  if((param2 as Array).indexOf(_loc5_) < 0)
                  {
                     _loc5_ = null;
                  }
               }
               else if(_loc5_ != param2)
               {
                  _loc5_ = null;
               }
            }
            if(_loc5_)
            {
               importFunction(_loc5_,param1[_loc5_]);
            }
         }
      }
      
      function set method_597(param1:Object) : void
      {
         var_21 = param1;
      }
      
      function get method_597() : Object
      {
         return var_21;
      }
      
      function method_593(param1:*) : Object
      {
         var _loc2_:* = undefined;
         for each(_loc2_ in var_385)
         {
            if(_loc2_.hasOwnProperty(param1))
            {
               return _loc2_[param1];
            }
         }
         if(var_389 != null && var_391[param1])
         {
            return var_389[param1];
         }
         return null;
      }
      
      function method_586() : *
      {
         return var_385.shift();
      }
      
      function method_601(param1:*, param2:*) : void
      {
         var _loc3_:* = undefined;
         for each(_loc3_ in var_385)
         {
            if(_loc3_.hasOwnProperty(param1))
            {
               _loc3_[param1] = param2;
               return;
            }
         }
         if(var_389 != null && var_390[param1])
         {
            var_389[param1] = param2;
         }
         else
         {
            var_41[param1] = param2;
         }
      }
      
      function method_583(param1:*) : void
      {
         var_385.unshift(param1);
      }
   }
}
