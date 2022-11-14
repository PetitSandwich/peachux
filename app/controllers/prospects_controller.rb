class ProspectsController < ApplicationController
  def index
    @prospects = Prospect.all
  end
  def new
    @prospects = Prospect.new
  end
  def create
    @prospects = Prospect.new(prospect_params)
    @prospects.save
  end

  private

  def prospect_params
    params.require(:prospect).permit(:email)
  end
end
