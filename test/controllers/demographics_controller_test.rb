require 'test_helper'

class DemographicsControllerTest < ActionController::TestCase
  setup do
    @demographic = demographics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demographics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demographic" do
    assert_difference('Demographic.count') do
      post :create, demographic: { address: @demographic.address, aliases: @demographic.aliases, city: @demographic.city, dateOfLastUse: @demographic.dateOfLastUse, descriptionOfLastUse: @demographic.descriptionOfLastUse, drug_id: @demographic.drug_id, drugsUsed: @demographic.drugsUsed, ethnicity: @demographic.ethnicity, gender: @demographic.gender, incomeAmount: @demographic.incomeAmount, incomeDescription: @demographic.incomeDescription, listOfChildren: @demographic.listOfChildren, maritalStatus: @demographic.maritalStatus, nameOfSignificantOther: @demographic.nameOfSignificantOther, otherLanguagesSpoken: @demographic.otherLanguagesSpoken, phoneNumber: @demographic.phoneNumber, primaryLanguage: @demographic.primaryLanguage, probationParole: @demographic.probationParole, race: @demographic.race, resident_id: @demographic.resident_id, socialWorker: @demographic.socialWorker, state: @demographic.state, veteranStatus: @demographic.veteranStatus, zip: @demographic.zip }
    end

    assert_redirected_to demographic_path(assigns(:demographic))
  end

  test "should show demographic" do
    get :show, id: @demographic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demographic
    assert_response :success
  end

  test "should update demographic" do
    patch :update, id: @demographic, demographic: { address: @demographic.address, aliases: @demographic.aliases, city: @demographic.city, dateOfLastUse: @demographic.dateOfLastUse, descriptionOfLastUse: @demographic.descriptionOfLastUse, drug_id: @demographic.drug_id, drugsUsed: @demographic.drugsUsed, ethnicity: @demographic.ethnicity, gender: @demographic.gender, incomeAmount: @demographic.incomeAmount, incomeDescription: @demographic.incomeDescription, listOfChildren: @demographic.listOfChildren, maritalStatus: @demographic.maritalStatus, nameOfSignificantOther: @demographic.nameOfSignificantOther, otherLanguagesSpoken: @demographic.otherLanguagesSpoken, phoneNumber: @demographic.phoneNumber, primaryLanguage: @demographic.primaryLanguage, probationParole: @demographic.probationParole, race: @demographic.race, resident_id: @demographic.resident_id, socialWorker: @demographic.socialWorker, state: @demographic.state, veteranStatus: @demographic.veteranStatus, zip: @demographic.zip }
    assert_redirected_to demographic_path(assigns(:demographic))
  end

  test "should destroy demographic" do
    assert_difference('Demographic.count', -1) do
      delete :destroy, id: @demographic
    end

    assert_redirected_to demographics_path
  end
end
