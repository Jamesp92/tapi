# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "sortablejs", to: "https://ga.jspm.io/npm:sortablejs@1.15.0/modular/sortable.esm.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
