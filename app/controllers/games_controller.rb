# frozen_string_literal: true

# update controller security measure to need Authentication
class GamesController < ProtectedController
  before_action :set_game, only: %i[show update destroy]
  # runs set_game before show, update and destroy are ran

  # GET /games
  def index
    @games = current_user.games

    render json: @games
  end

  # GET /games/1
  def show
    render json: current_user.games.find(params[:id])
  end

  # GET /games/name
  #
  def search
    @game = current_user.games.find_by(name: params[:name]) # test

    render json: @game
  end

  # POST /games
  def create
    @game = current_user.games.build(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = current_user.games.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def game_params
    params.require(:game).permit(:name, :developer, :year, :copy, :system, :multiplayer)
  end

  private :set_game, :game_params
end
