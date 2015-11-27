Blorgh.Post = Ember.Object.extend
  save: ->
    $.post "api/posts",
      post:
        title: this.title
        text: this.text
    .then (response) ->
      Ember.run () ->
        Blorgh.Post.create(response)

Blorgh.Post.reopenClass
  findAll: ->
    posts = Em.A()
    $.getJSON('/api/posts').then (data) ->
      Ember.run () ->
        posts.pushObjects(data.posts)
        posts

Blorgh.Post.reopenClass
  find: (id) ->
    $.getJSON("/api/posts/#{id}").then (post) ->
      Ember.run () ->
        Blorgh.Post.create(post)

