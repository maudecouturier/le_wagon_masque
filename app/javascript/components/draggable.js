const onDragStart = (event) => {
  event.dataTransfer.setData("text/plain", event.target.id);
}

const onDragOver = (event) => {
  event.preventDefault();
}

const onDrop = (event) => {
  const id = event.dataTransfer.getData('text');
  const item = document.getElementById(id);
  const zone = event.target;
  zone.appendChild(item);
  event.dataTransfer.clearData();
  const btn = item.querySelector('.approved-btn');
  btn.click();
  btn.remove();
}

const initDraggable = () => {
  if (document.querySelector('.draggable-item')) {
    const items = document.querySelectorAll('.draggable-item');
    const zone = document.querySelector('.approved-zone');
    items.forEach((item) => {
      item.addEventListener("dragstart", onDragStart)
    });
    zone.addEventListener("dragover", onDragOver);
    zone.addEventListener("drop", onDrop);
  }
}

export { initDraggable };
