class ApplicationController < ActionController::Base #API
    skip_before_action :verify_authenticity_token
end
