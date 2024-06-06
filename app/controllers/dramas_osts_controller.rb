class DramasOstsController < ApplicationController
  before_action :set__dramas_ost, only: %i[ show edit update destroy ]

  # GET /_dramas_osts or /_dramas_osts.json
  def index
    @_dramas_osts = DramasOst.all
  end

  # GET /_dramas_osts/1 or /_dramas_osts/1.json
  def show
  end

  # GET /_dramas_osts/new
  def new
    @_dramas_ost = DramasOst.new
  end

  # GET /_dramas_osts/1/edit
  def edit
  end

  # POST /_dramas_osts or /_dramas_osts.json
  def create
    @_dramas_ost = DramasOst.new(_dramas_ost_params)

    respond_to do |format|
      if @_dramas_ost.save
        format.html { redirect_to dramas_ost_url(@_dramas_ost), notice: "Dramas ost was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_ost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_osts/1 or /_dramas_osts/1.json
  def update
    respond_to do |format|
      if @_dramas_ost.update(_dramas_ost_params)
        format.html { redirect_to dramas_ost_url(@_dramas_ost), notice: "Dramas ost was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_ost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_osts/1 or /_dramas_osts/1.json
  def destroy
    @_dramas_ost.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_osts_url, notice: "Dramas ost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_ost
      @_dramas_ost = DramasOst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_ost_params
      params.require(:dramas_ost).permit(:name)
    end
end
