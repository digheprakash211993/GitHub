({
	handleClick : function(cmp, event, helper) {
        var jobj=123;
      //jobj.name="Prakash";
      //alert(JSON.stringify(jobj));
      alert(typeof jobj);
		var action=cmp.get('c.method1');
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
            cmp.set('v.cvar',resp.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})