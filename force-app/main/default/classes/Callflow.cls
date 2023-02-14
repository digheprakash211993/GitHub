public class Callflow {
    @invocablemethod
    public static void demo(list<innerclass>  linnerlist){
        for(innerclass k:linnerlist){
            system.debug('Variable name first'+k.firstName+'Variable name second'+k.Phone+'Id name'+k.Id);     
        }
        
    }
    public class innerclass {
     @invocablevariable public  string firstName;
      @invocablevariable public string Phone;
        @invocablevariable public string Id;
}
    
    
}