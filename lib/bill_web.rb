require 'sinatra/base'
require_relative './bill'
require_relative './views/helpers/view_helpers'

class BillWeb < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '/assets'
  include ViewHelpers

  get '/' do
    @bill = Bill.new
    erb :bill
  end
end