Blorgh.PostRoute = Ember.Route.extend
  actions:
    save: ->
      route = this
      this.currentModel.save().then (model) ->
        route.transitionTo('post', model)