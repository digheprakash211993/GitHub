public class msgerrorclass {
    public string str1{set;get;}
    public list<Country__c> cobj{set;get;}
    public msgerrorclass(){
        cobj=[select id,name,Phone__c from Country__c limit 5]; 
    }
    public void data(){
        cobj=[select id,name,Phone__c  from Country__c where name=:str1]; 
        if(cobj.size()>0){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.CONFIRM,'Searched Record Found');
             ApexPages.addMessage(myMsg);
        }
        else if(cobj.size()==0){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.WARNING, 'Searched No any Record Found');
             ApexPages.addMessage(myMsg);
        }
    }
}