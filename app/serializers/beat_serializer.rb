class BeatSerializer < ActiveModel::Serializer
  attributes :id, :kick, :snare, :hatClose, :hatOpen, :clap
  belongs_to :pattern
end
