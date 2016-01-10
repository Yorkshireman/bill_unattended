require 'sinatra/base'
require 'bill'

class BillWeb < Sinatra::Base
  get '/' do
    bill = Bill.new
    @generated_on_date = bill.data["statement"]["generated"]
    erb :bill
  end
end