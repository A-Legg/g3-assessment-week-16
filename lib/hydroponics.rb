require 'csv'

    # containers = {}
    #
    # CSV.foreach('data/metrics.tsv', {:col_sep => ' '}) do |line|
    # @hydro = containers[line[3].strip] = {nutrient_solution_level: line[4].to_i, average_temperature:line[5].to_f, water_levt: line[6].to_f}
    #   puts @hydro
    # end
    #



    CSV.foreach('data/metrics.tsv', {:col_sep => ' '}) do |line|
      @file = Hash[line[3] => {ph: line[4].to_i, nutrient_solution_level: line[5].to_f, average_temperature: line[6].to_f, average_water_level: line[7].to_f}]

      puts @file

      # if  @file.has_key?('container1')
      #
      # p Hash[@file.map {|k,v| [k, v.map(&:last).inject(:+) / v.size] }]
      # end

  end
