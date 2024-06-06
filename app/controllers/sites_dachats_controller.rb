class SitesDachatsController < ApplicationController
  before_action :set__sites_dachat, only: %i[ show edit update destroy ]

  # GET /_sites_dachats or /_sites_dachats.json
  def index
    @_sites_dachats = SitesDachat.all
  end

  # GET /_sites_dachats/1 or /_sites_dachats/1.json
  def show
  end

  # GET /_sites_dachats/new
  def new
    @_sites_dachat = SitesDachat.new
  end

  # GET /_sites_dachats/1/edit
  def edit
  end

  # POST /_sites_dachats or /_sites_dachats.json
  def create
    @_sites_dachat = SitesDachat.new(_sites_dachat_params)

    respond_to do |format|
      if @_sites_dachat.save
        format.html { redirect_to sites_dachat_url(@_sites_dachat), notice: "Sites dachat was successfully created." }
        format.json { render :show, status: :created, location: @_sites_dachat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_sites_dachat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_sites_dachats/1 or /_sites_dachats/1.json
  def update
    respond_to do |format|
      if @_sites_dachat.update(_sites_dachat_params)
        format.html { redirect_to sites_dachat_url(@_sites_dachat), notice: "Sites dachat was successfully updated." }
        format.json { render :show, status: :ok, location: @_sites_dachat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_sites_dachat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_sites_dachats/1 or /_sites_dachats/1.json
  def destroy
    @_sites_dachat.destroy!

    respond_to do |format|
      format.html { redirect_to sites_dachats_url, notice: "Sites dachat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__sites_dachat
      @_sites_dachat = SitesDachat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _sites_dachat_params
      params.require(:sites_dachat).permit(:nom, :url, :description, :_sites_dachats_pays_id, :acceptregles)
    end
end
