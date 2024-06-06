class AnimesOriginesController < ApplicationController
  before_action :set_animes_origine, only: %i[ show edit update destroy ]

  # GET /animes_origines or /animes_origines.json
  def index
    @animes_origines = AnimesOrigine.all
  end

  # GET /animes_origines/1 or /animes_origines/1.json
  def show
  end

  # GET /animes_origines/new
  def new
    @animes_origine = AnimesOrigine.new
  end

  # GET /animes_origines/1/edit
  def edit
  end

  # POST /animes_origines or /animes_origines.json
  def create
    @animes_origine = AnimesOrigine.new(animes_origine_params)

    respond_to do |format|
      if @animes_origine.save
        format.html { redirect_to animes_origine_url(@animes_origine), notice: "Animes origine was successfully created." }
        format.json { render :show, status: :created, location: @animes_origine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_origine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_origines/1 or /animes_origines/1.json
  def update
    respond_to do |format|
      if @animes_origine.update(animes_origine_params)
        format.html { redirect_to animes_origine_url(@animes_origine), notice: "Animes origine was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_origine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_origine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_origines/1 or /animes_origines/1.json
  def destroy
    @animes_origine.destroy!

    respond_to do |format|
      format.html { redirect_to animes_origines_url, notice: "Animes origine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_origine
      @animes_origine = AnimesOrigine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_origine_params
      params.require(:animes_origine).permit(:name)
    end
end
