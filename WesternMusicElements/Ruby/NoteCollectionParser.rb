#!/usr/bin/env ruby


pathToWMRubyDirectory = File.join(ENV['PROJECT_DIR'],'WesternMusicElements','Ruby')

require File.join(pathToWMRubyDirectory,'WMRubyData')

require "rubygems"
require "json"

include WMRubyData

ChordCollection   = 1
ScaleCollection   = 0

ChordTypeString = "WMChordType"
ScaleTypeString = "WMScaleMode"

class OBJCKey
    class << self
    
    def nsstring s, collectionType
        out_string = ""
        if collectionType == ChordCollection
            type = ChordTypeString
            else
            type = ScaleTypeString
        end
        out_string << "static " << type << " "
        out_string << "*#{type}"<< camelcasify(s)
        out_string << "\t\t\t\t = " << "@\"#{s}\";"
        out_string      
    end
    
    def camelcasify s
        out_string = ""
        tokens = s.split()
        tokens.map! { |e| e.capitalize }
        out_string = tokens.join    
    end
end  
end

#Export chords to json

File.open(File.join(pathToWMRubyDirectory,"chords.json"),"w") do |f|
    CHORDS.to_json.each { |l| f << l.to_s << "\n" }
end

#Export scales  to json

File.open(File.join(pathToWMRubyDirectory,"scales.json"),"w") do |f|
    SCALES.to_json.each { |l| f << l.to_s << "\n" }
end


# if your using git or nay other source control system, you may not want 
# to have the log file updated at every build.
# To use the log file, just comment out  the next method.
=begin
File.open(File.join(pathToWMRubyDirectory,"log.txt"),"w") do |f|
    f << Time.now << "\n"
    f << "Project Directory: " << ENV['PROJECT_DIR']<<"\n"
    f << "WMRuby Directory: " << pathToWMRubyDirectory
end  
=end

#Comment out next line to debug paths problems
#system("open #{pathToWMRubyDirectory}/log.txt")

#generate  static NSStrings for chord and scale keys

File.open(File.join(pathToWMRubyDirectory,"WMNoteCollectionKeys.h"), "w") do |f|
    f << WMRubyData::FILE_HEADER << "\n"
    f << "typedef NSString WMChordType;" <<"\n\n"
    WMRubyData::CHORDS.each do |k,v|  
        f << OBJCKey::nsstring(k,ChordCollection) << "\n"
    end
    f << "\n"
    f << "typedef NSString WMScaleMode;" <<"\n\n"
    WMRubyData::SCALES.each do |k,v|
        f <<  OBJCKey::nsstring(k,ScaleCollection) << "\n"
    end   
end





