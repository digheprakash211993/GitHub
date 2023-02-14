public class initclass {
//@auraenabled
    //public static string methodinit(){
       // return 'WWQ';
    //}
//@auraenabled
    // public static string callint(){
      //  return '100';
   // }
   // @auraenabled
   // public static list<string> demo(){
      //  list<string> str=new list<string>();
       // str.add('AAA');
        //str.add('BBB');
        //str.add('CCC');
        //return str;
    //}
    @auraenabled
    public static list<Country__c> methodcall(){
        list<Country__c> cobj=new list<Country__c>();
        cobj=[select id, Name, Phone__c,URL__c from Country__c limit 5];
        return cobj;
    }
    @auraenabled
    public static string parametremehod(ID ConId){
    system.debug('value from lightning component' +ConId);
     Country__c cobj1=[select id, Name, Phone__c,URL__c from Country__c where id=:ConId];
        Return cobj1.Name;
    }
    @auraenabled
    public static void delmehod(ID delId){
    
     Country__c cobj1=[select id from Country__c where id=:delId];
        delete cobj1;
       // return delId;
    }
}