// EXERICE 4

// L'array de base :
const entrepreneurs = [
    { first: 'Steve', last: 'Jobs', year: 1955 },
    { first: 'Oprah', last: 'Winfrey', year: 1954 },
    { first: 'Bill', last: 'Gates', year: 1955 },
    { first: 'Sheryl', last: 'Sandberg', year: 1969 },
    { first: 'Mark', last: 'Zuckerberg', year: 1984 },
    { first: 'Beyonce', last: 'Knowles', year: 1981 },
    { first: 'Jeff', last: 'Bezos', year: 1964 },
    { first: 'Diane', last: 'Hendricks', year: 1947 },
    { first: 'Elon', last: 'Musk', year: 1971 },
    { first: 'Marissa', last: 'Mayer', year: 1975 },
    { first: 'Walt', last: 'Disney', year: 1901 },
    { first: 'Larry', last: 'Page', year: 1973 },
    { first: 'Jack', last: 'Dorsey', year: 1976 },
    { first: 'Evan', last: 'Spiegel', year: 1990 },
    { first: 'Brian', last: 'Chesky', year: 1981 },
    { first: 'Travis', last: 'Kalanick', year: 1976 },
    { first: 'Marc', last: 'Andreessen', year: 1971 },
    { first: 'Peter', last: 'Thiel', year: 1967 }
  ];
  
  // ----- Filtre dans cette liste les entrepreneurs qui sont nés dans les années 70 -----
  
  console.log("--- Liste des entrepreneurs nés dans les années 70: ---- ")
  
  // On parcourt le tableau avec forEach, et affiche les entreprendeurs si leur year
  // est entre 1970 et 1980.
  entrepreneurs.forEach(entrepreneur => {
      if(entrepreneur.year >= 1970 && entrepreneur.year < 1980)
          console.log(`- ${entrepreneur.first} ${entrepreneur.last}`);
  });
  
  
  // ----- Sors une array qui contient le prénom et le nom des entrepreneurs -----
  
  
  // On crée un array qui servira à stocker les noms
  entrepreneursNames = [];
  
  // Pour chaque entrepreneur, on stocke son nom et son prénom dans une même entrée de l'array.
  entrepreneurs.forEach(entrepreneur => {
      entrepreneursNames.push(`${entrepreneur.first} ${entrepreneur.last}`);
  });
  
  console.log("--- Array de prenoms et noms de tous les entrepreneurs: ---- ")
  console.log(entrepreneursNames)
  
  
  // ----- Quel âge aurait chaque entrepreneur aujourd'hui ? -----
  
  console.log("--- L'age que les entrepreneurs auraient aujourd'hui ---- ")
  
  // Pour chaque entrepreneur, on soustrait son année de naissance à l'année en cours.
  // puis on affiche le résultat dans la console.
  entrepreneurs.forEach(entrepreneur => {
      let age = 2019 - entrepreneur.year;
      console.log(`- ${entrepreneur.first} ${entrepreneur.last} aurait ${age} ans aujourd'hui.`);
  });
  
  
  // ----- Trie les entrepreneurs par ordre alphabétique du nom de famille -----
  
  console.log("--- Les entrepreneurs par ordre alphabétique du nom de famille ---- ")
  
  // On crée un premier array pour stocker les noms des entrepreneurs
  entrepreneursByLastName = [];
  
  // On ajoute tous les entrepreneurs en mettant leur nom de famille en premier
  entrepreneurs.forEach(entrepreneur => {
      entrepreneursByLastName.push(`${entrepreneur.last} ${entrepreneur.first}`);
  });
  
  // On affiche le résultat trié par ordre alphabétique avec .sort sous forme
  // de liste dans la console. join() permet de les afficher sous forme de string,
  // et \n permet un retour à la ligne.
  console.log(`- ${entrepreneursByLastName.sort().join("\n- ")}`);