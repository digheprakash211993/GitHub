({
	doInit : function(component, event, helper) {
        component.set("v.aclistobj",[{label:"AAA",value:"111"},
                      {label:"BBB",value:"222"},
                      {label:"CCC",value:"234"},
                      {label:"DDD",value:"133"}]);
        var action= component.get("c.strmethod");
         var jsArray=[];
        action.setCallback(this,function(resp){
            var responseArray= resp.getReturnValue();
            responseArray.forEach(function(element){
                jsArray.push({label:element,value:element});
            })
            //alert(JSON.stringify(resp.getReturnValue()));
            component.set("v.Picklist",jsArray);
        });
        $A.enqueueAction(action);
        
	},
    handleChange : function(component, event, helper) {
		alert(component.get("v.str"));
	},
     method1: function(component, event, helper) {
		alert(JSON.stringify(component.get("v.acobj")));
	}
})