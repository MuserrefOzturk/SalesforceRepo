import { LightningElement,wire } from 'lwc';

import mc from '@salesforce/messageChannel/mc__c';
import { publish, MessageContext } from 'lightning/messageService';

export default class MessagePublisher extends LightningElement {


datatopublish='Hello My Subscribers';

@wire(MessageContext)
messageContext;

publismessage(event){

event.preventDefault();

const payload = { recordId: this.datatopublish };

publish(this.messageContext, mc, payload);
}
}