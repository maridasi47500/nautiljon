class DramasCdsController < ApplicationController
  before_action :set__dramas_cd, only: %i[ show edit update destroy ]

  # GET /_dramas_cds or /_dramas_cds.json
  def index
    @_dramas_cds = DramasCd.all
  end

  # GET /_dramas_cds/1 or /_dramas_cds/1.json
  def show
  end

  # GET /_dramas_cds/new
  def new
    @_dramas_cd = DramasCd.new
  end

  # GET /_dramas_cds/1/edit
  def edit
  end

  # POST /_dramas_cds or /_dramas_cds.json
  def create
    @_dramas_cd = DramasCd.new(_dramas_cd_params)

    respond_to do |format|
      if @_dramas_cd.save
        format.html { redirect_to dramas_cd_url(@_dramas_cd), notice: "Dramas cd was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_cd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_cds/1 or /_dramas_cds/1.json
  def update
    respond_to do |format|
      if @_dramas_cd.update(_dramas_cd_params)
        format.html { redirect_to dramas_cd_url(@_dramas_cd), notice: "Dramas cd was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_cd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_cds/1 or /_dramas_cds/1.json
  def destroy
    @_dramas_cd.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_cds_url, notice: "Dramas cd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_cd
      @_dramas_cd = DramasCd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_cd_params
      params.require(:dramas_cd).permit(:name)
    end
end
