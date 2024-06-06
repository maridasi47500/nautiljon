class Dvd::BluRaysPaysController < ApplicationController
  before_action :set__dvd___blu_rays_pay, only: %i[ show edit update destroy ]

  # GET /_dvd_/_blu_rays_pays or /_dvd_/_blu_rays_pays.json
  def index
    @_dvd___blu_rays_pays = Dvd::BluRaysPay.all
  end

  # GET /_dvd_/_blu_rays_pays/1 or /_dvd_/_blu_rays_pays/1.json
  def show
  end

  # GET /_dvd_/_blu_rays_pays/new
  def new
    @_dvd___blu_rays_pay = Dvd::BluRaysPay.new
  end

  # GET /_dvd_/_blu_rays_pays/1/edit
  def edit
  end

  # POST /_dvd_/_blu_rays_pays or /_dvd_/_blu_rays_pays.json
  def create
    @_dvd___blu_rays_pay = Dvd::BluRaysPay.new(_dvd___blu_rays_pay_params)

    respond_to do |format|
      if @_dvd___blu_rays_pay.save
        format.html { redirect_to _dvd___blu_rays_pay_url(@_dvd___blu_rays_pay), notice: "Blu rays pay was successfully created." }
        format.json { render :show, status: :created, location: @_dvd___blu_rays_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_/_blu_rays_pays/1 or /_dvd_/_blu_rays_pays/1.json
  def update
    respond_to do |format|
      if @_dvd___blu_rays_pay.update(_dvd___blu_rays_pay_params)
        format.html { redirect_to _dvd___blu_rays_pay_url(@_dvd___blu_rays_pay), notice: "Blu rays pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd___blu_rays_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_/_blu_rays_pays/1 or /_dvd_/_blu_rays_pays/1.json
  def destroy
    @_dvd___blu_rays_pay.destroy!

    respond_to do |format|
      format.html { redirect_to _dvd___blu_rays_pays_url, notice: "Blu rays pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd___blu_rays_pay
      @_dvd___blu_rays_pay = Dvd::BluRaysPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd___blu_rays_pay_params
      params.require(:_dvd___blu_rays_pay).permit(:name)
    end
end
