import Glide from '@glidejs/glide';

if (document.querySelector('[data-geolocation]')) {
  // console.log('hello')
  navigator.geolocation.getCurrentPosition(
    (position) =>  {
      console.log(position.coords.latitude, position.coords.longitude);
      fetch(`/indexGeo`)
        .then(response => response.json())
            .then((data) => {
              console.log(data);
              const ind = []
              data["boulangeries"].forEach((boulangerie) => {
                console.log(boulangerie)
                fetch(`/toto?origins=${position.coords.latitude},${position.coords.longitude}&destinations=${boulangerie["position"]}`, {
                  headers : {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                   }
                })
                  .then(response => response.json())
                  .then((data) => {
                    boulangerie["dist"] = data["distance"]
                    console.log(parseFloat(boulangerie.dist.split(' ')[0]))
                    ind.push(boulangerie)
                    ind.sort((a, b) => parseFloat(a.dist.split(' ')[0]) - parseFloat(b.dist.split(' ')[0])) ;
                    console.log(ind)
                    let counter = 0
                    ind.forEach((blabla) => {
                      console.log("---------------------------")
                      // console.log(blabla.name)
                      // console.log(blabla.badge)
                      // console.log(blabla.id)
                      // console.log(counter)
                      // console.log(document.querySelectorAll('.name')[counter])
                      console.log(document.querySelectorAll('.bg')[counter])

                      const googlePath = `https://www.google.com/maps/dir/?api=1&origin=${position.coords.latitude},${position.coords.longitude}&destination=${blabla["position"]}&travelmode=walking`
                      document.querySelectorAll('.bg')[counter].dataset.googlePath = googlePath

                      document.querySelectorAll('.name')[counter].innerHTML = `${blabla.name}`
                      document.querySelectorAll('.fin')[counter].innerHTML = `${blabla.dist}`
                      document.querySelectorAll('[fino]')[counter].href = `https://www.google.com/maps/dir/?api=1&origin=${position.coords.latitude},${position.coords.longitude}&destination=${blabla["position"]}&travelmode=walking`;
                      // document.querySelectorAll('.bg')[counter].style = `background: url(${blabla.image});background-repeat: no-repeat; background-size : cover; background-position: center;`
                      document.querySelectorAll('img.bakery-bg')[counter].src = blabla.image_url;
                      if (document.querySelectorAll('home-buttons_reserve')) {
                        document.querySelectorAll('[reserv]')[counter].href = `/boulangeries/${blabla.id}/reservations/new`
                      }
                      if ( blabla.badge === "Or" ) {
                        document.querySelectorAll('.badge')[counter].innerHTML = `<span class="iconify" data-icon="vaadin:medal" data-inline="false" style="color: gold;"></span>`
                      } if (blabla.badge === "Argent") {
                        document.querySelectorAll('.badge')[counter].innerHTML = `<span class="iconify" data-icon="vaadin:medal" data-inline="false" style="color: silver;"></span>`
                      } if (blabla.badge === "Bronze") {
                        document.querySelectorAll('.badge')[counter].innerHTML = `<span class="iconify" data-icon="vaadin:medal" data-inline="false" style="color: rgb(131, 74, 28);"></span>`
                      }

                      counter = counter + 1
                    })
                  });
              })
              new Glide('.glide').mount();
            });
      // document.querySelectorAll('[data-geolocation]').forEach((element) => {
      //   const pos = element.querySelector('.pos')
      //   const boul_pos = pos.innerHTML.replace(/\s/g, '')

      //   console.log(boul_pos)
      // // fetch
      // // fetch(`https://maps.googleapis.com/maps/api/distancematrix/json?origins=${position.coords.latitude},${position.coords.longitude}&destinations=${boul_pos}&mode=walking&key=AIzaSyC3NHPtUXtqe9uXK2FnPrGrd6nVt0lnmgQ`)
      //   fetch(`/toto?origins=${position.coords.latitude},${position.coords.longitude}&destinations=${boul_pos}`, {
      //     headers : {
      //       'Content-Type': 'application/json',
      //       'Accept': 'application/json'
      //      }
      //   })
      //     .then(response => response.json())
      //     .then((data) => {
      //       console.log(data);
      //   // update dom
      //       c = data["distance"];
      //       element.querySelector('.fin').innerHTML = c
      //       element.querySelector('[fino]').href = `https://www.google.com/maps/dir/?api=1&origin=${position.coords.latitude},${position.coords.longitude}&destination=${boul_pos}&travelmode=walking`;
      //   });
      // });
    },
    (error) => {
      console.log(error)
      const blop = prompt("Please enter your address:", "40 Rue Louis Braille");
      const replace = blop.split(' ').join('+');
      fetch(`/indexGeo`)
        .then(response => response.json())
            .then((data) => {
              console.log(data);
              const ind = []
              data["boulangeries"].forEach((boulangerie) => {
                console.log(boulangerie)
                fetch(`/toto?origins=${replace}&destinations=${boulangerie["position"]}`, {
                  headers : {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                   }
                })
                  .then(response => response.json())
                  .then((data) => {
                    boulangerie["dist"] = data["distance"]
                    console.log(parseFloat(boulangerie.dist.split(' ')[0]))
                    ind.push(boulangerie)
                    ind.sort((a, b) => parseFloat(a.dist.split(' ')[0]) - parseFloat(b.dist.split(' ')[0])) ;
                    console.log(ind)
                    counter = 0
                    ind.forEach((blabla) => {
                      console.log("---------------------------")
                      console.log(blabla.name)
                      console.log(counter)
                      console.log(lol)
                      console.log(document.querySelectorAll('.name')[counter])
                      document.querySelectorAll('.name')[counter].innerHTML = `${blabla.name}`
                      document.querySelectorAll('.fin')[counter].innerHTML = `${blabla.dist}`
                      console.log("------------------------------------ :-)")
                      console.log(`https://www.google.com/maps/dir/?api=1&origin=${position.coords.latitude},${position.coords.longitude}&destination=${blabla["position"]}&travelmode=walking`)
                      document.querySelectorAll('[fino]')[counter].href = `https://www.google.com/maps/dir/?api=1&origin=${position.coords.latitude},${position.coords.longitude}&destination=${blabla["position"]}&travelmode=walking`;
                      document.querySelectorAll('img.bakery-bg')[counter].src = blabla.image;
                      if (document.querySelectorAll('home-buttons_reserve')) {
                        document.querySelectorAll('[reserv]')[counter].href = `/boulangeries/${blabla.id}/reservations/new`
                      }
                      if ( blabla.badge === "Or" ) {
                        document.querySelectorAll('.badge')[counter].innerHTML = `<span class="iconify" data-icon="vaadin:medal" data-inline="false" style="color: gold;"></span>`
                      } if (blabla.badge === "Argent") {
                        document.querySelectorAll('.badge')[counter].innerHTML = `<span class="iconify" data-icon="vaadin:medal" data-inline="false" style="color: silver;"></span>`
                      } if (blabla.badge === "Bronze") {
                        document.querySelectorAll('.badge')[counter].innerHTML = `<span class="iconify" data-icon="vaadin:medal" data-inline="false" style="color: rgb(131, 74, 28);"></span>`
                      }

                      counter = counter + 1
                    })

                  });
              })
              new Glide('.glide').mount();
            });

      // document.querySelectorAll('[data-geolocation]').forEach((element) => {
      //   const pos = element.querySelector('.pos')
      //   const boul_pos = pos.innerHTML.replace(/\s/g, '')
      //   console.log(boul_pos)
      //   console.log(replace)
      //   fetch(`/toto?origins=${replace}&destinations=${boul_pos}`)
      //       .then(response => response.json())
      //       .then((data) => {
      //         console.log(data);
      //     // update dom
      //         c = data["distance"];
      //         element.querySelector('.fin').innerHTML = c
      //         element.querySelector('[fino]').href = `https://www.google.com/maps/dir/?api=1&origin=${replace}&destination=${boul_pos}&travelmode=walking`;

      //   });
      // });
    },
    {
      timeout: 30000  }
  );
}
