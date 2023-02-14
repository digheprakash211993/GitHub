({
	handleClick : function(cmp, event, helper) {
		var action= cmp.get("c.method1");
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
            cmp.set("v.str",resp.getReturnValue());
        });
        $A.enqueueAction(action);
	},
    onClickmethod: function(cmp, event, helper) {
        //alert('This is record Id '+event.currentTarget.name);
        alert(event.target.getAttribute("data-recid"));
    }
})