class AnimesGroupesController < ApplicationController
  before_action :set_animes_groupe, only: %i[ show edit update destroy ]

  # GET /animes_groupes or /animes_groupes.json
  def index
    @animes_groupes = AnimesGroupe.all
  end

  # GET /animes_groupes/1 or /animes_groupes/1.json
  def show
  end

  # GET /animes_groupes/new
  def new
    @animes_groupe = AnimesGroupe.new
  end

  # GET /animes_groupes/1/edit
  def edit
  end

  # POST /animes_groupes or /animes_groupes.json
  def create
    @animes_groupe = AnimesGroupe.new(animes_groupe_params)

    respond_to do |format|
      if @animes_groupe.save
        format.html { redirect_to animes_groupe_url(@animes_groupe), notice: "Animes groupe was successfully created." }
        format.json { render :show, status: :created, location: @animes_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_groupes/1 or /animes_groupes/1.json
  def update
    respond_to do |format|
      if @animes_groupe.update(animes_groupe_params)
        format.html { redirect_to animes_groupe_url(@animes_groupe), notice: "Animes groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_groupes/1 or /animes_groupes/1.json
  def destroy
    @animes_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to animes_groupes_url, notice: "Animes groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_groupe
      @animes_groupe = AnimesGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_groupe_params
      params.require(:animes_groupe).permit(:name)
    end
end
