get '/' do
 @urls = Url.all
    erb :"static/index"
end

post '/urls' do
    long_url = params[:long_url]
    Url.create(long_url: long_url)
    Url.shorten(long_url)
    redirect '/'
    end
