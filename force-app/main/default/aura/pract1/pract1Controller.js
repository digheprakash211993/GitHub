({
	javascript : function(component, event, helper) {
		alert("Java alert script "+ event.currentTarget.name);
	},
    doInit: function(component, event, helper){
       var action =component.get("c.demo");
        action.setCallback(this,function(prak){
            alert(prak.getReturnValue());
        });
        $A.enqueueAction(action);
    }
})