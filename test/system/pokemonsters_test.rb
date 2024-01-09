require "application_system_test_case"

class PokemonstersTest < ApplicationSystemTestCase
  setup do
    @pokemonster = pokemonsters(:one)
  end

  test "visiting the index" do
    visit pokemonsters_url
    assert_selector "h1", text: "Pokemonsters"
  end

  test "should create pokemonster" do
    visit pokemonsters_url
    click_on "New pokemonster"

    fill_in "Name", with: @pokemonster.name
    fill_in "Pokemon id", with: @pokemonster.pokemon_ID
    click_on "Create Pokemonster"

    assert_text "Pokemonster was successfully created"
    click_on "Back"
  end

  test "should update Pokemonster" do
    visit pokemonster_url(@pokemonster)
    click_on "Edit this pokemonster", match: :first

    fill_in "Name", with: @pokemonster.name
    fill_in "Pokemon id", with: @pokemonster.pokemon_ID
    click_on "Update Pokemonster"

    assert_text "Pokemonster was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokemonster" do
    visit pokemonster_url(@pokemonster)
    click_on "Destroy this pokemonster", match: :first

    assert_text "Pokemonster was successfully destroyed"
  end
end
