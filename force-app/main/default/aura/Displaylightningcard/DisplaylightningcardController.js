({
	doInit : function(component, event, helper) {
	var action =component.get("c.demo");
        action.setCallback(this,function(resp){
           component.set("v.prak",resp.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})