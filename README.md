# A set of Objective-C classes that helps manipulating Western Musical Scales and Chords.

- Access the most commonly used chords and scales  
- Easy to add your own scales and chords via Ruby 
- Uses ARC



# Quick Start:

Copy all the files in the WMLib folder to your project and  `#import "WMPool.h"` where needed.

The ***WMPool*** is a singleton instance that provides the most commonly used Western Chords and  Scales.  
You can add your own scales and chords using the Ruby Script provided. (see the wiki for details)

You can ask for notes:  
`gSharp5 = [[WMPool pool]noteWithRoot:@"g" accidental:@"#" octave:5];`  
`c1 = [[WMPool pool]noteWithRoot:@"g" accidental:nil octave:1];`  

or more simply:  
`[[WMPool pool]noteWithShortName:@"c1"]`

You can also ask for *"Note Collections"*, that is , scales and chords, even inverted:   
 
`fSharp2Mixolydian = [[WMPool pool] scaleWithRoot:@"f" accidental:@"#" octave:2 scaleMode:WMScaleModeMixolydian];` 
 
`C3MajorChordInv2 = [[WMPool pool] chordWithRootShortName:@"C3" chordType:WMChordTypeMajor inversion:WMChordInversionSecond];`




The easiest calls are the one using ***"root note short names"*** like:  
`[[WMPool pool] chordWithRootShortName:@"C3" chordType:WMChordTypeMajor inversion:WMChordInversionRootPosition];`  

(Check the `WMPool.h`for what's in store)

##Note Short Name  
Root short names are formed of:

1. The note name
2. The accidental
3. The octave
 
The note name is written in "Letter Notation" and is not case sensitive.

The accidental, if any, is a "Sharp" noted "#". "Flat" is not supported. No accidental == natural.

Octaves are in the range of -1 to 9

Example of ***valid Note short names***:
`E-1` `F#-1` `C#8` `G5`

##Note Range

WMPool will provide notes in the range of:

- Notes: `C-1 to G9`
- Hertz: `8.176 to 12543.85`
- Midi Note Number: `0 to 127`

Of course, each WMNote embed that information, as well as the `cpspch` value used by programs like CSound. 

=========================================================================================================

Check the WMPool.h and WMData.h for more details 

#Western Musical Elements Test app screenshot:
<center>
![screenshot]  
(https://github.com/fredericcormier/WesternMusicElements/blob/master/Media/app_test_screenshot.png?raw=true)
</center>




