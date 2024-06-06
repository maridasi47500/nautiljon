class GeneriqueDeJeuVideosJvsController < ApplicationController
  before_action :set__generique_de_jeu_videos_jv, only: %i[ show edit update destroy ]

  # GET /_generique_de_jeu_videos_jvs or /_generique_de_jeu_videos_jvs.json
  def index
    @_generique_de_jeu_videos_jvs = GeneriqueDeJeuVideosJv.all
  end

  # GET /_generique_de_jeu_videos_jvs/1 or /_generique_de_jeu_videos_jvs/1.json
  def show
  end

  # GET /_generique_de_jeu_videos_jvs/new
  def new
    @_generique_de_jeu_videos_jv = GeneriqueDeJeuVideosJv.new
  end

  # GET /_generique_de_jeu_videos_jvs/1/edit
  def edit
  end

  # POST /_generique_de_jeu_videos_jvs or /_generique_de_jeu_videos_jvs.json
  def create
    @_generique_de_jeu_videos_jv = GeneriqueDeJeuVideosJv.new(_generique_de_jeu_videos_jv_params)

    respond_to do |format|
      if @_generique_de_jeu_videos_jv.save
        format.html { redirect_to _generique_de_jeu_videos_jv_url(@_generique_de_jeu_videos_jv), notice: "Generique de jeu videos jv was successfully created." }
        format.json { render :show, status: :created, location: @_generique_de_jeu_videos_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generique_de_jeu_videos_jvs/1 or /_generique_de_jeu_videos_jvs/1.json
  def update
    respond_to do |format|
      if @_generique_de_jeu_videos_jv.update(_generique_de_jeu_videos_jv_params)
        format.html { redirect_to _generique_de_jeu_videos_jv_url(@_generique_de_jeu_videos_jv), notice: "Generique de jeu videos jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_generique_de_jeu_videos_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generique_de_jeu_videos_jvs/1 or /_generique_de_jeu_videos_jvs/1.json
  def destroy
    @_generique_de_jeu_videos_jv.destroy!

    respond_to do |format|
      format.html { redirect_to _generique_de_jeu_videos_jvs_url, notice: "Generique de jeu videos jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generique_de_jeu_videos_jv
      @_generique_de_jeu_videos_jv = GeneriqueDeJeuVideosJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generique_de_jeu_videos_jv_params
      params.require(:_generique_de_jeu_videos_jv).permit(:name)
    end
end
