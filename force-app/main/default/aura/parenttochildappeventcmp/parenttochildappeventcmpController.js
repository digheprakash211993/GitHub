({
	doInit : function(cmp, event, helper) {
		var action=cmp.get("c.demo");
        action.setCallback(this,function(resp){
            cmp.set("v.show",resp.getReturnValue());
            alert(JSON.stringify(resp.getReturnValue()));
        });
        $A.enqueueAction(action);
	},
    mymethod: function(cmp, event, helper) {
        var myevent1=$A.get("e.c:parenttochildappevent");
        myevent1.setParams({str:event.currentTarget.dataset.id});
    myevent1.fire();
    }
})