class DemoController < ApplicationController
    # //use render to override default behaviour

    # //need to redirect not just render, if you render will just render the template not the correct url
    # //as in when you need to redirect a user to login
    layout false

    def index
        # this is being rendered by default
        render('index')
    end

    def hello
        @array = [1, 2, 3]
        # you can use string or symbol to access params
        @id = params['id']
        @page = params[:page]
        # don't need to define 'demo/index' as in the demo controller...rails KNOWS
        render('hello')
    end

    def other_hello
        redirect_to(controller: 'demo', action: 'index')
        # will default to the controller it is in so you don't need :controller => 'demo'
    end

    def google
        redirect_to('https://google.co.uk')
    end
end
