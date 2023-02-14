({
	handleApplicationEvent : function(component, event, helper) {
		alert('This is from comp1 '+event.getParam("msg"));
        component.set('v.str',event.getParam("msg"));
	}
})