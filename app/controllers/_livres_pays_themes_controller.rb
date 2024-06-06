class LivresPaysThemesController < ApplicationController
  before_action :set__livres_pays_theme, only: %i[ show edit update destroy ]

  # GET /_livres_pays_themes or /_livres_pays_themes.json
  def index
    @_livres_pays_themes = LivresPaysTheme.all
  end

  # GET /_livres_pays_themes/1 or /_livres_pays_themes/1.json
  def show
  end

  # GET /_livres_pays_themes/new
  def new
    @_livres_pays_theme = LivresPaysTheme.new
  end

  # GET /_livres_pays_themes/1/edit
  def edit
  end

  # POST /_livres_pays_themes or /_livres_pays_themes.json
  def create
    @_livres_pays_theme = LivresPaysTheme.new(_livres_pays_theme_params)

    respond_to do |format|
      if @_livres_pays_theme.save
        format.html { redirect_to _livres_pays_theme_url(@_livres_pays_theme), notice: "Livres pays theme was successfully created." }
        format.json { render :show, status: :created, location: @_livres_pays_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_pays_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_pays_themes/1 or /_livres_pays_themes/1.json
  def update
    respond_to do |format|
      if @_livres_pays_theme.update(_livres_pays_theme_params)
        format.html { redirect_to _livres_pays_theme_url(@_livres_pays_theme), notice: "Livres pays theme was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_pays_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_pays_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_pays_themes/1 or /_livres_pays_themes/1.json
  def destroy
    @_livres_pays_theme.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_pays_themes_url, notice: "Livres pays theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_pays_theme
      @_livres_pays_theme = LivresPaysTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_pays_theme_params
      params.require(:_livres_pays_theme).permit(:name)
    end
end
