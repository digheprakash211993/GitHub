public class Futureclass {
@future(callout=true)
    public static void myFutureMethod()
    {   
         HttpRequest request = new HttpRequest();
request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
request.setMethod('GET');
Http http = new Http();
HttpResponse response = http.send(request);
system.debug(response.getBody());
    }
}