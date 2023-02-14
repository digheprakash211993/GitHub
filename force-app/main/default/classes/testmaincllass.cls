public class testmaincllass {
    public list<Country__c> cobj;
    public  void demo(){
        cobj= [select id, name, Phone__c, URL__c,Country_rigion__c from Country__c limit 6];
        for(Country__c crrobj:cobj){
            if(crrobj.Country_rigion__c=='N'){
                system.debug('This is N region');
            } else if(crrobj.Country_rigion__c=='S'){
                system.debug('This is S region');
            }
        }
        
        
        
        system.debug('Country record');
    }
}