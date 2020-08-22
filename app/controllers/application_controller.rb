class ApplicationController < ActionController::Base
  before_action :authenticate_member!, only: %i[new create]
end
