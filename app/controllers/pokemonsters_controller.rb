class PokemonstersController < ApplicationController
  before_action :set_pokemonster, only: %i[ show edit update destroy ]

  # GET /pokemonsters or /pokemonsters.json
  def index
    @pokemonsters = Pokemonster.all
  end

  # GET /pokemonsters/1 or /pokemonsters/1.json
  def show
  end

  # GET /pokemonsters/new
  def new
    @pokemonster = Pokemonster.new
  end

  # GET /pokemonsters/1/edit
  def edit
  end

  # POST /pokemonsters or /pokemonsters.json
  def create
    @pokemonster = Pokemonster.new(pokemonster_params)

    respond_to do |format|
      if @pokemonster.save
        format.html { redirect_to pokemonster_url(@pokemonster), notice: "Pokemonster was successfully created." }
        format.json { render :show, status: :created, location: @pokemonster }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pokemonster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemonsters/1 or /pokemonsters/1.json
  def update
    respond_to do |format|
      if @pokemonster.update(pokemonster_params)
        format.html { redirect_to pokemonster_url(@pokemonster), notice: "Pokemonster was successfully updated." }
        format.json { render :show, status: :ok, location: @pokemonster }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pokemonster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemonsters/1 or /pokemonsters/1.json
  def destroy
    @pokemonster.destroy!

    respond_to do |format|
      format.html { redirect_to pokemonsters_url, notice: "Pokemonster was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemonster
      @pokemonster = Pokemonster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokemonster_params
      params.require(:pokemonster).permit(:name, :pokemon_ID)
    end
end
