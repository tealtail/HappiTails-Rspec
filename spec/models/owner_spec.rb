describe Owner do
  it "requires a name" do
    o = Owner.create
    expect(o).to_not be_valid
  end

  it "has animals" do
    o = Owner.create(name: "Harold")
    expect(o).to respond_to(:animals)
  end

  it "is lonely without animals" do
    o = Owner.create(name: "Harold")
    expect(o).to be_lonely
  end

  it "is not lonely with animals" do
    o = Owner.create(name: "Harold")
    o.animals.create(name: "Kirby", species: "cat")
    expect(o).to_not be_lonely
  end
end