import "bootstrap";
import autocomplete from "../components/autocomplete"
import { myFunction } from "../components/dropbox"

myFunction();

const triggers = document.querySelectorAll(".js-form-trigger")
for(let i = 0; i < triggers.length; i += 1) {
  triggers[i].addEventListener("click", (e) => {
    e.target.form.submit()
  })
}
