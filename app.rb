require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"/pirates/new"
    end

    # get '/show' do
    #   erb :"/pirates/show"
    # end

    post '/pirates' do
      name1 = params[:name1]
      weight1 = params[:weight1]
      height1 = params[:height1]
      @pirate1 = Pirate.new(name1, weight1, height1)

      erb :"/pirates/show"
    end

  end
end
