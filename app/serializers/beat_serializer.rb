class BeatSerializer < ActiveModel::Serializer
  attributes :id, :name, :kick, :snare, :hatClose, :hatOpen, :clap
end
