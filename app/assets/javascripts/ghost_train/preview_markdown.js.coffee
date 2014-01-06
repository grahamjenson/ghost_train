#= require ghost/core/client/assets/vendor/showdown/showdown.js
#= require ghost/core/client/assets/vendor/showdown/extensions/ghostdown.js
#= require showdown/extensions/github.js
#= require_self

window.GhostTrain ||= {}
window.GhostTrain.preview_markdown_extensions ||= ['github']
window.GhostTrain.preview_markdown ||= new Showdown.converter({extensions: window.GhostTrain.preview_markdown_extensions})
