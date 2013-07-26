if Meteor.isClient
  Router.map ->
    @route 'home', path: '/'
    @route 'about'
    @route 'post'

  Router.configure layout: 'layout'

  class @PostController extends RouteController
    template: 'post'

    renderTemplates:
      'sidebar': to: 'sidebar'
      'footer': to: 'footer'

    data: ->
      title: 'Hello World'

    run: ->
      console.log 'running'
      super
