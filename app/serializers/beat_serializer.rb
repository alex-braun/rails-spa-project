class BeatSerializer < ActiveModel::Serializer
  attributes :id, :kick, :snare, :hatClose, :hatOpen, :clap, :order
  belongs_to :pattern
end
