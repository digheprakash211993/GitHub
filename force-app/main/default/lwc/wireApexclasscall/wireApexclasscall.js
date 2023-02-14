import { LightningElement, wire } from 'lwc';
import apexvar from '@salesforce/apex/wiredclass.methodName';
export default class WireApexclasscall extends LightningElement {
    XYZ;
@wire(apexvar,{Namestr:'0038c00002niK3aAAE'})wiredvar({data,error}){
 this.XYZ=JSON.stringify(data);

}

}