class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end
# lsof -i 3000 to find door kill -9 dor_number to delete it
