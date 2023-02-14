public class successrecord {

    Public void demo(){
        Country__c data= new Country__c();
        data.name='water country';
        data.Country_MD__c='a098c00000sLort';
         insert data;
        if(data.id !=NULL){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, data.name+' '+'Message inserted successfully');
            ApexPages.addMessage(myMsg);
        }
    }
        
    public list<Country__c> getdamm(){
        
        list<Country__c> c1= [select id, name, Country_rigion__c, Phone__c, URL__c from Country__c];
        return c1;
    }
        
}