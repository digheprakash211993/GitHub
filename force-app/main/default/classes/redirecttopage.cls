public class redirecttopage {
    public Object_B__c damm;
    public redirecttopage(apexpages.StandardController cobj){
        system.debug(cobj.getRecord());
        damm= (Object_B__c)cobj.getRecord();
    }
    public void data(){
        insert damm;
        system.debug(damm.id);
        
    }

}