if (document.querySelector('[data-geolocation]')) {
  console.log('hello')
  navigator.geolocation.getCurrentPosition(
    (position) =>  {
      console.log(position.coords.latitude, position.coords.longitude);
      const boul_pos = document.querySelector('[pos]').innerHTML.replace(/\s/g, '');
      console.log(boul_pos)
      // fetch
      // fetch(`https://maps.googleapis.com/maps/api/distancematrix/json?origins=${position.coords.latitude},${position.coords.longitude}&destinations=${boul_pos}&mode=walking&key=AIzaSyC3NHPtUXtqe9uXK2FnPrGrd6nVt0lnmgQ`)
      fetch(`/toto?origins=${position.coords.latitude},${position.coords.longitude}&destinations=${boul_pos}`)
        .then(response => response.json())
        .then((data) => {
          console.log(data);
      // update dom
          c = data["distance"]
          const distance = document.querySelector('[fin]')
          distance.innerHTML = c
          console.log(c)
          console.log("fini")
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