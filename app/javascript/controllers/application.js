import { Application } from "@hotwired/stimulus"
// import { Application } from "stimulus";
import { definitionsFromContext } from "@hotwired/stimulus-webpack-helpers";

const application = Application.start();

const context = require.context("./", true, /\.js$/)

application.load(definitionsFromContext(context));

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// export { application };
//= require jquery
//= require jquery.raty.js
