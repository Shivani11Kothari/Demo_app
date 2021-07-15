class ApplicationController < ActionController::Base 
  #here actioncontroller main controller hai rails ka jisse sare controller inherit hote hai(parent of all controller )
 before_action :authenticate_user!
 

end

