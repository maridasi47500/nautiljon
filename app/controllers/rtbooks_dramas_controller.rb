class ArtbooksDramasController < ApplicationController
  before_action :set_artbooks_drama, only: %i[ show edit update destroy ]

  # GET /artbooks_dramas or /artbooks_dramas.json
  def index
    @artbooks_dramas = ArtbooksDrama.all
  end

  # GET /artbooks_dramas/1 or /artbooks_dramas/1.json
  def show
  end

  # GET /artbooks_dramas/new
  def new
    @artbooks_drama = ArtbooksDrama.new
  end

  # GET /artbooks_dramas/1/edit
  def edit
  end

  # POST /artbooks_dramas or /artbooks_dramas.json
  def create
    @artbooks_drama = ArtbooksDrama.new(artbooks_drama_params)

    respond_to do |format|
      if @artbooks_drama.save
        format.html { redirect_to artbooks_drama_url(@artbooks_drama), notice: "Artbooks drama was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_dramas/1 or /artbooks_dramas/1.json
  def update
    respond_to do |format|
      if @artbooks_drama.update(artbooks_drama_params)
        format.html { redirect_to artbooks_drama_url(@artbooks_drama), notice: "Artbooks drama was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_dramas/1 or /artbooks_dramas/1.json
  def destroy
    @artbooks_drama.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_dramas_url, notice: "Artbooks drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_drama
      @artbooks_drama = ArtbooksDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_drama_params
      params.require(:artbooks_drama).permit(:name)
    end
end
