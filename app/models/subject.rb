class Subject < ApplicationRecord
    # could just use where(visible: true) but using Subject.visible is clearer and shorter
    scope :visible, -> { where(visible: true) }
    scope :invisible, -> { where(visible: true) }
end
