import { LightningElement } from 'lwc';

export default class Sourcecomponent_di extends LightningElement {
    Handleclick(e){
        const mycustomevent = new CustomEvent('itemclicked', { detail: {recId: e.target.label} });

        // Dispatches the event.
        this.dispatchEvent(mycustomevent);

    }

}