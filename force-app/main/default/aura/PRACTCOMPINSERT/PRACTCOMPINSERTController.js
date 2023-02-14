({
	Method2 : function(component, event, helper) {
		
        var action = component.get("c.method1");
        action.setParams({acc:component.get("v.objins")});
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
        });
        $A.enqueueAction(action);
	}
})