require 'sinatra/base'
require_relative './bill'

class BillWeb < Sinatra::Base
  get '/' do
    @bill = Bill.new
    erb :bill
  end
end