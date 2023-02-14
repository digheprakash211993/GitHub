import { LightningElement } from 'lwc';

export default class PractDecorator extends LightningElement {
    str;
    handleClick(event){
this.str=event.target.label;
    }
    Onchmethod(event){
        this.str=event.target.value;
            }
}