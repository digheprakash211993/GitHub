public class viewstate {
    public  transient Object_B__c obj{set;get;}
    public viewstate(){
        obj= new Object_B__c();
        
    }
    public void demo(){
        
        insert obj;
    }

}