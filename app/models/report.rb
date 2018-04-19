class Report < ApplicationRecord
  STATUS = {
    queue:      0,
    processing: 1,
    success:    2,
    error:      3
  }.freeze

  serialize :data, Hash
end
