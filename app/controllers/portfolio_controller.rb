class PortfolioController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @projects = Project.order(:created_at).take(3)
  end
end
