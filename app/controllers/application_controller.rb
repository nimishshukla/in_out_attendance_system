# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter :set_user_time_zone

  private

  def set_user_time_zone
    Time.zone = "Kolkata"
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
