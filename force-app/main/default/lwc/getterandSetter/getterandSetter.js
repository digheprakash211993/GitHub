import { LightningElement } from 'lwc';

export default class GetterandSetter extends LightningElement {
    finalvar;
  get inputvar(){
return this.finalvar;
  }
  set inputvar(value){
       this.finalvar =value;
  }
    Handleclick(e){
  this.inputvar= e.target.value;

    }
}