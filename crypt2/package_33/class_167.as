package package_33
{
   class class_167 extends class_147
   {
       
      
      var init:class_131;
      
      var name:String;
      
      function class_167(param1:String, param2:class_131 = null)
      {
         super();
         this.name = param1;
         this.init = param2;
      }
      
      override public function getAny() : Object
      {
         var _loc1_:Object = init == null?null:init.getAny();
         class_134.method_601(name,_loc1_);
         return _loc1_;
      }
   }
}
