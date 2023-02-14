trigger practsharerec on Object_C__c (after update) {
     list<Object_C__share> obj1= new list<Object_C__share>();
    user uobj=[select id, name from User where Alias='rsuta' limit 1];
    for(Object_C__c k:[select id, name from Object_C__c where id=:trigger.new]){
        Object_C__share shobj= new Object_C__share();
        shobj.ParentId=k.id;
        shobj.UserOrGroupId= uobj.id;
        shobj.AccessLevel='Edit';
        obj1.add(shobj);
    }
    insert obj1;
    
    
}