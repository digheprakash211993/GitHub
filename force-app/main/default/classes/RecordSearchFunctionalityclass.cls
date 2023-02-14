public with sharing class RecordSearchFunctionalityclass {
    @Auraenabled(cacheable=true)
   public static list<account> mydemo(string namedata){
string datasearch= '%'+namedata+'%';
list<account> acclist= new list<account>();
for(account acc:[select id,Name from account where Name like:datasearch]){
    acclist.add(acc);
}
return acclist;
   }
}