require 'sinatra/base'
require_relative './bill'
require_relative './views/helpers/view_helpers'

class BillWeb < Sinatra::Base
  include ViewHelpers

  get '/' do
    @bill = Bill.new
    erb :bill
  end
end