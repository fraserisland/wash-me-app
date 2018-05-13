class WashersController < ApplicationController
  before_action :set_washer, only: [:show, :edit, :update, :destroy]

  def index
    if current_user.has_role?(:admin)
      @washers = Washer.all
    else
      @washers = current_user.washers
    end
  end

  def show
    @washers = Washer.all
    @washer = Washer.find(params[:id])
  end

  def near_you
      @washers = Washer.all
    if params[:location].present?
      @washers = Washer.near(params[:location], params[:distance])
      @location = Geocoder.search(params[:location])
      else
        redirect_to root_path
        flash[:notice] = "Please enter valid address."
    end
  end

  def new
    @washer = Washer.new
  end

  def edit
  end

  def create
    @washer = Washer.new(washer_params)
    @washer.user = current_user
    respond_to do |format|
      if @washer.save
        format.html { redirect_to @washer, notice: 'Washer was successfully created.' }
        format.json { render :show, status: :created, location: @washer }
      else
        format.html { render :new }
        format.json { render json: @washer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @washer.update(washer_params)
        format.html { redirect_to @washer, notice: 'Washer was successfully updated.' }
        format.json { render :show, status: :ok, location: @washer }
      else
        format.html { render :edit }
        format.json { render json: @washer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @washer.destroy
    respond_to do |format|
      format.html { redirect_to washers_url, notice: 'Washer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_washer
      @washer = Washer.find(params[:id])
    end

    def washer_params
      params.require(:washer).permit(:image, :user_id, :description, :delivery, :cost, :address, :latitude, :longitude, :email, :first_name, :last_name)
    end

end
