const achiev_view = () => {
  const view = document.querySelector(".icon-badge-small");
  view.addEventListener("mouseover", (event) => {
  // console.log(event);
  // console.log(event.currentTarget);
  view.innerHTML('<p>Hello</p>');
  // view.classList.add("milestone-info");
});
}

export { achiev_view };
