class AnimesThemesController < ApplicationController
  before_action :set_animes_theme, only: %i[ show edit update destroy ]

  # GET /animes_themes or /animes_themes.json
  def index
    @animes_themes = AnimesTheme.all
  end

  # GET /animes_themes/1 or /animes_themes/1.json
  def show
  end

  # GET /animes_themes/new
  def new
    @animes_theme = AnimesTheme.new
  end

  # GET /animes_themes/1/edit
  def edit
  end

  # POST /animes_themes or /animes_themes.json
  def create
    @animes_theme = AnimesTheme.new(animes_theme_params)

    respond_to do |format|
      if @animes_theme.save
        format.html { redirect_to animes_theme_url(@animes_theme), notice: "Animes theme was successfully created." }
        format.json { render :show, status: :created, location: @animes_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_themes/1 or /animes_themes/1.json
  def update
    respond_to do |format|
      if @animes_theme.update(animes_theme_params)
        format.html { redirect_to animes_theme_url(@animes_theme), notice: "Animes theme was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_themes/1 or /animes_themes/1.json
  def destroy
    @animes_theme.destroy!

    respond_to do |format|
      format.html { redirect_to animes_themes_url, notice: "Animes theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_theme
      @animes_theme = AnimesTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_theme_params
      params.require(:animes_theme).permit(:name)
    end
end
