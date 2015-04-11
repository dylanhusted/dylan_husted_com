class StartupsController < ApplicationController
  def new
    @startup = Startup.new		
  end

  def create
  	@startup = Startup.new(startup_params)
  end

  def show
  	@startup = Startup.find(params[:id])
  end

  def index
    @idea_stage = Startup.where(stage: 'idea')
    @research_stage = Startup.where(stage: 'research')
    @financing_stage = Startup.where(stage: 'financing')
    @development_stage = Startup.where(stage: 'development')
    @launch_stage =  Startup.where(stage: 'launch')
  end

  private

    def startup_params
      params.require(:startup).permit(:name, :bio, :description, :website, :links, :full_logo, :square_logo, :stage)
    end
end
