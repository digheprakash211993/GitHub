({
	handleChanged1 : function(cmp, message, helper) {
		cmp.set("v.recordNamevalue", message.getParam("recordName").value);
        cmp.set("v.recordDatavalue", message.getParam("recordData").value);
	}
})