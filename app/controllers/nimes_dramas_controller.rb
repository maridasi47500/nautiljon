class AnimesDramasController < ApplicationController
  before_action :set_animes_drama, only: %i[ show edit update destroy ]

  # GET /animes_dramas or /animes_dramas.json
  def index
    @animes_dramas = AnimesDrama.all
  end

  # GET /animes_dramas/1 or /animes_dramas/1.json
  def show
  end

  # GET /animes_dramas/new
  def new
    @animes_drama = AnimesDrama.new
  end

  # GET /animes_dramas/1/edit
  def edit
  end

  # POST /animes_dramas or /animes_dramas.json
  def create
    @animes_drama = AnimesDrama.new(animes_drama_params)

    respond_to do |format|
      if @animes_drama.save
        format.html { redirect_to animes_drama_url(@animes_drama), notice: "Animes drama was successfully created." }
        format.json { render :show, status: :created, location: @animes_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_dramas/1 or /animes_dramas/1.json
  def update
    respond_to do |format|
      if @animes_drama.update(animes_drama_params)
        format.html { redirect_to animes_drama_url(@animes_drama), notice: "Animes drama was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_dramas/1 or /animes_dramas/1.json
  def destroy
    @animes_drama.destroy!

    respond_to do |format|
      format.html { redirect_to animes_dramas_url, notice: "Animes drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_drama
      @animes_drama = AnimesDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_drama_params
      params.require(:animes_drama).permit(:name)
    end
end
