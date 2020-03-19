const loadMap = () => {

  const mapButton = document.getElementById('map_button');
  const map = document.getElementById('map');
  map.classList.toggle('display');
  mapButton.addEventListener('click', (event) => {
    event.preventDefault();
    map.classList.toggle('display');
  })
}

export { loadMap }
