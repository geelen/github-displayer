require 'sinatra'
require 'open-uri'

get '/*', :provides => 'html' do
  path = params['splat'].first
  if !path || path.empty?
    "Use this like http://github-displayer.heroku.com/username/project/raw/master/filename.html"
  else
    open("https://github.com/" + path)
  end
end
