trigger deletechildrecord1 on Contact (before delete) {
set<id> sobj=new set<id>();
    for(contact cont:trigger.old){
        sobj.add(cont.id);
    }
    list<account> acc=[select id,name from account where id IN:sobj];
    delete acc;
}