public class Wrapper {
    public string firstname{set;get;}
    public string lastname{set;get;}
    public integer age{set;get;}
    
    public Wrapper(string firstname, string lastname, integer age){
        this.firstname=firstname;
        this.lastname=lastname;
        this.age=age;
    }
}