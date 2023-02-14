public class calloutclass {
    public list<string> str{set;get;}
    public calloutclass(){
        str=new list<string>();
    }
    public void demo(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
          system.debug(response.getBody());   
      jsontoapex objvar=(jsontoapex)JSON.deserialize(response.getBody(),jsontoapex.class);
        str=objvar.animals;
    }
}