const displayBurger = () => {
  const burger = document.querySelector('.nav-burger');
  const burgerLink = document.querySelector('.burger-link');

  if (burger) {
    burger.addEventListener("click", () => {
      burgerLink.classList.toggle("burger-active")
    });
  }
}

export { displayBurger };
