function myFunction() {
  const box = document.getElementById("js-trigger")
  if (box) {
    box.addEventListener('click', () => {
      box.parentElement.classList.toggle("show");
    })
  }
}

export { myFunction }
