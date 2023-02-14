({
	javascriptsale : function(component, event, helper) {
		alert("Java method alert");
        alert("Java method alert "+ event.currentTarget.name);
        alert("Java method alert "+component.get("v.str"));
        component.set("v.str","Queen");
        alert(component.find("inputTagId").get("v.value"));
        console.log(component.find("inputTagId").get("v.value"));
	},
    
    javascript : function(component, event, helper) {
	
        alert("Java method alert "+ event.getSource().get("v.label"));
	},
    onInputValueChange : function(component, event, helper) {
	console.log(event.detail.value);
	},
    doinit: function(component, event, helper){
       var action =component.get("c.demo");
        action.setCallback(this,function(prak){
            alert(prak.getReturnValue());
        });
        $A.enqueueAction(action);
    }
})