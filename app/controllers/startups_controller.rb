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

  private

    def startup_params
      params.require(:startup).permit(:name, :bio, :description, :website, :links, :full_logo, :square_logo, :stage)
    end
end
