trigger pract32 on Object_B__c (after update) {
list<Object_B__Share> slist= new list<Object_B__Share>();
  user uobj= [select id,name from user where alias='rsuta' limit 1];
    for(Object_B__c Aobj:[select id,name from Object_B__c where id=:trigger.new]){
        Object_B__Share jobShr  = new Object_B__Share();
        jobShr.ParentId = Aobj.id;
        jobShr.UserOrGroupId = uobj.id;
        jobShr.AccessLevel = 'Edit';
        slist.add(jobShr);
    }
    insert slist;
}