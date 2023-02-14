({
	subscribe : function(component, event, helper) {
		const empApi = component.find('empApi');
        const channel = component.find('channel').get('v.value'); 
        const replayId = -1;
         empApi.subscribe(channel, replayId, $A.getCallback(eventReceived => {
            // Process event (this is called each time we receive an event)
            console.log('Received event ', JSON.stringify(eventReceived));
             
             var toastEvent = $A.get("e.force:showToast");
           toastEvent.setParams({
        "title": "Success!",
        "message": JSON.stringify(eventReceived)
    });
    toastEvent.fire();
        }))
        .then(subscription => {
            // Subscription response received.
            // We haven't received an event yet.
            console.log('Subscription request sent to: ', subscription.channel);
            // Save subscription to unsubscribe later
            component.set('v.subscription', subscription);
        });
	}  
})