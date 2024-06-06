class CdsDramasController < ApplicationController
  before_action :set__cds_drama, only: %i[ show edit update destroy ]

  # GET /_cds_dramas or /_cds_dramas.json
  def index
    @_cds_dramas = CdsDrama.all
  end

  # GET /_cds_dramas/1 or /_cds_dramas/1.json
  def show
  end

  # GET /_cds_dramas/new
  def new
    @_cds_drama = CdsDrama.new
  end

  # GET /_cds_dramas/1/edit
  def edit
  end

  # POST /_cds_dramas or /_cds_dramas.json
  def create
    @_cds_drama = CdsDrama.new(_cds_drama_params)

    respond_to do |format|
      if @_cds_drama.save
        format.html { redirect_to cds_drama_url(@_cds_drama), notice: "Cds drama was successfully created." }
        format.json { render :show, status: :created, location: @_cds_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_dramas/1 or /_cds_dramas/1.json
  def update
    respond_to do |format|
      if @_cds_drama.update(_cds_drama_params)
        format.html { redirect_to cds_drama_url(@_cds_drama), notice: "Cds drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_dramas/1 or /_cds_dramas/1.json
  def destroy
    @_cds_drama.destroy!

    respond_to do |format|
      format.html { redirect_to cds_dramas_url, notice: "Cds drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_drama
      @_cds_drama = CdsDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_drama_params
      params.require(:cds_drama).permit(:name)
    end
end
