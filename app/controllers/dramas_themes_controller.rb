class DramasThemesController < ApplicationController
  before_action :set__dramas_theme, only: %i[ show edit update destroy ]

  # GET /_dramas_themes or /_dramas_themes.json
  def index
    @_dramas_themes = DramasTheme.all
  end

  # GET /_dramas_themes/1 or /_dramas_themes/1.json
  def show
  end

  # GET /_dramas_themes/new
  def new
    @_dramas_theme = DramasTheme.new
  end

  # GET /_dramas_themes/1/edit
  def edit
  end

  # POST /_dramas_themes or /_dramas_themes.json
  def create
    @_dramas_theme = DramasTheme.new(_dramas_theme_params)

    respond_to do |format|
      if @_dramas_theme.save
        format.html { redirect_to dramas_theme_url(@_dramas_theme), notice: "Dramas theme was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_themes/1 or /_dramas_themes/1.json
  def update
    respond_to do |format|
      if @_dramas_theme.update(_dramas_theme_params)
        format.html { redirect_to dramas_theme_url(@_dramas_theme), notice: "Dramas theme was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_themes/1 or /_dramas_themes/1.json
  def destroy
    @_dramas_theme.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_themes_url, notice: "Dramas theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_theme
      @_dramas_theme = DramasTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_theme_params
      params.require(:dramas_theme).permit(:name)
    end
end
