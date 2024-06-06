class FilmsAsiatiquesThemesController < ApplicationController
  before_action :set__films_asiatiques_theme, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_themes or /_films_asiatiques_themes.json
  def index
    @_films_asiatiques_themes = FilmsAsiatiquesTheme.all
  end

  # GET /_films_asiatiques_themes/1 or /_films_asiatiques_themes/1.json
  def show
  end

  # GET /_films_asiatiques_themes/new
  def new
    @_films_asiatiques_theme = FilmsAsiatiquesTheme.new
  end

  # GET /_films_asiatiques_themes/1/edit
  def edit
  end

  # POST /_films_asiatiques_themes or /_films_asiatiques_themes.json
  def create
    @_films_asiatiques_theme = FilmsAsiatiquesTheme.new(_films_asiatiques_theme_params)

    respond_to do |format|
      if @_films_asiatiques_theme.save
        format.html { redirect_to _films_asiatiques_theme_url(@_films_asiatiques_theme), notice: "Films asiatiques theme was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_themes/1 or /_films_asiatiques_themes/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_theme.update(_films_asiatiques_theme_params)
        format.html { redirect_to _films_asiatiques_theme_url(@_films_asiatiques_theme), notice: "Films asiatiques theme was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_themes/1 or /_films_asiatiques_themes/1.json
  def destroy
    @_films_asiatiques_theme.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_themes_url, notice: "Films asiatiques theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_theme
      @_films_asiatiques_theme = FilmsAsiatiquesTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_theme_params
      params.require(:_films_asiatiques_theme).permit(:name)
    end
end
