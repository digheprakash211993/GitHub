({
	parrot : function(component, event, helper) {
		alert('This is java alert');
        alert('This is java alert '+event.currentTarget.name);
        alert('This is java alert '+component.get("v.atr"));
        component.set("v.atr","Kadam");
	},
    method1 : function(component, event, helper) {
        alert('This is java alert '+event.getSource().get("v.label"));
        
	},
    doinit: function(component, event, helper) {
        var action =component.get("c.demo");
        action.setCallback(this,function(ptr){
            alert(ptr.getReturnValue());
            component.set("v.prak", ptr.getReturnValue());
        });
        $A.enqueueAction(action);
        
	},
    method2: function(component, event, helper) {
        var action =component.get("c.damm");
        action.setCallback(this,function(ptr){
            alert(ptr.getReturnValue());
            component.set("v.int", ptr.getReturnValue());
        });
        $A.enqueueAction(action);
        
	},
    method3: function(component, event, helper) {
        var action =component.get("c.cmethod");
        action.setCallback(this,function(ptr){
            alert(JSON.stringify(ptr.getReturnValue()));
            component.set("v.c111", ptr.getReturnValue());
        });
        $A.enqueueAction(action);
        
	}
})