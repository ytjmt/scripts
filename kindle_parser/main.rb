require "nokogiri"

# cp ~/Library/Application\ Support/Kindle/Cache/KindleSyncMetadataCache.xml ./

xml = Nokogiri::XML.parse(File.read("./KindleSyncMetadataCache.xml"))
puts xml.xpath("//add_update_list/meta_data/ASIN").map(&:text)
