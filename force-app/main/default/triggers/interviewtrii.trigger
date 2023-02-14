trigger interviewtrii on Contact (after insert) {
list<contact> conlist=new list<contact> ();
for(contact cont:[select id,lastname,email from contact where id=:trigger.new]){
cont.lastname= cont.lastname;
conlist.add(cont);
}

}