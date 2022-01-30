let createProfileButton = document.getElementById("create-profile-button");
let homePage = document.getElementById

function displayModal(element) {
    document.body.style.overflow = "hidden";
    element.style.display = "block";
}

createProfileButton.onclick = function() {
    let modal = document.getElementById("create-profile-page");
    displayModal(modal);
}

