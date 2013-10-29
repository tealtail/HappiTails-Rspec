describe Animal do
  it "requires a name" do
    a = Animal.create
    expect(a).to_not be_valid
  end

  it "requires a species" do
    a = Animal.create(name: "Hector")
    expect(a).to_not be_valid
  end

  it "is available, without an owner" do
    a = Animal.create(name: "Hector", species: "cat")
    expect(a).to be_available
  end

  it "is not available, with an owner" do
    owner = Owner.create(name: "Spencer")
    a = owner.animals.create(name: "Hector", species: "cat")
    expect(a).to_not be_available
  end
end