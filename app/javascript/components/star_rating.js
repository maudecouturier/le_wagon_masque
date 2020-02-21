const starRating = () => {
  const starContainer = document.querySelector('.stars-rating');
  const stars = starContainer.querySelectorAll('.fa-star');
  stars.forEach((star, index) => {
    star.addEventListener('click', () => {
      const ind = index + 1;
      const starsSelected = [...stars].slice(0, ind);
      const rating = starsSelected.length;
      document.querySelector("#review_rating").value = rating;
      stars.forEach(star2 => {
        if (starsSelected.includes(star2)) {
          star2.classList.remove('far');
          star2.classList.add('fas');
        } else {
          star2.classList.add('far');
          star2.classList.remove('fas');
        };
      });

  // quand je clique sur une étoile je veux remplacer la classe de chaque étoile vide de l'index 0 à l'index de l"étoile cliquée par une étoile pleine
  // je veux compter le nombre d'étoile pleine / ou index
  // je veux l'insérer dans le champ caché de rating
    });
  });
};

export default starRating;

// document.querySelector("review_rating").value =
