require 'simplecov'
require 'coveralls'

Coveralls.wear!
SimpleCov.start

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
]

require_relative '../lib/Algorithm/largest_integer'
require_relative '../lib/Algorithm/1_1_26_sorting_three_numbers'
require_relative '../lib/Algorithm/1_1_26_sorting_four_numbers'
require_relative '../lib/Algorithm/1_1_26_sorting_n_numbers'
require_relative '../lib/Algorithm/1_1_28_binary_search'
