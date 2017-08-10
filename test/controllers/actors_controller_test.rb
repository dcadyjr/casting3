require 'test_helper'

class ActorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actor = actors(:one)
  end

  test "should get index" do
    get actors_url
    assert_response :success
  end

  test "should get new" do
    get new_actor_url
    assert_response :success
  end

  test "should create actor" do
    assert_difference('Actor.count') do
      post actors_url, params: { actor: { agent: @actor.agent, city: @actor.city, dob: @actor.dob, dress_size: @actor.dress_size, email: @actor.email, ethnicity: @actor.ethnicity, eye_color: @actor.eye_color, first_name: @actor.first_name, gender: @actor.gender, hair_color: @actor.hair_color, ht_feet: @actor.ht_feet, ht_inches: @actor.ht_inches, image_url: @actor.image_url, inseam: @actor.inseam, last_name: @actor.last_name, password_digest: @actor.password_digest, shirt_size: @actor.shirt_size, shoe_size: @actor.shoe_size, state: @actor.state, street_address: @actor.street_address, suit_size: @actor.suit_size, tel_no: @actor.tel_no, union: @actor.union, waist: @actor.waist, weight: @actor.weight, zip_code: @actor.zip_code } }
    end

    assert_redirected_to actor_url(Actor.last)
  end

  test "should show actor" do
    get actor_url(@actor)
    assert_response :success
  end

  test "should get edit" do
    get edit_actor_url(@actor)
    assert_response :success
  end

  test "should update actor" do
    patch actor_url(@actor), params: { actor: { agent: @actor.agent, city: @actor.city, dob: @actor.dob, dress_size: @actor.dress_size, email: @actor.email, ethnicity: @actor.ethnicity, eye_color: @actor.eye_color, first_name: @actor.first_name, gender: @actor.gender, hair_color: @actor.hair_color, ht_feet: @actor.ht_feet, ht_inches: @actor.ht_inches, image_url: @actor.image_url, inseam: @actor.inseam, last_name: @actor.last_name, password_digest: @actor.password_digest, shirt_size: @actor.shirt_size, shoe_size: @actor.shoe_size, state: @actor.state, street_address: @actor.street_address, suit_size: @actor.suit_size, tel_no: @actor.tel_no, union: @actor.union, waist: @actor.waist, weight: @actor.weight, zip_code: @actor.zip_code } }
    assert_redirected_to actor_url(@actor)
  end

  test "should destroy actor" do
    assert_difference('Actor.count', -1) do
      delete actor_url(@actor)
    end

    assert_redirected_to actors_url
  end
end
