const imageUploadInput = document.getElementById('images');
const imagePreviewContainer = document.querySelector('.image-preview-container');

imageUploadInput.addEventListener('change', function() {
  imagePreviewContainer.innerHTML = ''; // Clear existing previews

  // Loop through selected files and create previews
  for (let i = 0; i < this.files.length; i++) {
    const file = this.files[i];
    const reader = new FileReader();

    reader.onload = function(event) {
      const imagePreview = document.createElement('img');
      imagePreview.src = event.target.result;
      imagePreviewContainer.appendChild(imagePreview);
    };

    reader.readAsDataURL(file);
  }
});