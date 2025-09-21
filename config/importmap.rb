# Pin npm packages by running ./bin/importmap

#pin "application"
#pin "@hotwired/turbo-rails", to: "@hotwired--turbo-rails.js" # @8.0.16
#pin "@hotwired/stimulus", to: "stimulus.min.js"
#pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
#pin_all_from "app/javascript/controllers", under: "controllers"
#pin "@hotwired/turbo", to: "@hotwired--turbo.js" # @8.0.13
#pin "@rails/actioncable/src", to: "@rails--actioncable--src.js" # @8.0.201




pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "rails-ujs" # @5.2.8

