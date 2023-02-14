public class insertrecord {
    public void data(){
        list<Error_Logs__c> xyz=new list<Error_Logs__c>();
    try{
        list<Object_C__c> clist= new list<Object_C__c>();
for(integer i=0;i<100;i++){
    Object_C__c c1=new Object_C__c();
    c1.name='pqr'+' '+i;
    clist.add(c1);
}
insert clist;
    }
    catch(exception e){
        Error_Logs__c pqr=new Error_Logs__c();
        xyz.add(pqr);
    }   
        finally{
            insert xyz;
        }
        
    }
}