public class practcallout {
    public list<string> str{set;get;}
    public void demo(){
        str=new list<string>();
            Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
    request.setMethod('GET');
    HttpResponse response = http.send(request);
        system.debug(response.getBody());
       calloutjsontoapex objvar=(calloutjsontoapex)JSON.deserialize(response.getBody(),calloutjsontoapex.class);
        str=objvar.animals;
    }
}