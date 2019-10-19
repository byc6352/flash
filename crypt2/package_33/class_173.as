package package_33
{
   class class_173 extends class_147
   {
       
      
      var var_464:class_131;
      
      var name:class_131;
      
      function class_173(param1:class_131, param2:class_131)
      {
         super();
         this.var_464 = param1;
         this.name = param2;
      }
      
      override public function getAny() : Object
      {
         return new QName(var_464.getAny() as Namespace,name.method_478());
      }
   }
}
