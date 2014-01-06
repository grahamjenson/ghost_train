#= require ghost/core/client/assets/vendor/showdown/showdown.js
#= require ghost/core/client/assets/vendor/showdown/extensions/ghostdown.js
#= require showdown/extensions/github.js
#= require_self

window.GhostTrain ||= {}
window.GhostTrain.front_markdown_extensions ||= ['github']
window.GhostTrain.front_markdown ||= new Showdown.converter({extensions: window.GhostTrain.front_markdown_extensions})
