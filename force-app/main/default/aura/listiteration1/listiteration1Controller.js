({
    method4 : function(component, event, helper) {
        //var javascriptobject=[{Name:"AAA", Age:"20"},{Name:"AAb", Age:"20"},{Name:"kkk", Age:"20"}];
        //javascriptobject.Id="123";
       // javascriptobject.Name="Prakash";
        //alert(typeof javascriptobject);
        //alert(JSON.stringify(javascriptobject));--->
		var action =component.get("c.methodcall");
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
            component.set("v.Countryname",resp.getReturnValue());
        });
        $A.enqueueAction(action);
	},
    divmethod: function(component, event, helper) {
        window.location.href='/'+event.target.getAttribute("data-prak")+'/e';
        //alert('Div method called');
        //alert(event.currentTarget.name);
        /*alert(event.target.getAttribute("data-prak"));
        var action =component.get("c.parametremehod");
        action.setParams({ConId:event.target.getAttribute("data-prak")});
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
        });
        $A.enqueueAction(action);*/
    },
    handleClickview: function(component, event, helper) {
        alert('View button');
        window.location.href='/'+event.getSource().get("v.value");
        
    },
    editmethod: function(component, event, helper) {
        window.location.href='/'+event.currentTarget.name+'/e';

    },
    deletemethod: function(component, event, helper) {
        alert('Record deleted');
       var action =component.get("c.delmehod");
        action.setParams({delId:event.target.getAttribute("data-recid")});
        action.setCallback(this,function(resp){
           
          var status= resp.getState();
            if(status == 'SUCCESS'){
                alert("Country id"+event.target.getAttribute("data-recid")+ 'Has deleted');   
            }
            
        });
        $A.enqueueAction(action);

    }
    
    
})