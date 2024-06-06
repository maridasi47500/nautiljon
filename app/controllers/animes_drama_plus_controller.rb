class AnimesDramaPlusController < ApplicationController
  before_action :set_animes_drama_plu, only: %i[ show edit update destroy ]

  # GET /animes_drama_plus or /animes_drama_plus.json
  def index
    @animes_drama_plus = AnimesDramaPlu.all
  end

  # GET /animes_drama_plus/1 or /animes_drama_plus/1.json
  def show
  end

  # GET /animes_drama_plus/new
  def new
    @animes_drama_plu = AnimesDramaPlu.new
  end

  # GET /animes_drama_plus/1/edit
  def edit
  end

  # POST /animes_drama_plus or /animes_drama_plus.json
  def create
    @animes_drama_plu = AnimesDramaPlu.new(animes_drama_plu_params)

    respond_to do |format|
      if @animes_drama_plu.save
        format.html { redirect_to animes_drama_plu_url(@animes_drama_plu), notice: "Animes drama plu was successfully created." }
        format.json { render :show, status: :created, location: @animes_drama_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_drama_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_drama_plus/1 or /animes_drama_plus/1.json
  def update
    respond_to do |format|
      if @animes_drama_plu.update(animes_drama_plu_params)
        format.html { redirect_to animes_drama_plu_url(@animes_drama_plu), notice: "Animes drama plu was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_drama_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_drama_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_drama_plus/1 or /animes_drama_plus/1.json
  def destroy
    @animes_drama_plu.destroy!

    respond_to do |format|
      format.html { redirect_to animes_drama_plus_url, notice: "Animes drama plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_drama_plu
      @animes_drama_plu = AnimesDramaPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_drama_plu_params
      params.require(:animes_drama_plu).permit(:name)
    end
end
