({
	method1 : function(component, event, helper) {
		alert("this java alert");
        alert("this java alert "+ event.currentTarget.name);
        alert("this java alert "+ component.get("v.str"));
        component.set("v.str","Rahane");
       
         
	},
    method2 : function(component, event, helper) {
        alert("this java alert "+ event.getSource().get("v.label"));
       
    },
    doInit: function(component, event, helper) {
        var action =component.get("c.methodinit");
        action.setCallback(this,function(resp){
            alert(resp.getReturnValue());
            component.set("v.mann",resp.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    
    method3: function(component, event, helper) {
        var action =component.get("c.callint");
        action.setCallback(this,function(resp){
            alert(resp.getReturnValue());
            component.set("v.int",resp.getReturnValue());
        });
        $A.enqueueAction(action);
    }
})