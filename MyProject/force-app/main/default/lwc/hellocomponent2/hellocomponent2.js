import { LightningElement } from 'lwc';

export default class Hellocomponent2 extends LightningElement {

titletext='Hello Component!!';
footertext='With Sincere';

handler(){
    this.titletext='Button Clicked..';
   }
}
