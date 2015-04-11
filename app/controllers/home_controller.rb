class HomeController < ApplicationController
  def home
  	@idea_stage = Startup.where(stage: 'idea')
  	@research_stage = Startup.where(stage: 'research')
  	@financing_stage = Startup.where(stage: 'financing')
  	@development_stage = Startup.where(stage: 'development')
  	@launch_stage =  Startup.where(stage: 'launch')
  end
end
