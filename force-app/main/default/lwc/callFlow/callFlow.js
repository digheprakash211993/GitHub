import { LightningElement } from 'lwc';

export default class CallFlow extends LightningElement {
    get inputVariables() {
        return [
            {
                name: 'displayrecordstext',
                type: 'String',
                value: 'a088c00001F09rbAAB'
            }
        ];
    }
    
    handleStatusChange(event) {
        if (event.detail.status === 'FINISHED') {
            // set behavior after a finished flow interview
        }
    }
}