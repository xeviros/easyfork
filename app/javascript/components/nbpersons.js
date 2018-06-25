function nbPersons() {
  const box = document.getElementById("js-nbpersons")
  if (box) {
    box.addEventListener('click', () => {
      box.parentElement.classList.toggle("show");
    })
  }
}

export { nbPersons }
