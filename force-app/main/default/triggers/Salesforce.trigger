trigger Salesforce on Account (after insert) {
list<contact>  clist=new list<contact>();
    for(account acc:trigger.new){
        contact cont= new contact();
        cont.lastname= acc.name;
        cont.accountid= acc.id;
        clist.add(cont);
    }
    insert clist;
}