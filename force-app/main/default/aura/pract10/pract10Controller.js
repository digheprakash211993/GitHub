({
	handleClick : function(cmp, event, helper) {
		alert(cmp.find("idtag").get("v.value"));
        var action=cmp.get("c.method1");
        action.setParams({cobj:cmp.find("idtag").get("v.value")});
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
        });
        $A.enqueueAction(action);
	}
})