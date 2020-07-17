

// On définit le nombre d'espaces avant la dièse en enlevant 1 au nbrSharp
// (pour laisser place à la dièse)
function pyramid(nbrSharp){
    let nb_spaces = nbrSharp - 1
    for (number = 1; number <= nbrSharp; number++) {
        // En JS, repeat permet de répéter le string le nombre de fois voulu
        console.log(" ".repeat(nb_spaces) + "#".repeat(number));
        // On réduit le nombre d'espaces de 1 à chaque passage de boucle.
        nb_spaces--
    }
}

// On demande à l'utilsateur de rentrer le nombre d'étages qu'il veut
let nbrSharp = prompt("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?");
pyramid(nbrSharp);
