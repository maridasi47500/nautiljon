class AnimesCdsController < ApplicationController
  before_action :set_animes_cd, only: %i[ show edit update destroy ]

  # GET /animes_cds or /animes_cds.json
  def index
    @animes_cds = AnimesCd.all
  end

  # GET /animes_cds/1 or /animes_cds/1.json
  def show
  end

  # GET /animes_cds/new
  def new
    @animes_cd = AnimesCd.new
  end

  # GET /animes_cds/1/edit
  def edit
  end

  # POST /animes_cds or /animes_cds.json
  def create
    @animes_cd = AnimesCd.new(animes_cd_params)

    respond_to do |format|
      if @animes_cd.save
        format.html { redirect_to animes_cd_url(@animes_cd), notice: "Animes cd was successfully created." }
        format.json { render :show, status: :created, location: @animes_cd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_cds/1 or /animes_cds/1.json
  def update
    respond_to do |format|
      if @animes_cd.update(animes_cd_params)
        format.html { redirect_to animes_cd_url(@animes_cd), notice: "Animes cd was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_cd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_cds/1 or /animes_cds/1.json
  def destroy
    @animes_cd.destroy!

    respond_to do |format|
      format.html { redirect_to animes_cds_url, notice: "Animes cd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_cd
      @animes_cd = AnimesCd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_cd_params
      params.require(:animes_cd).permit(:name)
    end
end
