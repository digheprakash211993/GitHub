({
	handleApplicationEvent : function(component, event, helper) {
        var action= component.get("c.method2");
        action.setParams({oppid:event.getParam("msg")});
        action.setCallback(this,function(resp){
           component.set("v.oppshow",resp.getReturnValue());
            
        });
        $A.enqueueAction(action);
	}
})