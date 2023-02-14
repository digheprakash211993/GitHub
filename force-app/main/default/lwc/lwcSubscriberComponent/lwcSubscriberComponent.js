import { LightningElement, wire } from 'lwc';
import {
    subscribe,
    unsubscribe,
    APPLICATION_SCOPE,
    MessageContext
} from 'lightning/messageService';
import dataselected from '@salesforce/messageChannel/abcd__c';
export default class LwcSubscriberComponent extends LightningElement {
    @wire(MessageContext)msgvar;
    connectedCallback(){
        this.subscribeToMessageChannel();
    }
    subscribeToMessageChannel() {
        if (!this.subscription) {
            this.subscription = subscribe(
                this.msgvar,
                dataselected,
                (message) => this.handleMessage(message),
                { scope: APPLICATION_SCOPE }
            );
        }
    }
    handleMessage(msg){
console.log('This is subscriber '+msg.recordName+' '+msg.recordData);
    }
}