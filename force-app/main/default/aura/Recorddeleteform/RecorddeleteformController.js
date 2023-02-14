({
	handleDeleteRecord : function(component, event, helper) {
        component.find("recordHandler").deleteRecord();
        alert("Record deleted");
	}
})