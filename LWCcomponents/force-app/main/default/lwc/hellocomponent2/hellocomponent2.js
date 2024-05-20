import { LightningElement,track} from 'lwc';

export default class Hellocomponent2 extends LightningElement {

    // like an object

@track cardtext={

    title:'Hello Component!!',
    footer:'With Sincere',
    body: 'Here is my component.'
}


handler(){
    this.cardtext.title='Button Clicked..';
    this.cardtext.footer= 'footer changed';
    this.cardtext.body='body chanced';
   }

//  OR

/*this.cardtext={
    title:'Button Clicked..',
    footer:'footer changed',
    body: 'body chanced'
} */

}
