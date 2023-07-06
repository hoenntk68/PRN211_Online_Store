const carousel = document.querySelector(".carousel");
const carouselImages = Array.from(
  document.querySelectorAll(".carousel-image")
);
const prevButton = document.querySelector(".carousel-arrow.prev");
const nextButton = document.querySelector(".carousel-arrow.next");
let currentIndex = 0;

function showImage(index) {
  carouselImages.forEach((image, i) => {
    if (i === index) {
      image.style.transform = "translateX(0)";
    } else {
      image.style.transform = "translateX(100%)";
    }
  });
}

function showNextImage() {
  currentIndex = (currentIndex + 1) % carouselImages.length;
  showImage(currentIndex);
}

function showPreviousImage() {
  currentIndex =
    (currentIndex - 1 + carouselImages.length) % carouselImages.length;
  showImage(currentIndex);
}

nextButton.addEventListener("click", showNextImage);
prevButton.addEventListener("click", showPreviousImage);