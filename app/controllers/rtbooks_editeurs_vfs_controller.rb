class ArtbooksEditeursVfsController < ApplicationController
  before_action :set_artbooks_editeurs_vf, only: %i[ show edit update destroy ]

  # GET /artbooks_editeurs_vfs or /artbooks_editeurs_vfs.json
  def index
    @artbooks_editeurs_vfs = ArtbooksEditeursVf.all
  end

  # GET /artbooks_editeurs_vfs/1 or /artbooks_editeurs_vfs/1.json
  def show
  end

  # GET /artbooks_editeurs_vfs/new
  def new
    @artbooks_editeurs_vf = ArtbooksEditeursVf.new
  end

  # GET /artbooks_editeurs_vfs/1/edit
  def edit
  end

  # POST /artbooks_editeurs_vfs or /artbooks_editeurs_vfs.json
  def create
    @artbooks_editeurs_vf = ArtbooksEditeursVf.new(artbooks_editeurs_vf_params)

    respond_to do |format|
      if @artbooks_editeurs_vf.save
        format.html { redirect_to artbooks_editeurs_vf_url(@artbooks_editeurs_vf), notice: "Artbooks editeurs vf was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_editeurs_vf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_editeurs_vfs/1 or /artbooks_editeurs_vfs/1.json
  def update
    respond_to do |format|
      if @artbooks_editeurs_vf.update(artbooks_editeurs_vf_params)
        format.html { redirect_to artbooks_editeurs_vf_url(@artbooks_editeurs_vf), notice: "Artbooks editeurs vf was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_editeurs_vf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_editeurs_vfs/1 or /artbooks_editeurs_vfs/1.json
  def destroy
    @artbooks_editeurs_vf.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_editeurs_vfs_url, notice: "Artbooks editeurs vf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_editeurs_vf
      @artbooks_editeurs_vf = ArtbooksEditeursVf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_editeurs_vf_params
      params.require(:artbooks_editeurs_vf).permit(:name)
    end
end
