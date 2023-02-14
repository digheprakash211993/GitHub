@istest
public class Datatestfactory {

    public static void data(){
    Account alist= new Account();
        alist.Name='PWI';
        alist.Industry='Banking';
         system.assertEquals(alist.Industry,'Banking');
         system.assertNotEquals(alist.Industry,'Finance');
        insert alist;
    
   Contact aclist= new Contact();
        aclist.LastName='PWI';
        insert aclist;
        
    Opportunity opplist= new Opportunity();
        opplist.Name='PWI';
        opplist.CloseDate=date.today();
        opplist.StageName='Qualification';
        insert opplist;
}
}