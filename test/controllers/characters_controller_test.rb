require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { agility: @character.agility, description: @character.description, dexterity: @character.dexterity, first_name: @character.first_name, history: @character.history, intelligence: @character.intelligence, last_name: @character.last_name, mind: @character.mind, nick_name: @character.nick_name, skills: @character.skills, strength: @character.strength, title: @character.title, traits: @character.traits, vitality: @character.vitality }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    patch :update, id: @character, character: { agility: @character.agility, description: @character.description, dexterity: @character.dexterity, first_name: @character.first_name, history: @character.history, intelligence: @character.intelligence, last_name: @character.last_name, mind: @character.mind, nick_name: @character.nick_name, skills: @character.skills, strength: @character.strength, title: @character.title, traits: @character.traits, vitality: @character.vitality }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
