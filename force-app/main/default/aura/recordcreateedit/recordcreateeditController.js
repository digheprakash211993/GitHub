({
	handleClick : function(component, event, helper) {
        var path={
            "type": "standard__webPage",
    "attributes": {
        "url": "https://google.com"
    }
        }
		component.find("navService").navigate(path);
	}
})