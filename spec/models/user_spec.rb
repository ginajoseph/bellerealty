describe User do

  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end

  it "is invalid without first name" do
    FactoryGirl.build(:user, first_name: nil).should_not be_valid
  end

  it 'is invalid without last name ' do
    FactoryGirl.build(:user, last_name: nil).should_not be_valid
  end

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
  end

  it "returns a user's full name as a string" do
    user = FactoryGirl.build(:user, first_name: "Bo", last_name: "Joseph")
    user.full_name.should == "Bo Joseph"
  end

end
