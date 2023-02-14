({
	method2 : function(cmp, event, helper) {
		var action= cmp.get("c.demo1");
        action.setParams({contid:event.getParam("str")});
        action.setCallback(this,function(resp){
           cmp.set("v.show1",resp.getReturnValue());
            
        });
        $A.enqueueAction(action);
	}
})