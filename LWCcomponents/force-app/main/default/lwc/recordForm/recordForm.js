import { LightningElement,api } from 'lwc';

import FIRSTNAME from '@salesforce/schema/Contact.FirstName';
import LASTNAME from '@salesforce/schema/Contact.LastName';
import PHONE from '@salesforce/schema/Contact.Phone';
import EMAIL from '@salesforce/schema/Contact.Email';
export default class RecordForm extends LightningElement {

    fields = [FIRSTNAME,LASTNAME,PHONE,EMAIL];

    @api recordId;
    @api objectApiName;
}