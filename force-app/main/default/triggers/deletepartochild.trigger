trigger deletepartochild on Account (before update,after insert,before insert) {
list<contact> conlist=new list<contact>();
for(account acc:trigger.old){
 contact cont =new contact();
cont.accountid=acc.id;
conlist.add(cont);
}
delete conlist;

    
}