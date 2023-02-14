public class futuremethodclass {
@future
    public static void myFutureMethod()
    {   
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        system.debug(response.getBody());
         
    }
}