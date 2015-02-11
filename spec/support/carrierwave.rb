CarrierWave.configure do |config|
  config.enable_processing = false
end


CarrierWave::Uploader::Base.descendants.each do |klass|
  next if klass.anonymous?
  klass.class_eval do
    def cache_dir
      "#{Rails.root}/public/uploads/test/tmp"
    end

    def store_dir
      "#{Rails.root}/public/uploads/test/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  end
end

RSpec.configure do |config|
  config.after(:all) do
    FileUtils.rm_rf(Dir["#{Rails.root}/public/uploads/test"])
  end
end
