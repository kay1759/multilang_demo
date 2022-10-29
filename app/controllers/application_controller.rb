class ApplicationController < ActionController::Base
  require 'wzs/multilang'
  include Wzs
  before_action :set_language
end
