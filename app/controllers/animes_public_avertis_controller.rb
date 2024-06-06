class AnimesPublicAvertisController < ApplicationController
  before_action :set_animes_public_averti, only: %i[ show edit update destroy ]

  # GET /animes_public_avertis or /animes_public_avertis.json
  def index
    @animes_public_avertis = AnimesPublicAverti.all
  end

  # GET /animes_public_avertis/1 or /animes_public_avertis/1.json
  def show
  end

  # GET /animes_public_avertis/new
  def new
    @animes_public_averti = AnimesPublicAverti.new
  end

  # GET /animes_public_avertis/1/edit
  def edit
  end

  # POST /animes_public_avertis or /animes_public_avertis.json
  def create
    @animes_public_averti = AnimesPublicAverti.new(animes_public_averti_params)

    respond_to do |format|
      if @animes_public_averti.save
        format.html { redirect_to animes_public_averti_url(@animes_public_averti), notice: "Animes public averti was successfully created." }
        format.json { render :show, status: :created, location: @animes_public_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_public_avertis/1 or /animes_public_avertis/1.json
  def update
    respond_to do |format|
      if @animes_public_averti.update(animes_public_averti_params)
        format.html { redirect_to animes_public_averti_url(@animes_public_averti), notice: "Animes public averti was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_public_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_public_avertis/1 or /animes_public_avertis/1.json
  def destroy
    @animes_public_averti.destroy!

    respond_to do |format|
      format.html { redirect_to animes_public_avertis_url, notice: "Animes public averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_public_averti
      @animes_public_averti = AnimesPublicAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_public_averti_params
      params.require(:animes_public_averti).permit(:name)
    end
end
