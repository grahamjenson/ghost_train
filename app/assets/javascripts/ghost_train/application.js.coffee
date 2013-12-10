# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https:#github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require ghost_train/ghost/vendor
#= require ghost_train/ghost/helpers
#= require ghost_train/ghost/templates
#= require ghost_train/ghost/models
#= require ghost_train/ghost/views
#= require_self

window.JST = {}
_.map(HandlebarsTemplates, (v,k) ->  JST[k.replace(/^ghost\/core\/client\/tpl\//,'')] = v;);

#_.HandlebarsTemplates['ghost/client/tpl/forgotten']()
$('body').addClass('editor')
console.log('init');


##THIS IS HORRIBLE -- graham
converter = new Showdown.converter({extensions: ['github']})

old_parse = Ghost.Models.Post.prototype.parse

new_parse = (data) ->
    d = old_parse(data)
    console.log d
    if not d.html
      d.html = converter.makeHtml(d.markdown)
    d

Ghost.Models.Post.prototype.parse = new_parse