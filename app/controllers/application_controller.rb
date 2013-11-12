class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_global_search_variable

  def set_global_search_variable
    @q = Skill.search(params[:q])
  end

end
