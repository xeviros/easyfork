
export default function billconfirm() {

if (document.querySelector(".edit_bill")) {
  let editForms = document.querySelectorAll(".edit_bill")
  for (let i = 0; i < editForms.length; i++) {
    editForms[i].addEventListener("change", (e) => {
          editForms[i].submit();
    })
  }
}}
