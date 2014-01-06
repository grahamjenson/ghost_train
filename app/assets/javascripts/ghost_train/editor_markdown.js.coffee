#= require ghost/core/client/assets/vendor/showdown/showdown.js
#= require ghost/core/client/assets/vendor/showdown/extensions/ghostdown.js
#= require showdown/extensions/github.js
#= require_self

window.GhostTrain ||= {}
window.GhostTrain.editor_markdown_extensions ||= ['ghostdown', 'github']
window.GhostTrain.editor_markdown ||= new Showdown.converter({extensions: window.GhostTrain.editor_markdown_extensions});