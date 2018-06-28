import "bootstrap";
import $ from "jquery";
import autocomplete from "../components/autocomplete"
import { myFunction } from "../components/dropbox"
import { nbPersons } from "../components/nbpersons"
import time from "../components/time"
import add_order_items_bill from "../components/add_order_items_bill"
import "../plugins/flatpickr"
import billconfirm from "../components/billconfirm"


myFunction();
nbPersons();
time();
billconfirm();


$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})

