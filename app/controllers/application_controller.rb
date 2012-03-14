class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  #making the function available in may locations
end
