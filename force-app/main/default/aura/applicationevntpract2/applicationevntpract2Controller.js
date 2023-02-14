({
	handleApplicationEvent : function(cmp, event, helper) {
		var message = event.getParam("msg");
        alert(message);
     cmp.set("v.messageFromEvent", message);
      
	}
})