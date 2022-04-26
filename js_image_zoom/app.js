const app = {
    init: function() {
        const magnifyingArea = document.querySelector("#magnifying_area");
        const magnifyingImg = document.querySelector("#magnifying_img");
        magnifyingArea.addEventListener("mousemove", app.moveImg);
        magnifyingArea.addEventListener("mouseleave", app.resetImg);
    },
    moveImg: function(event) {
        const magnifyingArea = document.querySelector("#magnifying_area");
        const magnifyingImg = document.querySelector("#magnifying_img");
        const coordinatesX = event.clientX - magnifyingArea.offsetLeft;
        const coordinatesY = event.clientY - magnifyingArea.offsetTop;
        const imageWidth = magnifyingArea.offsetWidth;
        const imageHeight = magnifyingArea.offsetHeight;
        const newCoordinatesX = coordinatesX / imageWidth * 100;
        const newCoordinatesY = coordinatesY / imageHeight * 100;
        console.log(newCoordinatesX);
        console.log(newCoordinatesY);
        magnifyingImg.style.transform = "translate(-" + newCoordinatesX + "%, -" + newCoordinatesY + "%) scale(2)";
    },
    resetImg: function() {
        const magnifyingImg = document.querySelector("#magnifying_img");
        magnifyingImg.style.transform = "translate(-50%, -50%) scale(1)";
    }
}

document.addEventListener('DOMContentLoaded', app.init);