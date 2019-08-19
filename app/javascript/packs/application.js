import "bootstrap";
import $ from "jquery";
import autocomplete from "../components/autocomplete"
import { myFunction } from "../components/dropbox"
import { nbPersons } from "../components/nbpersons"
import time from "../components/time"
import scroll from  "../components/scroll"
import add_order_items_bill from "../components/add_order_items_bill"
import "../plugins/flatpickr"
import billconfirm from "../components/billconfirm"
import sal from 'sal.js'

myFunction();
nbPersons();
time();
billconfirm();
sal();
scroll();


$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})

