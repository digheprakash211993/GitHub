import { LightningElement } from 'lwc';

export default class CustomParentEvent extends LightningElement {
    method1(event){
console.log(event.detail);

    }
}