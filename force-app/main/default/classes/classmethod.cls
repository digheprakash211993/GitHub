public class classmethod {
    public static void demo(list<Country__c> acc){
        for(Country__c k:acc){
            k.URL__c= 'Tata.com';
        }
        
    }
    public static void demo1(list<Country__c> acc){
        for(Country__c k:acc){
            k.URL__c= 'Tata1.com';
        }
        
    }


}