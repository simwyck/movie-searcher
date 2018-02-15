class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_config
    @configuration = Tmdb::Configuration.new
  end

end
