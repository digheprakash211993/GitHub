import { LightningElement,api } from 'lwc';


export default class ChildLWC extends LightningElement {
 @api childvar;
    Handleclick(event){
        const Customevent = new CustomEvent('passtochild', { detail: event.target.label });

        // Dispatches the event.
        this.dispatchEvent(Customevent);

    }

    
}