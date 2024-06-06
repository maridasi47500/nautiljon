class LightNovelsDramasController < ApplicationController
  before_action :set__light_novels_drama, only: %i[ show edit update destroy ]

  # GET /_light_novels_dramas or /_light_novels_dramas.json
  def index
    @_light_novels_dramas = LightNovelsDrama.all
  end

  # GET /_light_novels_dramas/1 or /_light_novels_dramas/1.json
  def show
  end

  # GET /_light_novels_dramas/new
  def new
    @_light_novels_drama = LightNovelsDrama.new
  end

  # GET /_light_novels_dramas/1/edit
  def edit
  end

  # POST /_light_novels_dramas or /_light_novels_dramas.json
  def create
    @_light_novels_drama = LightNovelsDrama.new(_light_novels_drama_params)

    respond_to do |format|
      if @_light_novels_drama.save
        format.html { redirect_to light_novels_drama_url(@_light_novels_drama), notice: "Light novels drama was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_dramas/1 or /_light_novels_dramas/1.json
  def update
    respond_to do |format|
      if @_light_novels_drama.update(_light_novels_drama_params)
        format.html { redirect_to light_novels_drama_url(@_light_novels_drama), notice: "Light novels drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_dramas/1 or /_light_novels_dramas/1.json
  def destroy
    @_light_novels_drama.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_dramas_url, notice: "Light novels drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_drama
      @_light_novels_drama = LightNovelsDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_drama_params
      params.require(:light_novels_drama).permit(:name)
    end
end
