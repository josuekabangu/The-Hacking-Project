// Un prompt s'affiche avec la question suivante
"De quel nombre veux-tu calculer la factorielle ?"
// Utilisateur rentre un nombre (par ex 4)
// Dans la console le résultat suivant est affiché
"Le résultat est : 24"

function fact(nbr){
  var i, nbr, result = 1;
  for(i = 1; i <= nbr; i++)  
  {
      result = result * i;   
  }  
  console.log(`La factorielle de ${nbr} est ${result}`);
  return result;
}
nbr = prompt(`De quel nombre veux-tu calculer la factorielle ?`);
fact(nbr);