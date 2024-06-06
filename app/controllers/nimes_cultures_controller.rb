class AnimesCulturesController < ApplicationController
  before_action :set_animes_culture, only: %i[ show edit update destroy ]

  # GET /animes_cultures or /animes_cultures.json
  def index
    @animes_cultures = AnimesCulture.all
  end

  # GET /animes_cultures/1 or /animes_cultures/1.json
  def show
  end

  # GET /animes_cultures/new
  def new
    @animes_culture = AnimesCulture.new
  end

  # GET /animes_cultures/1/edit
  def edit
  end

  # POST /animes_cultures or /animes_cultures.json
  def create
    @animes_culture = AnimesCulture.new(animes_culture_params)

    respond_to do |format|
      if @animes_culture.save
        format.html { redirect_to animes_culture_url(@animes_culture), notice: "Animes culture was successfully created." }
        format.json { render :show, status: :created, location: @animes_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_cultures/1 or /animes_cultures/1.json
  def update
    respond_to do |format|
      if @animes_culture.update(animes_culture_params)
        format.html { redirect_to animes_culture_url(@animes_culture), notice: "Animes culture was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_cultures/1 or /animes_cultures/1.json
  def destroy
    @animes_culture.destroy!

    respond_to do |format|
      format.html { redirect_to animes_cultures_url, notice: "Animes culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_culture
      @animes_culture = AnimesCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_culture_params
      params.require(:animes_culture).permit(:name)
    end
end
