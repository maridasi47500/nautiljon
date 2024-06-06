class DoujinshisCensuresController < ApplicationController
  before_action :set__doujinshis_censure, only: %i[ show edit update destroy ]

  # GET /_doujinshis_censures or /_doujinshis_censures.json
  def index
    @_doujinshis_censures = DoujinshisCensure.all
  end

  # GET /_doujinshis_censures/1 or /_doujinshis_censures/1.json
  def show
  end

  # GET /_doujinshis_censures/new
  def new
    @_doujinshis_censure = DoujinshisCensure.new
  end

  # GET /_doujinshis_censures/1/edit
  def edit
  end

  # POST /_doujinshis_censures or /_doujinshis_censures.json
  def create
    @_doujinshis_censure = DoujinshisCensure.new(_doujinshis_censure_params)

    respond_to do |format|
      if @_doujinshis_censure.save
        format.html { redirect_to _doujinshis_censure_url(@_doujinshis_censure), notice: "Doujinshis censure was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_censure }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_censure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_censures/1 or /_doujinshis_censures/1.json
  def update
    respond_to do |format|
      if @_doujinshis_censure.update(_doujinshis_censure_params)
        format.html { redirect_to _doujinshis_censure_url(@_doujinshis_censure), notice: "Doujinshis censure was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_censure }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_censure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_censures/1 or /_doujinshis_censures/1.json
  def destroy
    @_doujinshis_censure.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_censures_url, notice: "Doujinshis censure was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_censure
      @_doujinshis_censure = DoujinshisCensure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_censure_params
      params.require(:_doujinshis_censure).permit(:name)
    end
end
