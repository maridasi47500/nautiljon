class LightNovelsArtbooksController < ApplicationController
  before_action :set__light_novels_artbook, only: %i[ show edit update destroy ]

  # GET /_light_novels_artbooks or /_light_novels_artbooks.json
  def index
    @_light_novels_artbooks = LightNovelsArtbook.all
  end

  # GET /_light_novels_artbooks/1 or /_light_novels_artbooks/1.json
  def show
  end

  # GET /_light_novels_artbooks/new
  def new
    @_light_novels_artbook = LightNovelsArtbook.new
  end

  # GET /_light_novels_artbooks/1/edit
  def edit
  end

  # POST /_light_novels_artbooks or /_light_novels_artbooks.json
  def create
    @_light_novels_artbook = LightNovelsArtbook.new(_light_novels_artbook_params)

    respond_to do |format|
      if @_light_novels_artbook.save
        format.html { redirect_to light_novels_artbook_url(@_light_novels_artbook), notice: "Light novels artbook was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_artbooks/1 or /_light_novels_artbooks/1.json
  def update
    respond_to do |format|
      if @_light_novels_artbook.update(_light_novels_artbook_params)
        format.html { redirect_to light_novels_artbook_url(@_light_novels_artbook), notice: "Light novels artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_artbooks/1 or /_light_novels_artbooks/1.json
  def destroy
    @_light_novels_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_artbooks_url, notice: "Light novels artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_artbook
      @_light_novels_artbook = LightNovelsArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_artbook_params
      params.require(:light_novels_artbook).permit(:name)
    end
end
