require "test_helper"

class PokemonstersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemonster = pokemonsters(:one)
  end

  test "should get index" do
    get pokemonsters_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemonster_url
    assert_response :success
  end

  test "should create pokemonster" do
    assert_difference("Pokemonster.count") do
      post pokemonsters_url, params: { pokemonster: { name: @pokemonster.name, pokemon_ID: @pokemonster.pokemon_ID } }
    end

    assert_redirected_to pokemonster_url(Pokemonster.last)
  end

  test "should show pokemonster" do
    get pokemonster_url(@pokemonster)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemonster_url(@pokemonster)
    assert_response :success
  end

  test "should update pokemonster" do
    patch pokemonster_url(@pokemonster), params: { pokemonster: { name: @pokemonster.name, pokemon_ID: @pokemonster.pokemon_ID } }
    assert_redirected_to pokemonster_url(@pokemonster)
  end

  test "should destroy pokemonster" do
    assert_difference("Pokemonster.count", -1) do
      delete pokemonster_url(@pokemonster)
    end

    assert_redirected_to pokemonsters_url
  end
end
