public class usernamePWDflow {
public string clientId{set;get;}
public string clientSecret{set;get;}
public String username{set;get;}
public String password{set;get;}
public string jsonResp{set;get;}
public Map<String,Object> accessTokenmap{set;get;} 
public Map<String,Object> respo{set;get;} 
public Object accToken{set;get;}
public List<Account> accrecords{set;get;}
public List<Object> result{set;get;}
    public void method1(){
        accessTokenmap= new Map<String,Object>();
 clientId = '3MVG9riCAn8HHkYW4qVL3RWInYZni2e9ouLDZUsQU.RYGWsE1nDMGhQdRn0xC._wyl1N0jQFK8OpEEWbL7ojY';
 clientSecret = 'E89C239C2B32E908992D4E0CBA7C8352232D089FF69031E95B31D0B46239F1B3';
 username='digheprakash@salesforce.com';
 password='Prakash@95'+'1hNHM1Zld90HVDw5FNrSlouq';//security token from the client org from where the data is fetched.

String reqbody = 'grant_type=password&client_id='+clientId+'&client_secret='+clientSecret+'&username='+username+'&password='+password;

Http h = new Http();
HttpRequest req = new HttpRequest();
req.setBody(reqbody);
req.setMethod('POST');
req.setEndpoint('https://login.salesforce.com/services/oauth2/token');//Note if my domain is set up use the proper domain name else use login.salesforce.com for prod or developer or test.salesforce.com for sandbox instance


HttpResponse res = h.send(req);
system.debug('::::::::::::::::'+res.getbody());

accessTokenmap=(Map<String, Object>)JSON.deserializeUntyped(res.getbody());
accToken=accessTokenmap.get('access_token');

system.debug('Access Token '+accToken);
//RequestWrapper reqst=new RequestWrapper();

//if(objAuthenticationInfo.access_token!=null){

if(accToken!=null){
 Http h1 = new Http();
  
  final PageReference urlPg= new PageReference('https://metagraph-dev-ed.my.salesforce.com/services/data/v54.0/query/');
          urlPg.getParameters().put('q','select id,name,industry,phone from Account limit 10'); 
             String uri  = urlPg.getUrl();
 
  HttpRequest req1 = new HttpRequest();
 // req1.setHeader('Authorization','Bearer '+objAuthenticationInfo.access_token);
  req1.setHeader('Authorization','Bearer '+accToken);

  req1.setHeader('Content-Type','application/json');
  req1.setHeader('accept','application/json');

  //req1.setBody(jsonstr);//Send JSON body
  req1.setMethod('GET');
  req1.setEndpoint(uri);//URL will be your Salesforce REST API end point where you will do POST,PUT,DELETE orGET
  HttpResponse res1 = h1.send(req1);
  jsonResp=res1.getBody();
      system.debug('RESPONSE_BODY::::::::::'+res1.getBody());

  
  /* respo = (Map<String, Object>)JSON.deserializeUntyped(jsonResp);
    result= (List<Object>)respo.get('records');
    for(Object obj:result){
    Map<String, Object> objmap= (Map<String, Object>)obj;
    for(string str:objmap.keyset()){
   wrap   wr= new wrap();
   wr.objvar=objmap.get(str);
    wraplst.add(wr);
    }
    system.debug('RESPONSE_BODY::::::::::'+res1.getBody());

    */
     JSONParser parser = JSON.createParser(jsonResp);
   do{

            parser.nextToken();

        }while(parser.hasCurrentToken() && !'records'.equals(parser.getCurrentName()));
        parser.nextToken();
accrecords  = (List<Account>) parser.readValueAs(List<Account>.class);

}
    }
}