# Divvy ridership from temperature

#### [View the Page](http://bikeindex.github.io/viddy_temp)

This is a demonstration of an idea I had for how to display temperature and precipitation ridership statistics.

Things to do:

- Process data on Viddy.
- Call Viddy to get data.
- Make poles for the Traffic lights to hang from.
- Improve snow, switch to rain above freezing.
- Create a better road background.
- Improve bike graphic.

---

Snow inspired by [Design Shack's snow](http://cssdeck.com/labs/css3-snow) test. However, this is going to need to be redone to have rain too, and to behave better.

Trafficlight inspired by [Azik Samarkandiy's](http://codepen.io/A973C/pen/hnEaf)

This uses [bootstrap slider](http://www.eyecon.ro/bootstrap-slider/), from [seiyria's updated fork on Github](https://github.com/seiyria/bootstrap-slider).

---

Compiling assets (run from root):

    $ sass --style compressed --watch assets/styles/style.scss:assets/site.css

    $ coffee -cw -o assets/  assets/scripts/site.coffee