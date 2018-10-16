class Report < ApplicationRecord
  STATUS = {
    queued:     0,
    processing: 1,
    success:    2,
    error:      3
  }.freeze

  serialize :data, Hash
end
