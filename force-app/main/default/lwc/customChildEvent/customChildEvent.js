import { LightningElement } from 'lwc';

export default class CustomChildEvent extends LightningElement {

    handleClick(event){
        const customEvent = new CustomEvent('myvariable', { detail:event.target.label });

        // Dispatches the event.
        this.dispatchEvent(customEvent);

    }



}