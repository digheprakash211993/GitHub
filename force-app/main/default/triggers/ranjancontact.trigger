trigger ranjancontact on Contact (after insert) {
    list<Contact> demo=new list<Contact>();
    for(Contact k:[select id, name, phone from Contact where id=:trigger.new]){
        k.phone='546';
       demo.add(k);    
    }
update demo;
}