#= require_tree ../../../../../vendor/assets/javascripts/ghost/core/client/tpl
#= require_self

window.JST ||= {}
_.map(HandlebarsTemplates, (v,k) ->  JST[k.replace(/^ghost\/core\/client\/tpl\//,'')] = v;);
