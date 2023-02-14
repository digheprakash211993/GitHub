@RestResource(urlMapping='/Accountcallout/*')
global class searchcallout {
@HttpGet
global static Account getRecord(){
      RestRequest req = RestContext.request;
    string phone =req.Params.get('Phone');
    string industry =req.Params.get('Industry');
    Account acc=[select id,name,Phone, Industry from Account where Phone=:phone AND Industry=:industry limit 1];
    return acc;
}
}