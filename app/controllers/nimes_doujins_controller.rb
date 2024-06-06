class AnimesDoujinsController < ApplicationController
  before_action :set_animes_doujin, only: %i[ show edit update destroy ]

  # GET /animes_doujins or /animes_doujins.json
  def index
    @animes_doujins = AnimesDoujin.all
  end

  # GET /animes_doujins/1 or /animes_doujins/1.json
  def show
  end

  # GET /animes_doujins/new
  def new
    @animes_doujin = AnimesDoujin.new
  end

  # GET /animes_doujins/1/edit
  def edit
  end

  # POST /animes_doujins or /animes_doujins.json
  def create
    @animes_doujin = AnimesDoujin.new(animes_doujin_params)

    respond_to do |format|
      if @animes_doujin.save
        format.html { redirect_to animes_doujin_url(@animes_doujin), notice: "Animes doujin was successfully created." }
        format.json { render :show, status: :created, location: @animes_doujin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_doujins/1 or /animes_doujins/1.json
  def update
    respond_to do |format|
      if @animes_doujin.update(animes_doujin_params)
        format.html { redirect_to animes_doujin_url(@animes_doujin), notice: "Animes doujin was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_doujin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_doujins/1 or /animes_doujins/1.json
  def destroy
    @animes_doujin.destroy!

    respond_to do |format|
      format.html { redirect_to animes_doujins_url, notice: "Animes doujin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_doujin
      @animes_doujin = AnimesDoujin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_doujin_params
      params.require(:animes_doujin).permit(:name)
    end
end
