public without sharing class withoutsharing {          
        publiC void methodA (){
           withoutsharing1 Wobj= new withoutsharing1();
        }
    
       
    public witH sharing class withoutsharing1{
        
        public list<Object_C__c> cobj{set;get;}
        publiC void methodB (){
        cobj= [select id , name,Object_B__c from Object_C__c ];
        }
            
        }
}