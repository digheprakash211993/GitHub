public class Wrapperclass1 {
    Public list<innnerclass> wobj{set;get;}
        public Wrapperclass1(){
            wobj=new list<innnerclass>();
    Country__c clist=[select id,name from Country__c limit 1];
    States__c slist=[select id,name from States__c limit 1];
    innnerclass innerobj= new innnerclass(clist,slist);
    wobj.add(innerobj);
        }
    public class innnerclass {
        public Country__c cobj{set;get;}
        public States__c sobj{set;get;}
        public innnerclass(Country__c cobj,States__c sobj ){
            this.cobj=cobj;
            this.sobj=sobj;
        }
   
}
    
   
}