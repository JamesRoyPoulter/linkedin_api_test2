class SkillsController < ApplicationController

  before_filter :authenticate_user!

  def index

    @users = User.all

    if params[:q]
      params_to_change = params[:q][:skill_start]
      params_to_change.downcase!
      params[:q][:skill_start]=params_to_change
    else
      #do nothing
    end

    @q = Skill.search(params[:q])
    @skills = @q.result(:distinct => true)
    @skills.uniq! {|e| e[:full_profile_id] }


  end

  def browse

    @users = User.all

  end

end
