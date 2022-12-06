// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import initKegsSortable from './plugins/initSortable'
import "@hotwired/turbo-rails"

document.addEventListener('turbo:load', () => {
  console.log("start");
  const kegUls = document.querySelectorAll(".kegs");
  if (kegUls) {
    console.log(kegUls);
    initKegsSortable(kegUls);
  }
  else {
    console.log("fail");
  };
});

console.log('hello');

import * as bootstrap from "bootstrap"
