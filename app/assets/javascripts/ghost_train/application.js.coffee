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
#= require ghost_train/front_markdown
#= require ghost_train/editor_markdown
#= require ghost_train/preview_markdown
#= require_self
#= require customizations


#_.HandlebarsTemplates['ghost/client/tpl/forgotten']()
$('body').addClass('editor')


##THIS IS HORRIBLE but will be executed before ghost is inited -- graham

old_parse = Ghost.Models.Post.prototype.parse

new_parse = (data) ->
    d = old_parse(data)
    if not d.html and d.markdown
      d.html = window.GhostTrain.preview_markdown.makeHtml(d.markdown)
    d

Ghost.Models.Post.prototype.parse = new_parse

Ghost.Views.Editor.prototype.initConverter = () -> window.GhostTrain.editor_markdown

