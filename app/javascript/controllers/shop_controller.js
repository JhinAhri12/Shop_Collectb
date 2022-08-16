import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="shop"
export default class extends Controller {
  connect() {
    hourly()
  }

  hourly() {
    const d = new Date();
        let day = d.getDay();

        let numberOfDay = 7;
        let currDay = "#day" + day;
        let tabDay = []

        // on met la donnée du jour actuel en premier dans le tableau
        tabDay.push($(currDay).html());

        // on cherche les jours suivant le jour actuel et on les stocks
        let count = day + 1;
        while(count <= numberOfDay){
            let dayAfter = "#day" + count;
            let dayAfterVal = $(dayAfter).html();
            tabDay.push(dayAfterVal);
            count++;
        }

        // si le jour est lundi il n'y as pas de jour avant donc on ne passe pas dans ce while
        if( day != 1 ) {
            // on cherche les jours avant le jour actuel
            let countBefore = 1;
            while (countBefore < day) {
                let dayBefore = "#day" + countBefore;
                let dayBeforeVal = $(dayBefore).html();
                tabDay.push(dayBeforeVal);
                countBefore++;
            }
        }

        // on crée une fonction pour les autres jours qui ne sont pas à mettre en valeur
        let tabIndex = 1;
        let stringOtherDays = '';
        const printDays = (tab) => {
            while (tabIndex < tab.length)
            {
                stringOtherDays += `<li class="list-group-item">${tab[tabIndex]}</li>`;
                tabIndex++;
            }
            return stringOtherDays;
        }

        // on affiche dans l'ul les données dans l'ordre voulu
        $('#dayList').html(
            `<li class="list-group-item text-danger fw-bold">${tabDay[0]}</li>
             ${printDays(tabDay)}
             `
        );
  }

}
