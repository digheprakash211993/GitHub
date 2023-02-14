trigger HOTELBLACKLIST on Hotel__c (before update) {
    list<Black_list_hotelname__c> c1= new list<Black_list_hotelname__c>();
    set<string> sobj=new set<string>();
    for(Hotel__c k:trigger.new){
        sobj.add(k.name);
    }
    map<string,Black_list_hotelname__c> mobj= new map<string,Black_list_hotelname__c>();
    list<Black_list_hotelname__c> data= [select id, name, Ckeck__c, Phone__c from Black_list_hotelname__c where name=:sobj];
    for(Black_list_hotelname__c b1:data){
        mobj.put(b1.name,b1);
    }
    for(Hotel__c k1:trigger.new){
        if(mobj.containsKey(k1.name)){
            k1.adderror('Can not insert');   
        }else{
            Black_list_hotelname__c demo= new Black_list_hotelname__c();
            demo.name=k1.name;
            c1.add(demo);      
        }    
    }
    insert c1;

}