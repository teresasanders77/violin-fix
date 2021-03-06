/*set own values*/
const CARD_PEN_OFFSET = 10, //displacement of the cards
    CARD_SWITCH_RANGE = "130%";

const CARD_ARRAY = [...document.querySelectorAll('div[class*="card"]')];
/* Do not change this */
const COUNT_OF_CARDS = CARD_ARRAY.length;
let last_element = CARD_ARRAY[CARD_ARRAY.length - 1];
let isMoving = false;

let offsetArray = [],
    offset = 0,
    l = CARD_ARRAY.length;
for (let i = 1; i <= l; i++) {
    offsetArray.push(offset);
    offset += CARD_PEN_OFFSET;
}

setCardOffset();
function setCardOffset() {
    CARD_ARRAY.forEach(function (item, index) {
        item.style.zIndex = Math.abs(index - COUNT_OF_CARDS);
        item.style.transform = `translate(${offsetArray[index]}px, ${offsetArray[index]}px)`;
    });
}

/******************************************************************/
window.addEventListener("keydown", function (e) {
    cardSwitching(e);
});

function cardSwitching(e) {
    let animationObject = {},
        previousSibling,
        scrolling = "";

    var clickIcon = e.path[0];

    /* return when you scroll during the animation of a card */
    if (isMoving) return;

    if (e.keyCode !== 38 && e.keyCode !== 40 && e.keyCode !== undefined) return;

    for (let index of CARD_ARRAY) {
        if (
            parseInt(window.getComputedStyle(index).zIndex) === CARD_ARRAY.length ||
            parseInt(index.style.zIndex) === CARD_ARRAY.length
        ) {
            /*switch the rearmost card */
            if (e.keyCode === 38 || clickIcon.classList.contains("fa-arrow-alt-circle-up")) {
                //deltaY < 0 -> scrolling up
                previousSibling = index.previousElementSibling;
                if (previousSibling === null) previousSibling = last_element;
            }

            animationObject =
                e.keyCode === 38 || clickIcon.classList.contains("fa-arrow-alt-circle-up")
                    ? previousSibling
                    : e.deltaY > 0 || e.keyCode === 40 || clickIcon.classList.contains("fa-arrow-alt-circle-down")
                    ? index
                    : "";
            animationObject.style.transform = `translate(0px, -${CARD_SWITCH_RANGE})`;
            scrolling =
                e.keyCode === 38 || clickIcon.classList.contains("fa-arrow-alt-circle-up")
                    ? "up"
                    : e.keyCode === 40 || clickIcon.classList.contains("fa-arrow-alt-circle-down")
                    ? "down"
                    : "";
            isMoving = true;
        }
    }

    if (animationObject !== undefined) {
        animationObject.addEventListener(
            "transitionend",
            function () {
                if (scrolling === "down") {
                    animationObject.style.zIndex = 0;
                    animationObject.style.transform = `translate(${offsetArray[COUNT_OF_CARDS]}px, ${offsetArray[COUNT_OF_CARDS]}px)`;
                    offsetSwitch(scrolling);
                } else if (scrolling === "up") {
                    offsetSwitch(scrolling);
                    animationObject.style.zIndex = COUNT_OF_CARDS;
                    animationObject.style.transform = `translate(0px, 0px)`;
                }
                scrolling = "";
            },
            { once: true }
        );
    }
}

function offsetSwitch(scrolling) {
    for (let index of CARD_ARRAY) {
        index.style.zIndex = scrolling === "down" ? parseInt(index.style.zIndex) + 1 : parseInt(index.style.zIndex) - 1;
        let offsetIndex = Math.abs(parseInt(index.style.zIndex) - COUNT_OF_CARDS);
        index.style.transform = `translate(${offsetArray[offsetIndex]}px, ${offsetArray[offsetIndex]}px)`;

        index.addEventListener("transitionend", () => (isMoving = false), { once: true });
    }
}

function panelDisplay(e) {
    var target = e.target;
    var parent = target.parentNode;
    var id = parent.getAttribute("href");

    var panels = document.querySelectorAll(".panel");
    if (target.className != "row-2_title") {
        for (var i = 0; i < panels.length; i++) {
            panels[i].style.display = "none";
        }
    }

    var matchingId = document.querySelector(id);
    if (matchingId != null) {
        matchingId.style.display = "block";
    }
}

