class SkillsController < ApplicationController

  before_filter :authenticate_user!

  def index

    @users = User.all

    @q = Skill.search(params[:q])
    @skills = @q.result(:distinct => true)

  end

  def browse
    @users = User.all
  end

end
