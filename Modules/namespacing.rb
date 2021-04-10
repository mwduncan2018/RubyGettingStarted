module Log
    APP_PREFIX = "LOG"

    def self.error(msg)
        puts "[#{APP_PREFIX}] ERROR: #{msg}"
    end

    def self.info(msg)
        puts "[#{APP_PREFIX}] INFO: #{msg}"
    end
end

Log.error("test1")
Log.info("test2")
puts "DONE"