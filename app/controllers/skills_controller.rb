class SkillsController < ApplicationController

def index

  @users = User.all

  @q = Skill.search(params[:q])
  @skills = @q.result(:distinct => true)

end

def search
  index
  render :index
end


end
