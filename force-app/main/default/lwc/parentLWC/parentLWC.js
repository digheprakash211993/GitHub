import { LightningElement } from 'lwc';

export default class ParentLWC extends LightningElement {
    handleparent(event){
   console.log(event.detail);

    }
    
}