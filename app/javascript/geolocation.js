if (document.querySelector('[data-geolocation]')) {
  console.log('hello')
  navigator.geolocation.getCurrentPosition(
    (position) =>  {
      console.log(position.coords.latitude, position.coords.longitude);
      let counter = 0
      document.querySelectorAll('.pos').forEach((element) => {
        const boul_pos = element.innerHTML.replace(/\s/g, '')
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
            document.querySelectorAll('.fin')[counter].innerHTML = c
            document.querySelectorAll('[fino]')[counter].href = `https://www.google.com/maps/dir/?api=1&origin=${position.coords.latitude},${position.coords.longitude}&destination=${boul_pos}&travelmode=walking`;
            counter = counter + 1;
        });
      });
    },
    (error) => {
      console.log(error)

    },
    {
      timeout: 15000
    }
  );
}
