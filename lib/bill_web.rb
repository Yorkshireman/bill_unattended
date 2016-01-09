require 'sinatra/base'

class BillWeb < Sinatra::Base
  get '/' do
    erb :bill
  end
end