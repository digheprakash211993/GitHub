public class bat 
{
    public list<account> mat{set;get;}
    public bat()
    {
    mat=[select id, name, industry,phone from account];
system.debug(mat); 
        
    }
    
}