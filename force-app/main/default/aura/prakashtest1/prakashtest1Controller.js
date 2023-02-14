({
	method1 : function(component, event, helper) {
      
		alert("Java alert "+event.currentTarget.name);
        alert("Java alert "+component.get("v.str"));
        component.set("v.str", "Father");
	},
    method2 : function(component, event, helper) {
        alert("Java alert "+event.getSource().get("v.label"));
    },
    doInit : function(component, event, helper) {
        var action = component.get("c.Demo");
        action.setCallback(this,function(prr){
            alert(prr.getReturnValue());
            component.set("v.str1", prr.getReturnValue());
        });
        $A.enqueueAction(action);
    }
})