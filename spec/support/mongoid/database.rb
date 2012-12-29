module Database
  def self.connect
    Mongoid.configure do |config|
      Mongoid.configure do |config|
        config.connect_to("facteur_test")
      end
    end
  end
end