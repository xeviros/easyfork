import $ from 'jquery';
import wickedpicker from 'wickedpicker';

export default function time() {



//JS Console: 10 : 59 AM
var time  = {
 title: 'Order Time',
 upArrow: 'wickedpicker__controls__control-up',  //The up arrow class selector to use, for custom CSS
 downArrow: 'wickedpicker__controls__control-down', //The down arrow class selector to use, for custom CSS
};

 $('.timepicker').wickedpicker(time);

}


