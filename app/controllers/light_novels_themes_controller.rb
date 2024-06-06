class LightNovelsThemesController < ApplicationController
  before_action :set__light_novels_theme, only: %i[ show edit update destroy ]

  # GET /_light_novels_themes or /_light_novels_themes.json
  def index
    @_light_novels_themes = LightNovelsTheme.all
  end

  # GET /_light_novels_themes/1 or /_light_novels_themes/1.json
  def show
  end

  # GET /_light_novels_themes/new
  def new
    @_light_novels_theme = LightNovelsTheme.new
  end

  # GET /_light_novels_themes/1/edit
  def edit
  end

  # POST /_light_novels_themes or /_light_novels_themes.json
  def create
    @_light_novels_theme = LightNovelsTheme.new(_light_novels_theme_params)

    respond_to do |format|
      if @_light_novels_theme.save
        format.html { redirect_to light_novels_theme_url(@_light_novels_theme), notice: "Light novels theme was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_themes/1 or /_light_novels_themes/1.json
  def update
    respond_to do |format|
      if @_light_novels_theme.update(_light_novels_theme_params)
        format.html { redirect_to light_novels_theme_url(@_light_novels_theme), notice: "Light novels theme was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_themes/1 or /_light_novels_themes/1.json
  def destroy
    @_light_novels_theme.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_themes_url, notice: "Light novels theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_theme
      @_light_novels_theme = LightNovelsTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_theme_params
      params.require(:light_novels_theme).permit(:name)
    end
end
