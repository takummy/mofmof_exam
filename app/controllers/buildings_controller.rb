class BuildingsController < ApplicationController
  before_action :set_building, only: %i(show edit update destroy)
  before_action :set_index, only: %i(new create show edit update)

  def index
    @buildings = Building.all
  end

  def show
  end

  def new
    @building = Building.new
    @building.nearest_stations.build
  end

  def edit
  end

  def create
    @building = Building.new(building_params)

    respond_to do |format|
      if @building.save
        format.html { redirect_to @building, notice: 'Building was successfully created.' }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to @building, notice: 'Building was successfully updated.' }
        format.json { render :show, status: :ok, location: @building }
      else
        format.html { render :edit }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @building.destroy
    respond_to do |format|
      format.html { redirect_to buildings_url, notice: 'Building was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_building
      @building = Building.find(params[:id])
    end

    def set_index
      @i = 0
    end

    def building_params
      params.require(:building).permit(:name, 
                                       :rent, 
                                       :address, 
                                       :age, 
                                       :notes, 
                                       nearest_stations_attributes: %i(id line name minute_walk _destroy)
                                )
    end
end
