if (document.querySelector('[data-geolocation]')) {
  console.log('hello')

  navigator.geolocation.getCurrentPosition(
    (position) =>  {
      console.log(position.coords.latitude, position.coords.longitude);
      document.querySelectorAll('[data-geolocation]').forEach((element) => {
        const pos = element.querySelector('.pos')
        const boul_pos = pos.innerHTML.replace(/\s/g, '')
        console.log(boul_pos)
      // fetch
      // fetch(`https://maps.googleapis.com/maps/api/distancematrix/json?origins=${position.coords.latitude},${position.coords.longitude}&destinations=${boul_pos}&mode=walking&key=AIzaSyC3NHPtUXtqe9uXK2FnPrGrd6nVt0lnmgQ`)
        fetch(`/toto?origins=${position.coords.latitude},${position.coords.longitude}&destinations=${boul_pos}`, {
          headers : {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
           }
        })
          .then(response => response.json())
          .then((data) => {
            console.log(data);
        // update dom
            c = data["distance"];
            element.querySelector('.fin').innerHTML = c
            element.querySelector('[fino]').href = `https://www.google.com/maps/dir/?api=1&origin=${position.coords.latitude},${position.coords.longitude}&destination=${boul_pos}&travelmode=walking`;
        });
      });
    },
    (error) => {
      console.log(error)
      const blop = prompt("Please enter your address:", "Chez ta mère");
      const replace = blop.split(' ').join('+');
      document.querySelectorAll('[data-geolocation]').forEach((element) => {
        const pos = element.querySelector('.pos')
        const boul_pos = pos.innerHTML.replace(/\s/g, '')
        console.log(boul_pos)
        console.log(replace)
        fetch(`/toto?origins=${replace}&destinations=${boul_pos}`)
            .then(response => response.json())
            .then((data) => {
              console.log(data);
          // update dom
              c = data["distance"];
              element.querySelector('.fin').innerHTML = c
              element.querySelector('[fino]').href = `https://www.google.com/maps/dir/?api=1&origin=${position.coords.latitude},${position.coords.longitude}&destination=${boul_pos}&travelmode=walking`;

        });
      });
    },
    {
      timeout: 1  }
  );
}
