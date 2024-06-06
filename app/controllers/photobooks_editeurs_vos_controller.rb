class PhotobooksEditeursVosController < ApplicationController
  before_action :set__photobooks_editeurs_vo, only: %i[ show edit update destroy ]

  # GET /_photobooks_editeurs_vos or /_photobooks_editeurs_vos.json
  def index
    @_photobooks_editeurs_vos = PhotobooksEditeursVo.all
  end

  # GET /_photobooks_editeurs_vos/1 or /_photobooks_editeurs_vos/1.json
  def show
  end

  # GET /_photobooks_editeurs_vos/new
  def new
    @_photobooks_editeurs_vo = PhotobooksEditeursVo.new
  end

  # GET /_photobooks_editeurs_vos/1/edit
  def edit
  end

  # POST /_photobooks_editeurs_vos or /_photobooks_editeurs_vos.json
  def create
    @_photobooks_editeurs_vo = PhotobooksEditeursVo.new(_photobooks_editeurs_vo_params)

    respond_to do |format|
      if @_photobooks_editeurs_vo.save
        format.html { redirect_to photobooks_editeurs_vo_url(@_photobooks_editeurs_vo), notice: "Photobooks editeurs vo was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_editeurs_vo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_editeurs_vos/1 or /_photobooks_editeurs_vos/1.json
  def update
    respond_to do |format|
      if @_photobooks_editeurs_vo.update(_photobooks_editeurs_vo_params)
        format.html { redirect_to photobooks_editeurs_vo_url(@_photobooks_editeurs_vo), notice: "Photobooks editeurs vo was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_editeurs_vo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_editeurs_vos/1 or /_photobooks_editeurs_vos/1.json
  def destroy
    @_photobooks_editeurs_vo.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_editeurs_vos_url, notice: "Photobooks editeurs vo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_editeurs_vo
      @_photobooks_editeurs_vo = PhotobooksEditeursVo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_editeurs_vo_params
      params.require(:photobooks_editeurs_vo).permit(:name)
    end
end
