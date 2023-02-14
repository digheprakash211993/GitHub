import { LightningElement,wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import dataselected from '@salesforce/messageChannel/abcd__c';

export default class LwcPublisherComponent extends LightningElement {
    @wire(MessageContext)msgcont;
    handleClick(e){
        publish(this.msgcont,dataselected,{recordName:'this is publish',recordData:'this is record'});
    }
}