class AnimesAnimePlusController < ApplicationController
  before_action :set_animes_anime_plu, only: %i[ show edit update destroy ]

  # GET /animes_anime_plus or /animes_anime_plus.json
  def index
    @animes_anime_plus = AnimesAnimePlu.all
  end

  # GET /animes_anime_plus/1 or /animes_anime_plus/1.json
  def show
  end

  # GET /animes_anime_plus/new
  def new
    @animes_anime_plu = AnimesAnimePlu.new
  end

  # GET /animes_anime_plus/1/edit
  def edit
  end

  # POST /animes_anime_plus or /animes_anime_plus.json
  def create
    @animes_anime_plu = AnimesAnimePlu.new(animes_anime_plu_params)

    respond_to do |format|
      if @animes_anime_plu.save
        format.html { redirect_to animes_anime_plu_url(@animes_anime_plu), notice: "Animes anime plu was successfully created." }
        format.json { render :show, status: :created, location: @animes_anime_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_anime_plus/1 or /animes_anime_plus/1.json
  def update
    respond_to do |format|
      if @animes_anime_plu.update(animes_anime_plu_params)
        format.html { redirect_to animes_anime_plu_url(@animes_anime_plu), notice: "Animes anime plu was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_anime_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_anime_plus/1 or /animes_anime_plus/1.json
  def destroy
    @animes_anime_plu.destroy!

    respond_to do |format|
      format.html { redirect_to animes_anime_plus_url, notice: "Animes anime plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_anime_plu
      @animes_anime_plu = AnimesAnimePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_anime_plu_params
      params.require(:animes_anime_plu).permit(:name)
    end
end
