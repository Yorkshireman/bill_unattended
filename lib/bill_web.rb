require 'sinatra/base'
require 'bill'

class BillWeb < Sinatra::Base
  get '/' do
    @bill_data = Bill.new
    erb :bill
  end
end