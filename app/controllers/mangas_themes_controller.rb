class MangasThemesController < ApplicationController
  before_action :set__mangas_theme, only: %i[ show edit update destroy ]

  # GET /_mangas_themes or /_mangas_themes.json
  def index
    @_mangas_themes = MangasTheme.all
  end

  # GET /_mangas_themes/1 or /_mangas_themes/1.json
  def show
  end

  # GET /_mangas_themes/new
  def new
    @_mangas_theme = MangasTheme.new
  end

  # GET /_mangas_themes/1/edit
  def edit
  end

  # POST /_mangas_themes or /_mangas_themes.json
  def create
    @_mangas_theme = MangasTheme.new(_mangas_theme_params)

    respond_to do |format|
      if @_mangas_theme.save
        format.html { redirect_to mangas_theme_url(@_mangas_theme), notice: "Mangas theme was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_themes/1 or /_mangas_themes/1.json
  def update
    respond_to do |format|
      if @_mangas_theme.update(_mangas_theme_params)
        format.html { redirect_to mangas_theme_url(@_mangas_theme), notice: "Mangas theme was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_themes/1 or /_mangas_themes/1.json
  def destroy
    @_mangas_theme.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_themes_url, notice: "Mangas theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_theme
      @_mangas_theme = MangasTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_theme_params
      params.require(:mangas_theme).permit(:name)
    end
end
