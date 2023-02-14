public class picklist {
    PUBLIC List<SelectOption> optionslst{set;get;}
    public picklist(){
        optionslst = new List<SelectOption>();
        SelectOption option = new SelectOption('AAA', 'AAA');
        SelectOption option1 = new SelectOption('ABA', 'ABA');
        SelectOption option2 = new SelectOption('BAA', 'BAA');
        optionslst.add(option);
        optionslst.add(option1);
        optionslst.add(option2);
        
    }

}