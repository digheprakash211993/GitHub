import { api, LightningElement } from 'lwc';

export default class Targetcomponent_di extends LightningElement {
   finalid;
   @api get recordid(){
    return this.finalid;

   }
    set recordid(value){
    this.finalid=value;
    }
}