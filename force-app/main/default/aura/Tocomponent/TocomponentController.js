({
	doInit : function(component, event, helper) {
		alert('This is second comp'+component.get("v.pageReference").state.c__Firstname);
        component.set("v.str",component.get("v.pageReference").state.c__Firstname);
	}
})