class GeneriqueDeJeuVideosJvGenericsController < ApplicationController
  before_action :set__generique_de_jeu_videos_jv_generic, only: %i[ show edit update destroy ]

  # GET /_generique_de_jeu_videos_jv_generics or /_generique_de_jeu_videos_jv_generics.json
  def index
    @_generique_de_jeu_videos_jv_generics = GeneriqueDeJeuVideosJvGeneric.all
  end

  # GET /_generique_de_jeu_videos_jv_generics/1 or /_generique_de_jeu_videos_jv_generics/1.json
  def show
  end

  # GET /_generique_de_jeu_videos_jv_generics/new
  def new
    @_generique_de_jeu_videos_jv_generic = GeneriqueDeJeuVideosJvGeneric.new
  end

  # GET /_generique_de_jeu_videos_jv_generics/1/edit
  def edit
  end

  # POST /_generique_de_jeu_videos_jv_generics or /_generique_de_jeu_videos_jv_generics.json
  def create
    @_generique_de_jeu_videos_jv_generic = GeneriqueDeJeuVideosJvGeneric.new(_generique_de_jeu_videos_jv_generic_params)

    respond_to do |format|
      if @_generique_de_jeu_videos_jv_generic.save
        format.html { redirect_to generique_de_jeu_videos_jv_generic_url(@_generique_de_jeu_videos_jv_generic), notice: "Generique de jeu videos jv generic was successfully created." }
        format.json { render :show, status: :created, location: @_generique_de_jeu_videos_jv_generic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_jv_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generique_de_jeu_videos_jv_generics/1 or /_generique_de_jeu_videos_jv_generics/1.json
  def update
    respond_to do |format|
      if @_generique_de_jeu_videos_jv_generic.update(_generique_de_jeu_videos_jv_generic_params)
        format.html { redirect_to generique_de_jeu_videos_jv_generic_url(@_generique_de_jeu_videos_jv_generic), notice: "Generique de jeu videos jv generic was successfully updated." }
        format.json { render :show, status: :ok, location: @_generique_de_jeu_videos_jv_generic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_jv_generic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generique_de_jeu_videos_jv_generics/1 or /_generique_de_jeu_videos_jv_generics/1.json
  def destroy
    @_generique_de_jeu_videos_jv_generic.destroy!

    respond_to do |format|
      format.html { redirect_to generique_de_jeu_videos_jv_generics_url, notice: "Generique de jeu videos jv generic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generique_de_jeu_videos_jv_generic
      @_generique_de_jeu_videos_jv_generic = GeneriqueDeJeuVideosJvGeneric.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generique_de_jeu_videos_jv_generic_params
      params.require(:generique_de_jeu_videos_jv_generic).permit(:name)
    end
end
