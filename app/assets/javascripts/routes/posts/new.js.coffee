Blorgh.PostsNewRoute = Ember.Route.extend
  model: ->
    Blorgh.Post.create({})

  actions:
    save: ->
      route = this
      this.currentModel.save().then (model) ->
        route.transitionTo('post', model)
