trigger sharingrec on Object_A__c (after update) {
    user usobj= [select id from user where Alias='aanwa' limit 1];
    list<Object_A__share> c1= new list<Object_A__share>();
    for(Object_A__c k:[select id, name from Object_A__c where id=:trigger.new]){
        Object_A__share obshare= new Object_A__share();
         obshare.ParentId=k.id;
        obshare.UserOrGroupId= usobj.id;
         obshare.AccessLevel='edit';
        c1.add(obshare);
   }
    insert c1;
}