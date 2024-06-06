class AnimesMangaPlusController < ApplicationController
  before_action :set_animes_manga_plu, only: %i[ show edit update destroy ]

  # GET /animes_manga_plus or /animes_manga_plus.json
  def index
    @animes_manga_plus = AnimesMangaPlu.all
  end

  # GET /animes_manga_plus/1 or /animes_manga_plus/1.json
  def show
  end

  # GET /animes_manga_plus/new
  def new
    @animes_manga_plu = AnimesMangaPlu.new
  end

  # GET /animes_manga_plus/1/edit
  def edit
  end

  # POST /animes_manga_plus or /animes_manga_plus.json
  def create
    @animes_manga_plu = AnimesMangaPlu.new(animes_manga_plu_params)

    respond_to do |format|
      if @animes_manga_plu.save
        format.html { redirect_to animes_manga_plu_url(@animes_manga_plu), notice: "Animes manga plu was successfully created." }
        format.json { render :show, status: :created, location: @animes_manga_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_manga_plus/1 or /animes_manga_plus/1.json
  def update
    respond_to do |format|
      if @animes_manga_plu.update(animes_manga_plu_params)
        format.html { redirect_to animes_manga_plu_url(@animes_manga_plu), notice: "Animes manga plu was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_manga_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_manga_plus/1 or /animes_manga_plus/1.json
  def destroy
    @animes_manga_plu.destroy!

    respond_to do |format|
      format.html { redirect_to animes_manga_plus_url, notice: "Animes manga plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_manga_plu
      @animes_manga_plu = AnimesMangaPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_manga_plu_params
      params.require(:animes_manga_plu).permit(:name)
    end
end
