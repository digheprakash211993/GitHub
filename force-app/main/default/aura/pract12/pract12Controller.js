({
	handleClick : function(cmp, event, helper) {
         //alert(cmp.find('idtag').get('v.value'));
        var jsobj={};
        jsobj.Name='JSrecord1';
        jsobj.Email_Id__c='prak@gmail.com'
		var action=cmp.get("c.method1");
        //alert(JSON.stringify(jsobj));
        action.setParams({acc:jsobj});
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
        });
        $A.enqueueAction(action);
	}
})