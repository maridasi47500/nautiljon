class ArtbooksEditeursVosController < ApplicationController
  before_action :set_artbooks_editeurs_vo, only: %i[ show edit update destroy ]

  # GET /artbooks_editeurs_vos or /artbooks_editeurs_vos.json
  def index
    @artbooks_editeurs_vos = ArtbooksEditeursVo.all
  end

  # GET /artbooks_editeurs_vos/1 or /artbooks_editeurs_vos/1.json
  def show
  end

  # GET /artbooks_editeurs_vos/new
  def new
    @artbooks_editeurs_vo = ArtbooksEditeursVo.new
  end

  # GET /artbooks_editeurs_vos/1/edit
  def edit
  end

  # POST /artbooks_editeurs_vos or /artbooks_editeurs_vos.json
  def create
    @artbooks_editeurs_vo = ArtbooksEditeursVo.new(artbooks_editeurs_vo_params)

    respond_to do |format|
      if @artbooks_editeurs_vo.save
        format.html { redirect_to artbooks_editeurs_vo_url(@artbooks_editeurs_vo), notice: "Artbooks editeurs vo was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_editeurs_vo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_editeurs_vos/1 or /artbooks_editeurs_vos/1.json
  def update
    respond_to do |format|
      if @artbooks_editeurs_vo.update(artbooks_editeurs_vo_params)
        format.html { redirect_to artbooks_editeurs_vo_url(@artbooks_editeurs_vo), notice: "Artbooks editeurs vo was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_editeurs_vo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_editeurs_vos/1 or /artbooks_editeurs_vos/1.json
  def destroy
    @artbooks_editeurs_vo.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_editeurs_vos_url, notice: "Artbooks editeurs vo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_editeurs_vo
      @artbooks_editeurs_vo = ArtbooksEditeursVo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_editeurs_vo_params
      params.require(:artbooks_editeurs_vo).permit(:name)
    end
end
