

// L'array de base :
const books = [
    { title: 'Gatsby le magnifique', id: 133712, rented: 39 },
    { title: 'A la recherche du temps,perdu', id: 237634, rented: 28 },
    { title: 'Orgueil & Préjugés', id: 873495, rented: 67 },
    { title: 'Les frères Karamazov', id: 450911, rented: 55 },
    { title: 'Dans les forêts de Sibérie', id: 8376365, rented: 15 },
    { title: 'Pourquoi j\'ai mangé mon père', id: 450911, rented: 45 },
    { title: 'Et on tuera tous les affreux', id: 67565, rented: 36 },
    { title: 'Le meilleur des mondes', id: 88847, rented: 58 },
    { title: 'La disparition', id: 364445, rented: 33 },
    { title: 'La lune seule le sait', id: 63541, rented: 43 },
    { title: 'Voyage au centre de la Terre', id: 4656388, rented: 38 },
    { title: 'Les frères Karamazov', id: 450911, rented: 5 },
    { title: 'Guerre et Paix', id: 748147, rented: 19 }
  
  ];
  
  // ----- Est-ce que tous les livres ont été au moins empruntés une fois ?  -----
  
  console.log("Est-ce que tous les livres ont été au moins empruntés une fois ?")
  // On crée une variable vide
  let hasAllBooksBeenRentedOnce; 
  
  // On parcourt le tableau avec forEach, 
  // Pour chaque livre on vérifie s'il a été emprunté
  // Si au moins un livre n'a pas été emprunté, notre variable hasAllBooksBeenRentedOnce
  // devient false, sinon elle devient true
  books.forEach(book => {
  if (book.rented === 0){
    hasAllBooksBeenRentedOnce = false;
  }else {
    hasAllBooksBeenRentedOnce = true
  }
  });
  
  // On vérifie si tous les livres ont bien été empruntés au moins une fois
  // grâce à la variable hasAllBooksBeenRentedOnce et on affiche le résultat dans la console
  if (hasAllBooksBeenRentedOnce === true) {
    console.log("Oui");
  } else {
    console.log("Non");
  };
  
  
  
  // ----- Quel est livre le plus emprunté ? -----
  console.log("Quel est livre le plus emprunté ?")
  // On crée un nouvel array dans lequel les livres sont triés par rental
  // en passant une fonction à sort() (possibilité de sort trouvée sur la doc)
  // La fonction compare les propriétés deux par deux (a et b) et trie l'array.
  let booksByRental = books.sort(function (a, b) {
    return a.rented - b.rented;
  });
  
  // On affiche le titre du dernier objet de l'array 
  console.log(booksByRental[booksByRental.length - 1].title)
  
  // ----- Quel est le livre le moins emprunté ? -----
  
  console.log("Quel est livre le moins emprunté ?")
  
  // On affiche le titre du premier objet de l'array
  console.log(booksByRental[0].title)
  
  
  
  // ----- Trouve le livre avec l'ID: 873495 -----
  
  console.log("Quel est livre avec l'ID: 873495 ?")
  
  // On récupère l'objet dont l'id est 873495 dans une nouvelle variable (bookById)
  // grâce à .find()
  let bookById = books.find(book => {
   return book.id === 873495
  })
  
  console.log(bookById.title)
  
  
  // ----- Supprime le livre avec l'ID: 133712 -----
  
  console.log("Supprime le livre avec l'ID: 133712")
  
  // On récupère l'index de l'objet dont l'id est 133712 dans
  // une nouvelle variable (bookToDelete)
  
  let bookToDelete = books.findIndex(book => {
    return book.id === 133712 
  })
  
  // On supprime l'objet de l'array books avec splice() et pas
  // avec delete pour mettre à jour les index
  books.splice(bookToDelete, 1)
  console.log(books)
  
  
  
  