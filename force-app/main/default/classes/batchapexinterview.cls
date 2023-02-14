public class batchapexinterview implements Database.Batchable<sObject>
{
    public Database.QueryLocator start(Database.BatchableContext bc) {
        
       return Database.getQueryLocator('select id,name from account');
    }
    public void execute(Database.BatchableContext bc, List<account> records){
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
request.setMethod('GET');
HttpResponse response = http.send(request);
system.debug(response.getBody());
    }
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }

}