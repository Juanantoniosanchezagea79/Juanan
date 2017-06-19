class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
   def after_sign_in_path_for(resource)
   	 if resource.class == User
      settings_path 
     elsif resource.class == AdminUser
      admin_dashboard_path 
     end
   end   
end 