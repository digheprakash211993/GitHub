public class Batchapexclass implements Database.Batchable<sObject>,Database.Stateful 
{
    public Integer recordsProcessed = 0;
public Database.QueryLocator start(Database.BatchableContext prak) {
        System.debug('Inside Start method');
    Return Database.getQueryLocator('Select id,name from Account');
    }
  public void execute(Database.BatchableContext prak, List<Account>  acclist){
        System.debug('Inside Execute method '+recordsProcessed);
        for(Account acc:acclist){
            acc.name=acc.name+' '+recordsProcessed;
            acc.Phone='8888'; 
            recordsProcessed++;
        }
        update acclist;
    }
    public void finish(Database.BatchableContext prak){
        System.debug('Inside Finish method '+prak.getJobId());
        AsyncApexJob a = [Select Id, Status,ExtendedStatus,NumberOfErrors,JobItemsProcessed,
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