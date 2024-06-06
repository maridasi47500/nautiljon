class ArtbooksDoujinsController < ApplicationController
  before_action :set_artbooks_doujin, only: %i[ show edit update destroy ]

  # GET /artbooks_doujins or /artbooks_doujins.json
  def index
    @artbooks_doujins = ArtbooksDoujin.all
  end

  # GET /artbooks_doujins/1 or /artbooks_doujins/1.json
  def show
  end

  # GET /artbooks_doujins/new
  def new
    @artbooks_doujin = ArtbooksDoujin.new
  end

  # GET /artbooks_doujins/1/edit
  def edit
  end

  # POST /artbooks_doujins or /artbooks_doujins.json
  def create
    @artbooks_doujin = ArtbooksDoujin.new(artbooks_doujin_params)

    respond_to do |format|
      if @artbooks_doujin.save
        format.html { redirect_to artbooks_doujin_url(@artbooks_doujin), notice: "Artbooks doujin was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_doujin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_doujins/1 or /artbooks_doujins/1.json
  def update
    respond_to do |format|
      if @artbooks_doujin.update(artbooks_doujin_params)
        format.html { redirect_to artbooks_doujin_url(@artbooks_doujin), notice: "Artbooks doujin was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_doujin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_doujins/1 or /artbooks_doujins/1.json
  def destroy
    @artbooks_doujin.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_doujins_url, notice: "Artbooks doujin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_doujin
      @artbooks_doujin = ArtbooksDoujin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_doujin_params
      params.require(:artbooks_doujin).permit(:name)
    end
end
