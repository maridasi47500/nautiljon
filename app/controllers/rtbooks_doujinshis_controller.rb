class ArtbooksDoujinshisController < ApplicationController
  before_action :set_artbooks_doujinshi, only: %i[ show edit update destroy ]

  # GET /artbooks_doujinshis or /artbooks_doujinshis.json
  def index
    @artbooks_doujinshis = ArtbooksDoujinshi.all
  end

  # GET /artbooks_doujinshis/1 or /artbooks_doujinshis/1.json
  def show
  end

  # GET /artbooks_doujinshis/new
  def new
    @artbooks_doujinshi = ArtbooksDoujinshi.new
  end

  # GET /artbooks_doujinshis/1/edit
  def edit
  end

  # POST /artbooks_doujinshis or /artbooks_doujinshis.json
  def create
    @artbooks_doujinshi = ArtbooksDoujinshi.new(artbooks_doujinshi_params)

    respond_to do |format|
      if @artbooks_doujinshi.save
        format.html { redirect_to artbooks_doujinshi_url(@artbooks_doujinshi), notice: "Artbooks doujinshi was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_doujinshi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_doujinshis/1 or /artbooks_doujinshis/1.json
  def update
    respond_to do |format|
      if @artbooks_doujinshi.update(artbooks_doujinshi_params)
        format.html { redirect_to artbooks_doujinshi_url(@artbooks_doujinshi), notice: "Artbooks doujinshi was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_doujinshi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_doujinshi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_doujinshis/1 or /artbooks_doujinshis/1.json
  def destroy
    @artbooks_doujinshi.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_doujinshis_url, notice: "Artbooks doujinshi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_doujinshi
      @artbooks_doujinshi = ArtbooksDoujinshi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_doujinshi_params
      params.require(:artbooks_doujinshi).permit(:name)
    end
end
