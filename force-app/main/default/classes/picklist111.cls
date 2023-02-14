public class picklist111 {
    public list<SelectOption> str{set;get;}
    public picklist111(){
        str = new List<SelectOption>();

       SelectOption option = new SelectOption('AAA', 'AAA');
        SelectOption option1 = new SelectOption('ABA', 'ABA');
        SelectOption option2 = new SelectOption('ASA', 'ASA');
        
         str.add(option);
        str.add(option1);
        str.add(option2);
        
    }
    
}