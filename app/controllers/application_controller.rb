class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  class << self
    attr_accessor :twitter
  end
end
