@RestResource(urlMapping='/APIURLPATH/*')
global class Inboundclass {
@HttpGet
    global static Country__c getRecord() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String AccId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
       Country__c cobbj=[select id,name,URL__c from Country__c where id=:AccId];
        return cobbj;
    }
}