public class ObjectAmainclass {
   // public list<Object_A__c> objlist{set;get;}
    //public ObjectAmainclass(){
        
       // objlist=[select id, name from Object_A__c where Picklist__c='C'];
        
    //}
    
    public void damm(){
        Object_A__c A1= new Object_A__c();
        A1.Name='RRR';
        insert A1;
        
    }
    
}