window.onload = function addStyles() {
    var cardStackPrevious = document.querySelectorAll(".previous");
    for (var i = 0; i < cardStackPrevious.length; i++) {
        // PREVIOUS CARD TEXT AND FUNCTIONALITY
        var prevIcon = document.createElement("div");
        prevIcon.innerHTML = '<i class="far fa-arrow-alt-circle-up"></i>';
        cardStackPrevious[i].appendChild(prevIcon);

        var prevText = document.createElement("h6");
        prevText.innerHTML = "Previous Card";
        prevText.classList.add("previous-card-text");
        cardStackPrevious[i].appendChild(prevText);

        cardStackPrevious[i].addEventListener("click", function (e) {
            cardSwitching(e);
        });
    }

    var cardStackNext = document.querySelectorAll(".next");
    for (var x = 0; x < cardStackNext.length; x++) {
        // NEXT CARD TEXT AND FUNCTIONALITY
        var nextText = document.createElement("h6");
        nextText.innerHTML = "Next Card";
        nextText.classList.add("next-card-text");
        cardStackNext[x].appendChild(nextText);

        var nextIcon = document.createElement("div");
        nextIcon.innerHTML = '<i class="far fa-arrow-alt-circle-down"></i>';
        cardStackNext[x].appendChild(nextIcon);

        cardStackNext[x].addEventListener("click", function (e) {
            cardSwitching(e);
        });
    }
    var cards = document.querySelectorAll(".card");
    for (var j = 0; j < cards.length; j++) {
        var link = cards[j].querySelector("a");
    }
    link.onclick = addEventListener(
        "click",
        function (e) {
            var target = e.target;
            if (target instanceof HTMLAnchorElement || target.parentElement instanceof HTMLAnchorElement) {
                panelDisplay(e);
            }
            backButton(e);
        },
        true
    );

    function backButton(e) {
        var panels = document.querySelectorAll(".main");
        for (var m = 0; m < panels.length; m++) {
            if (panels[m].querySelector("#button") == null) {
                var backToTop = document.createElement("a");
                backToTop.innerHTML = "BACK TO SEASON";
                backToTop.setAttribute("id", "button");
                backToTop.setAttribute("href", "#top-of-page");
                panels[m].appendChild(backToTop);
                var button2 = panels[m].querySelectorAll("#button_2");
                if (button2.length == 0) {
                    backToTop.classList.add("single-button");
                }
            }
        }
        var row3 = document.querySelectorAll("ul");
        for (var x = 0; x < row3.length; x++) {
            if (row3[x].classList.contains("row-3")) {
                if (row3[x].querySelector("#button_2") == null) {
                    var backToLastDiv = document.createElement("a");
                    backToLastDiv.innerHTML = e.target.innerHTML;
                    backToLastDiv.setAttribute("id", "button_2");
                    var backToTitle = document.querySelectorAll("h1");
                    var matchingTitle;
                    for (var q = 0; q < backToTitle.length; q++) {
                        if (backToTitle[q].innerHTML == e.target.innerHTML) {
                            matchingTitle = backToTitle[q];
                            var stringCombined = matchingTitle.innerHTML.split(" ").join("");
                            matchingTitle.setAttribute("id", stringCombined);
                            // var newMatchingTitle = "#" + stringCombined;
                            // backToLastDiv.setAttribute("href", newMatchingTitle);
                        }
                    }
                    row3[x].appendChild(backToLastDiv);
                    var classToggle = row3[x].nextElementSibling;
                    classToggle.classList.remove("single-button");
                    backToLastDiv.onclick = () => {
                        console.log(backToLastDiv);
                        var toggleDiv = backToLastDiv.id;
                        var main = document.querySelectorAll(".main");
                        for (h = 0; h < main.length; h++) {
                            var findDiv = main[h].querySelector(toggleDiv);
                            if (findDiv != null) {
                                console.log(findDiv);
                                // findDiv.scrollIntoView();
                                var divParent = findDiv.parentElement.parentElement;
                                divParent.style.display = "block";
                            }
                        }
                    };
                }
            }
        }
    }

    var row2Cards = document.querySelectorAll(".row-2_item");
    for (var k = 0; k < row2Cards.length; k++) {
        row2Cards[k].addEventListener("click", function (e) {
            panelDisplay(e);
        });
    }
};
