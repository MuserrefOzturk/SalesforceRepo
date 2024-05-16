import { LightningElement, api} from 'lwc';

export default class Hellochild extends LightningElement {

    @api titletext;
    @api footertext;
}