class LivresThemesController < ApplicationController
  before_action :set__livres_theme, only: %i[ show edit update destroy ]

  # GET /_livres_themes or /_livres_themes.json
  def index
    @_livres_themes = LivresTheme.all
  end

  # GET /_livres_themes/1 or /_livres_themes/1.json
  def show
  end

  # GET /_livres_themes/new
  def new
    @_livres_theme = LivresTheme.new
  end

  # GET /_livres_themes/1/edit
  def edit
  end

  # POST /_livres_themes or /_livres_themes.json
  def create
    @_livres_theme = LivresTheme.new(_livres_theme_params)

    respond_to do |format|
      if @_livres_theme.save
        format.html { redirect_to livres_theme_url(@_livres_theme), notice: "Livres theme was successfully created." }
        format.json { render :show, status: :created, location: @_livres_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_themes/1 or /_livres_themes/1.json
  def update
    respond_to do |format|
      if @_livres_theme.update(_livres_theme_params)
        format.html { redirect_to livres_theme_url(@_livres_theme), notice: "Livres theme was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_themes/1 or /_livres_themes/1.json
  def destroy
    @_livres_theme.destroy!

    respond_to do |format|
      format.html { redirect_to livres_themes_url, notice: "Livres theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_theme
      @_livres_theme = LivresTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_theme_params
      params.require(:livres_theme).permit(:name)
    end
end
