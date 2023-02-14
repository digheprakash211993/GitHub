({
    Method5: function(component, event, helper) {
       
        var action= component.get("c.method3");
        action.setParams({acc:component.get("v.Conobj")});
        action.setCallback(this,function(resp){
            
            alert(JSON.stringify(resp.getReturnValue()));
        });
        
        $A.enqueueAction(action);
	}
})