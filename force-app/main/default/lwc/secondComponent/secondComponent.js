import { LightningElement } from 'lwc';
import pubsubvar from 'c/pubSub';
export default class SecondComponent extends LightningElement {
    messagefromfirstcomp;
    connectedCallback(){
  this.registermethod();

    }
    registermethod(){

        pubsubvar.register('firstcompevent',this.handlemsg.bind(this));
    }
    handlemsg(msgevent){
  this.messagefromfirstcomp= JSON.stringify(msgevent.msg);

    }
}