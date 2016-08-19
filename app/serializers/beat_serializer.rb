class BeatSerializer < ActiveModel::Serializer
  attributes :id, :kick, :snare, :hatClose, :hatOpen, :clap, :order, :pattern_id
  has_one :pattern
end
