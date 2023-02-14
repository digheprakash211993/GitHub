({
	Searchengine : function(component, event, helper) {
		console.log(event.detail.value);
         var action   =component.get("c.searchmethod")
         action.setParams({conname:event.detail.value});
         action.setCallback(this,function(resp){
         //alert(JSON.stringify(resp.getReturnValue()));
             component.set("v.recordname",resp.getReturnValue());
         });
        $A.enqueueAction(action);
	}
})