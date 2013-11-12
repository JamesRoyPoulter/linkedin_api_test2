class SkillsController < ApplicationController

  before_filter :authenticate_user!

  def index

    @users = User.all
    @q = Skill.search(params[:q])
    @skills = @q.result(:distinct => true)
    @skills.uniq! {|e| e[:full_profile_id] }

  end

  def browse

    @users = User.all
    @q = Skill.search(params[:q])
    @skills = @q.result(:distinct => true)

  end

  def search
    index
    render :index
  end

end
