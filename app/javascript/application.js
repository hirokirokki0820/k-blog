// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "@rails/actiontext"
const Trix = require("trix")


Trix.config.blockAttributes.default = {
  tagName: "p",
  breakOnReturn: true
}

Trix.config.blockAttributes.heading1 = {
  tagName: "h2",
  breakOnReturn: true
}

// Trix.config.blockAttributes.heading = {
//   tagName: "h2",
//   terminal: true,
//   breakOnReturn: true,
//   group: false
// }

// Trix.config.blockAttributes.subHeading = {
//   tagName: "h3",
//   terminal: true,
//   breakOnReturn: true,
//   group: false
// }
