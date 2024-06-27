import { LightningElement, api} from 'lwc';

export default class Hellochild extends LightningElement {

    // --Properties--
    @api titletext;
    @api footertext;

    // We can alsa add mothods...

   @api changetitle(){

  this.titletext='method run';
  this.footertext='footer changed.';
    }

}