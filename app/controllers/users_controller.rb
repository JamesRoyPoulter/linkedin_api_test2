class UsersController < ApplicationController
  before_filter :authenticate_user!

def show
      @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search }
    end
end

end