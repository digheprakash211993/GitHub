({
	doInit : function(component, event, helper) {
		var action=component.get("c.method1");
        action.setCallback(this,function(resp){
            component.set("v.str",resp.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})