import { LightningElement } from 'lwc';

export default class Lifecyclehooks extends LightningElement {
    inputvar;
    connectedCallback(){
        console.log('This is connectedcallback!');
    }
    constructor(){
        super();
        console.log('This is constructor!');
     }
    renderedCallback(){
        console.log('This is renderedcallback!');

    }
    Handlehooks(event){
        console.log('This is ButtonClicked!');
    }
    handleclick(e){
   this.inputvar=e.target.value;

    }
}