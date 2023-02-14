public class Tokenaccessclass {
    public string acctoken{set;get;}
    public string urlinfo{set;get;}
    public void accesstokenmethod(){
    string str='https://login.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9riCAn8HHkYW4qVL3RWInYRuoBmZxisMBjdgFa89NjeesNf20OGGwoqVZJspW9KoAOb2uR8Tc8WE1QWSM==&client_secret=900F16B0A371A76AAA9D1DCD3D4B41F54CE8A5CBE211F706B6BE799DA912A8F0&username=digheprakash@salesforce.com&password=Prakash@95f3EetQF0vYE7Uq5VBtZu65TdY';
    //string str ='https://login.salesforce.com/services/oauth2/token"grant_type=password"&"client_id=3MVG9riCAn8HHkYW4qVL3RWInYRuoBmZxisMBjdgFa89NjeesNf20OGGwoqVZJspW9KoAOb2uR8Tc8WE1QWSM""client_secret=900F16B0A371A76AAA9D1DCD3D4B41F54CE8A5CBE211F706B6BE799DA912A8F0"&"username=digheprakash@salesforce.com""password=Prakash@95f3EetQF0vYE7Uq5VBtZu65TdY"';
        Http h = new Http();
        HttpRequest req = new HttpRequest();
		req.setEndpoint(str);
        req.setMethod('POST');
		req.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        system.debug('###req### '+ req);            
        HttpResponse res = h.send(req);
        system.debug('###res### '+ res);
        
        string response = res.getBody();
        system.debug('response'+ response);//access_token instance_url
    
Map<String,Object> m=(Map<String, Object>)JSON.deserializeUntyped(response);

acctoken =  (string)m.get('access_token');
System.debug('access token '+acctoken); 
        urlinfo=(string)m.get('instance_url');
    system.debug('url info '+urlinfo); 
  
    }
}