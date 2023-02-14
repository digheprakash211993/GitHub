public class URL {
    public list<account> str{set;get;}
    public URL()
    {
        str =[select id, name, phone,URL__c from account ];
        system.debug(str);
    }

}