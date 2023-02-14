import { LightningElement } from 'lwc';
import pubsubvar from 'c/pubSub';
export default class FirstComponent extends LightningElement {
    Hadleclick(e){
        pubsubvar.fire('firstcompevent',{'msg':'This is first Component'});
    }
}