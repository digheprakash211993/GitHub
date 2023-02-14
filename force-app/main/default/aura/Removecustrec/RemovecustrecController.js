({
	Buttonclick : function(component, event, helper) {
		var action= component.get("c.method1");
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
            component.set("v.namerem",resp.getReturnValue());
        });
        $A.enqueueAction(action);
	},
    removebutton: function(component, event, helper) {
        alert(event.currentTarget.name);
        alert(JSON.stringify(component.get("v.namerem").splice(event.currentTarget.name,1)));
        component.set("v.namerem",component.get("v.namerem"));
    }
})