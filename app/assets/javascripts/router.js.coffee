# For more information see: http://emberjs.com/guides/routing/

Blorgh.Router.map ()->
  @resource 'post', path: '/posts/:post_id', ->
    @route 'edit'
  @resource 'posts', ->
    @route 'new'

