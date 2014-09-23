require 'spec_helper'

describe 'HydroponicsParser' do
  def read_file(file)
    my_file = ""
    File.open(file, 'r') do |f|
      f.each_line {|line| my_file += line }
    end
    my_file
  end

  def response(file)
    HydroponicsParser.new(read_file(file))
  end

  describe 'metrics.tsv' do
    it 'should return a hash with key values and averages' do
      expect(response('data/metrics.tsv').averages).to eq(conatiner1 = {ph: 5.01, nutrient_solution_level: 39.02, temperature: 57.76, water_level: 2.12})
    end

  end


end