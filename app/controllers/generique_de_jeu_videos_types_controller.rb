class GeneriqueDeJeuVideosTypesController < ApplicationController
  before_action :set__generique_de_jeu_videos_type, only: %i[ show edit update destroy ]

  # GET /_generique_de_jeu_videos_types or /_generique_de_jeu_videos_types.json
  def index
    @_generique_de_jeu_videos_types = GeneriqueDeJeuVideosType.all
  end

  # GET /_generique_de_jeu_videos_types/1 or /_generique_de_jeu_videos_types/1.json
  def show
  end

  # GET /_generique_de_jeu_videos_types/new
  def new
    @_generique_de_jeu_videos_type = GeneriqueDeJeuVideosType.new
  end

  # GET /_generique_de_jeu_videos_types/1/edit
  def edit
  end

  # POST /_generique_de_jeu_videos_types or /_generique_de_jeu_videos_types.json
  def create
    @_generique_de_jeu_videos_type = GeneriqueDeJeuVideosType.new(_generique_de_jeu_videos_type_params)

    respond_to do |format|
      if @_generique_de_jeu_videos_type.save
        format.html { redirect_to generique_de_jeu_videos_type_url(@_generique_de_jeu_videos_type), notice: "Generique de jeu videos type was successfully created." }
        format.json { render :show, status: :created, location: @_generique_de_jeu_videos_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generique_de_jeu_videos_types/1 or /_generique_de_jeu_videos_types/1.json
  def update
    respond_to do |format|
      if @_generique_de_jeu_videos_type.update(_generique_de_jeu_videos_type_params)
        format.html { redirect_to generique_de_jeu_videos_type_url(@_generique_de_jeu_videos_type), notice: "Generique de jeu videos type was successfully updated." }
        format.json { render :show, status: :ok, location: @_generique_de_jeu_videos_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generique_de_jeu_videos_types/1 or /_generique_de_jeu_videos_types/1.json
  def destroy
    @_generique_de_jeu_videos_type.destroy!

    respond_to do |format|
      format.html { redirect_to generique_de_jeu_videos_types_url, notice: "Generique de jeu videos type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generique_de_jeu_videos_type
      @_generique_de_jeu_videos_type = GeneriqueDeJeuVideosType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generique_de_jeu_videos_type_params
      params.require(:generique_de_jeu_videos_type).permit(:name)
    end
end
