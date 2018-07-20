class Image < ApplicationRecord
    belongs_to :portfolio, foreign_key: "portfolio_id"
end
