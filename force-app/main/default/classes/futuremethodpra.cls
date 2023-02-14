public class futuremethodpra implements Database.Batchable<sObject>,Database.AllowsCallouts {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        
        return Database.getQueryLocator('select id,Name,Industry from Account');
    }
    public void execute(Database.BatchableContext bc, List<Account> acc){
         system.debug('this is execute method');
         Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        system.debug(response.getBodyAsBlob());
       
    }
    
    public void finish(Database.BatchableContext bc){
       system.debug('this is finish method '+bc.getJobId());
    }
}