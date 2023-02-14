import { LightningElement,wire } from 'lwc';
import myclass from '@salesforce/apex/Countryclass.demo'
export default class Country_di extends LightningElement {
    @wire(myclass) cmplist;
    getcompdetails(e){
        const mycustomevent = new CustomEvent('getEvent', { detail: {recId:e.target.dataset.id} });

        // Dispatches the event.
        this.dispatchEvent(mycustomevent);

    }
}