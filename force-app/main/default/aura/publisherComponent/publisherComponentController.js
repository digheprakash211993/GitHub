({
	handleClick : function(cmp, event, helper) {
        var payload = {
            recordName: {value:'My name is prakash'},
            recordData: {value: "this is receord data value"}
        };

        cmp.find("sampleMessageChannel").publish(payload);
    }
})