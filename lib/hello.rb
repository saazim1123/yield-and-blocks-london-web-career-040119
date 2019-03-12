def hello_t(names)
  names.each do |name|
    puts "name"
  end 
end

# call your method here!

describe "#hello_t" do
  let (:names) { ["Tim", "Tom", "Jim"] }

  it "calls the block once for each element in the passed-in array" do
    expect{ hello_t(names){ |name| puts name } }
      .to output("Tim\nTom\nJim\n")
      .to_stdout
  end