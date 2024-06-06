class SitesDachatsPaysController < ApplicationController
  before_action :set__sites_dachats_pay, only: %i[ show edit update destroy ]

  # GET /_sites_dachats_pays or /_sites_dachats_pays.json
  def index
    @_sites_dachats_pays = SitesDachatsPay.all
  end

  # GET /_sites_dachats_pays/1 or /_sites_dachats_pays/1.json
  def show
  end

  # GET /_sites_dachats_pays/new
  def new
    @_sites_dachats_pay = SitesDachatsPay.new
  end

  # GET /_sites_dachats_pays/1/edit
  def edit
  end

  # POST /_sites_dachats_pays or /_sites_dachats_pays.json
  def create
    @_sites_dachats_pay = SitesDachatsPay.new(_sites_dachats_pay_params)

    respond_to do |format|
      if @_sites_dachats_pay.save
        format.html { redirect_to sites_dachats_pay_url(@_sites_dachats_pay), notice: "Sites dachats pay was successfully created." }
        format.json { render :show, status: :created, location: @_sites_dachats_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_sites_dachats_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_sites_dachats_pays/1 or /_sites_dachats_pays/1.json
  def update
    respond_to do |format|
      if @_sites_dachats_pay.update(_sites_dachats_pay_params)
        format.html { redirect_to sites_dachats_pay_url(@_sites_dachats_pay), notice: "Sites dachats pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_sites_dachats_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_sites_dachats_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_sites_dachats_pays/1 or /_sites_dachats_pays/1.json
  def destroy
    @_sites_dachats_pay.destroy!

    respond_to do |format|
      format.html { redirect_to sites_dachats_pays_url, notice: "Sites dachats pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__sites_dachats_pay
      @_sites_dachats_pay = SitesDachatsPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _sites_dachats_pay_params
      params.require(:sites_dachats_pay).permit(:name)
    end
end
