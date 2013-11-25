class ApplicationController < ActionController::Base
  # Adds a few additional behaviors into the application controller 
   include Blacklight::Controller
  # Please be sure to impelement current_user and user_session. Blacklight depends on 
  # these methods in order to perform user specific actions. 

  layout 'blacklight'

  protect_from_forgery
  layout "hcrc"
  
  helper_method :on_home_page, :on_show_page, :on_search_page, :request_path, :on_report_pages
  

  
  def request_path
    Rails.application.routes.recognize_path(request.path)
  end
  def on_home_page
    request_path[:controller] == 'catalog' && request_path[:action] == 'index' && params[:f].blank? && params[:q].blank?
  end
  def on_show_page
    request_path[:controller] == 'catalog' && request_path[:action] == 'show'
  end

  def on_search_page
    request_path[:controller] == 'catalog' && request_path[:action] == 'index' && !on_home_page
  end
  def on_report_pages
    request_path[:controller] == 'report' 
  end
end
