require 'sinatra'
require 'nokogiri'

get '/' do
  if params[:url]
    page_loader = PageLoader.new params[:url]
    params[:url]
  else
    '<form action="/" method="get"><input type="text" name="url"></input><input type="submit"></input></form>'
  end
end

class PageLoader
  def initialize url
    puts url
  end
end
