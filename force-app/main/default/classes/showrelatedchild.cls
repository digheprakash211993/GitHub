public class showrelatedchild {
    
    public void demo(){
        Map<string,List<Contact>> myMap = new Map<string,List<Contact>>();
    for(Account a:[SELECT id,name,(SELECT Id,lastname FROM Contacts)FROM Account limit 5]){
        myMap.put(a.name,a.Contacts);
        system.debug('Related child record '+myMap);
    }
    }
}