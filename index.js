function registerClickHandler () {
  const removeButtons = document.getElementsByClassName('remove');

  for (var i = 0; i < removeButtons.length; i++) {
    // console.log(removeButtons[i].parentNode.parentNode);
    removeButtons[i].addEventListener('click', function() {
     const parentDiv = this.parentNode;
     console.log(parentDiv);
      const parentsParent = parentDiv.parentNode;
      parentsParent.removeChild(parentDiv);
    });
  }
  console.log(removeButtons);
}

registerClickHandler();
// document.addEventListener('DOMContentLoaded',registerClickHandler);
