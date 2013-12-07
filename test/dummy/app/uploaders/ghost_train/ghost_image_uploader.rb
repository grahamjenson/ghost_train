# encoding: utf-8
module GhostTrain
  class GhostImageUploader < CarrierWave::Uploader::Base

    storage :file

    def store_dir
      "uploads"
    end

    def filename
      "#{Time.now.to_i + [*1..100].sample}.jpg" if original_filename
    end
  end
end
