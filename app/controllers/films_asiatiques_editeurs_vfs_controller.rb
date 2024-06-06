class FilmsAsiatiquesEditeursVfsController < ApplicationController
  before_action :set__films_asiatiques_editeurs_vf, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_editeurs_vfs or /_films_asiatiques_editeurs_vfs.json
  def index
    @_films_asiatiques_editeurs_vfs = FilmsAsiatiquesEditeursVf.all
  end

  # GET /_films_asiatiques_editeurs_vfs/1 or /_films_asiatiques_editeurs_vfs/1.json
  def show
  end

  # GET /_films_asiatiques_editeurs_vfs/new
  def new
    @_films_asiatiques_editeurs_vf = FilmsAsiatiquesEditeursVf.new
  end

  # GET /_films_asiatiques_editeurs_vfs/1/edit
  def edit
  end

  # POST /_films_asiatiques_editeurs_vfs or /_films_asiatiques_editeurs_vfs.json
  def create
    @_films_asiatiques_editeurs_vf = FilmsAsiatiquesEditeursVf.new(_films_asiatiques_editeurs_vf_params)

    respond_to do |format|
      if @_films_asiatiques_editeurs_vf.save
        format.html { redirect_to films_asiatiques_editeurs_vf_url(@_films_asiatiques_editeurs_vf), notice: "Films asiatiques editeurs vf was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_editeurs_vf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_editeurs_vfs/1 or /_films_asiatiques_editeurs_vfs/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_editeurs_vf.update(_films_asiatiques_editeurs_vf_params)
        format.html { redirect_to films_asiatiques_editeurs_vf_url(@_films_asiatiques_editeurs_vf), notice: "Films asiatiques editeurs vf was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_editeurs_vf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_editeurs_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_editeurs_vfs/1 or /_films_asiatiques_editeurs_vfs/1.json
  def destroy
    @_films_asiatiques_editeurs_vf.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_editeurs_vfs_url, notice: "Films asiatiques editeurs vf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_editeurs_vf
      @_films_asiatiques_editeurs_vf = FilmsAsiatiquesEditeursVf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_editeurs_vf_params
      params.require(:films_asiatiques_editeurs_vf).permit(:name)
    end
end
