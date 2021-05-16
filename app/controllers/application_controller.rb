class ApplicationController < ActionController::API #Base #API

  # before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, '345')
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      # header: { 'Authorization': 'Bearer <token>' }
      begin
        JWT.decode(token, '345', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end


  # Version 1
  # skip_before_action :verify_authenticity_token




  # Version 2
  # require 'json_web_token'

  # protected
  # # Validates the token and user and sets the @current_user scope
  # def authenticate_request!
  #   if !payload || !JsonWebToken.valid_payload(payload.first)
  #     return invalid_authentication
  #   end

  #   load_current_user!
  #   invalid_authentication unless @current_user
  # end

  # # Returns 401 response. To handle malformed / invalid requests.
  # def invalid_authentication
  #   render json: {error: 'Invalid Request'}, status: :unauthorized
  # end

  # private
  # # Deconstructs the Authorization header and decodes the JWT token.
  # def payload
  #   auth_header = request.headers['Authorization']
  #   token = auth_header.split(' ').last
  #   JsonWebToken.decode(token)
  # rescue
  #   nil
  # end

  # # Sets the @current_user with the user_id from payload
  # def load_current_user!
  #   @current_user = User.find_by(id: payload[0]['user_id'])
  # end

end