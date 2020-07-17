/*-----Fonctionnalité 1----------*/
/*-----Fonctionnalité 1-bis------*/



const footer = document.querySelector("footer");
let counter = 0;
function footerEvent() {
    console.log("Click!");
	counter++;
	console.log(`You clicked ${counter} times.`)
};
footer.addEventListener("click", footerEvent);


/*------Fonctionnalité 2------*/

	let navbarButton = document.getElementsByClassName("navbar-toggler")[0];
	let navbarHeader = document.getElementById("navbarHeader");
	function navbarEvent() {
		navbarHeader.classList.toggle("collapse");
};
navbarButton.addEventListener("click", navbarEvent);

/*------Functionality 3--------*/

const card = document.getElementsByClassName("card")[0];
let cardButton = card.querySelectorAll(".btn-outline-secondary")[0];
let carText = card.querySelectorAll("p.card-text")[0];

function changeColor() {
    carText.style.color = "red";
}
cardButton.addEventListener("click", changeColor);

/*------Functionality 4--------*/

let card2 = document.getElementsByClassName("card")[1];
let cardButton2 = card2.querySelectorAll(".btn-outline-secondary")[0];
let cardText2 = card2.querySelectorAll("p.card-text")[0];

function greenColor() {
    if (cardText2.style.color === "green"){
        cardText2.style.color = "";
    }else {
        cardText2.style.color = "green";
    };
};
cardButton2.addEventListener("click", greenColor);

/*------Functionality 5--------*/

let navbar = document.getElementsByClassName("navbar")[0];

function nuclearNavbar() {
    let stylesheet = document.getElementsByTagName("link")[0];
    if (stylesheet.disabled === false) {
        stylesheet.disabled = true;
    } else {
        stylesheet.disabled = false;
    };
};
navbar.addEventListener("dblclick", nuclearNavbar);

/*------Functionality 6--------*/

function functionality6() {
	let allCards = document.querySelectorAll(".card");

	allCards.forEach(card => {

		let thisCardViewButton = card.getElementsByClassName("btn-success")[0];
		let thisCardText = card.querySelectorAll("p.card-text")[0];
		let thisCardTextContent = card.querySelectorAll("p.card-text")[0].textContent;
		let thisCardImage = card.getElementsByTagName("img")[0];

		function reduceCard() {
            if (thisCardText.textContent !== "") {
				thisCardText.textContent = "";
				thisCardImage.style.width = "20%";
				thisCardImage.style.height = "auto";		
		} else {
			thisCardText.textContent = thisCardTextContent;
			thisCardImage.style.width = "";
			thisCardImage.style.height = "";
		}
	};
			thisCardViewButton.addEventListener("mouseover", reduceCard);
		});
};

function perform() {
	functionality6();	
};

perform();