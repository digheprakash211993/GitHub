({
	handleComponentEvent : function(cmp, event, helper) {
		var obj = event.getParam("msg");
        cmp.set("v.messageFromEvent", obj);
        alert('This is child componant');
	}
})