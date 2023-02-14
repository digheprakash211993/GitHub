public class Normalclass {
    public list<account> accobj;
   public list<Contact> conobj;
    public list<Opportunity> oppobj;
    public void Method2(){
        accobj=[select id,name,industry from account];
        system.debug('This is normmal class '+accobj);
}
    public void Method3(){
        conobj=[select id,lastname from contact];
        system.debug('This is contact normmal class '+conobj);
}
    public void Method4(){
        oppobj=[select id,Name,CloseDate,StageName from Opportunity];
        system.debug('This is opportunity normmal class '+oppobj);
}
}