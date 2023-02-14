public class picklist1 {
    public List<SelectOption> optionslst{set;get;}
    public picklist1(){
        optionslst = new List<SelectOption>();
        SelectOption option = new SelectOption('111', 'aaa');
        SelectOption option1 = new SelectOption('121', 'ada');
        
        optionslst.add(option);
        optionslst.add(option1);
        
    }

}