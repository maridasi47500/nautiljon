class DoujinshisThemesController < ApplicationController
  before_action :set__doujinshis_theme, only: %i[ show edit update destroy ]

  # GET /_doujinshis_themes or /_doujinshis_themes.json
  def index
    @_doujinshis_themes = DoujinshisTheme.all
  end

  # GET /_doujinshis_themes/1 or /_doujinshis_themes/1.json
  def show
  end

  # GET /_doujinshis_themes/new
  def new
    @_doujinshis_theme = DoujinshisTheme.new
  end

  # GET /_doujinshis_themes/1/edit
  def edit
  end

  # POST /_doujinshis_themes or /_doujinshis_themes.json
  def create
    @_doujinshis_theme = DoujinshisTheme.new(_doujinshis_theme_params)

    respond_to do |format|
      if @_doujinshis_theme.save
        format.html { redirect_to doujinshis_theme_url(@_doujinshis_theme), notice: "Doujinshis theme was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_themes/1 or /_doujinshis_themes/1.json
  def update
    respond_to do |format|
      if @_doujinshis_theme.update(_doujinshis_theme_params)
        format.html { redirect_to doujinshis_theme_url(@_doujinshis_theme), notice: "Doujinshis theme was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_themes/1 or /_doujinshis_themes/1.json
  def destroy
    @_doujinshis_theme.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_themes_url, notice: "Doujinshis theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_theme
      @_doujinshis_theme = DoujinshisTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_theme_params
      params.require(:doujinshis_theme).permit(:name)
    end
end
