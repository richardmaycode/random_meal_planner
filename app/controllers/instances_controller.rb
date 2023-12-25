class InstancesController < ApplicationController
  def index
    @instances = Instance.all
  end

  def show
    @instance = Instance.find(params[:id])
  end

  def new
    @instance = Instance.new
    2.times do
      @instance.sections.build
    end
  end

  def create
    @instance = Instance.new(instance_params)

    if @instance.save
      redirect_to @instance
    else
      render :new
    end
  end

  private

  def instance_params
    params.require(:instance).permit(creator_ids: [], sections_attributes: [:skip, meal_ids: [] ])
  end
end
