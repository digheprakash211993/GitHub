@RestResource(urlMapping='/Accountmap/*')
global class practinbound {
@HttpGet
    global static Account getRecord() {
       RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String accId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
        account acc=[select id,name from account where id=:accId];
        return acc;
    }
}