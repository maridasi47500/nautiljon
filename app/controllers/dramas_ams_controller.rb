class DramasAmsController < ApplicationController
  before_action :set__dramas_am, only: %i[ show edit update destroy ]

  # GET /_dramas_ams or /_dramas_ams.json
  def index
    @_dramas_ams = DramasAm.all
  end

  # GET /_dramas_ams/1 or /_dramas_ams/1.json
  def show
  end

  # GET /_dramas_ams/new
  def new
    @_dramas_am = DramasAm.new
  end

  # GET /_dramas_ams/1/edit
  def edit
  end

  # POST /_dramas_ams or /_dramas_ams.json
  def create
    @_dramas_am = DramasAm.new(_dramas_am_params)

    respond_to do |format|
      if @_dramas_am.save
        format.html { redirect_to dramas_am_url(@_dramas_am), notice: "Dramas am was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_ams/1 or /_dramas_ams/1.json
  def update
    respond_to do |format|
      if @_dramas_am.update(_dramas_am_params)
        format.html { redirect_to dramas_am_url(@_dramas_am), notice: "Dramas am was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_ams/1 or /_dramas_ams/1.json
  def destroy
    @_dramas_am.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_ams_url, notice: "Dramas am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_am
      @_dramas_am = DramasAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_am_params
      params.require(:dramas_am).permit(:name)
    end
end
