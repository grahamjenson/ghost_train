#= require ghost/core/client/assets/vendor/showdown/showdown.js
#= require ghost/core/client/assets/vendor/showdown/extensions/ghostdown.js
#= require showdown/extensions/github.js
window.GhostTrain ||= {}
window.GhostTrain.converter = new Showdown.converter({extensions: ['github']})