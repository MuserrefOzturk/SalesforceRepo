import { LightningElement } from 'lwc';

export default class Helloparent extends LightningElement {
    clickhandler(){

        this.template.querySelector('c-hellochild').changetitle();
    }
}