({
	init: function (cmp, event, helper) {
        cmp.set('v.mapMarkers', [
            {
                location: {
                    Street: 'Pune',
                    City: 'New sanghvi',
                    State: 'Maharastra'
                },

                title: 'This is Pune',
                description: 'Landmark, historic home & office of India States president, with tours for visitors.'
            }
        ]);
        cmp.set('v.zoomLevel', 40);
    }
})