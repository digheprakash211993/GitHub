public class batchclasspract implements Database.Batchable<sObject> {
public Database.QueryLocator start(Database.BatchableContext prak) {
        system.debug('This is start method');
    return Database.getQueryLocator('Select id,name from account');
    }
    public void execute(Database.BatchableContext prak, List<Account> acclist){
        system.debug('This is execute method');
        for(account acc:acclist){
            acc.phone='666';
        }
        update acclist;
    }
    public void finish(Database.BatchableContext prak){
        system.debug('This is finish method '+prak.getJobId());
         AsyncApexJob a = [Select Id, Status,ExtendedStatus,NumberOfErrors,     JobItemsProcessed,
        TotalJobItems, CreatedBy.Email
        from AsyncApexJob where Id =:prak.getJobId()];
          
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            String[] toAddresses = new String[] {a.CreatedBy.Email};
            mail.setToAddresses(toAddresses);
            mail.setSubject('Match Merge Batch ' + a.Status);
            mail.setPlainTextBody('records processed ' + a.TotalJobItems +
           'with '+ a.NumberOfErrors + ' failures.');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}