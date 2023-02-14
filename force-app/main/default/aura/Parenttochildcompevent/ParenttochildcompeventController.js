({
	handleComponentEvent : function(component, event, helper) {
        var action = component.get("c.demo");
        action.setParams({hotelname:event.getParams("msg")});
        action.setCallback(this,function(resp){
              component.set("v.hottname",resp.getReturnValue());            
                           });
        
		$A.enqueueAction(action);
	}
})