({
	Method5: function(component, event, helper) {
        var Conobj={};
        Conobj.Name='tom55';
        alert(JSON.stringify(Conobj));
        var action= component.get("c.method3");
        action.setParams({acc:Conobj});
        action.setCallback(this,function(resp){
            
            alert(JSON.stringify(resp.getReturnValue()));
        });
        
        $A.enqueueAction(action);
	}
})