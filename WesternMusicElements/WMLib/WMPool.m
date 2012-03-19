//
//  WMPool.m
//  WesternMusicElements
//
//  Created by Cormier Frederic on 05/03/12.
//  Copyright (c) 2012 International MicrOondes. All rights reserved.
//

#import "WMPool.h"
#import "WMNote.h"
#import "WMScale.h"
#import "WMChord.h"

static WMPool *pool;

@interface WMPool() 


@property (strong, nonatomic)NSArray *allNotes;
@property (strong, nonatomic)NSDictionary* scaleDefinitions;
@property (strong, nonatomic)NSDictionary* chordDefinitions;

- (NSArray *)prepareNotes;
- (NSDictionary *)loadChordsDefinitionsFromJSONFile;
- (NSDictionary *)loadScalesDefinitionsFromJSONFile;


@end

@implementation WMPool
@synthesize allNotes = allNotes_;
@synthesize scaleDefinitions =  scaleDefinitions_;
@synthesize chordDefinitions = chordDefinitions_;

+ (WMPool *)pool {
    if (!pool) {
        pool = [[super allocWithZone:NULL] init];
    }
    return pool;
}


+ (id)allocWithZone:(NSZone *)zone { return [self pool]; };


- (id)init {
    if (pool) 
        return pool;
    else {
        if((self = [super init])){
            allNotes_ =[self prepareNotes];
            chordDefinitions_ = [self loadChordsDefinitionsFromJSONFile];
            scaleDefinitions_ = [self loadScalesDefinitionsFromJSONFile];
        }
    }
    return self;
}

- (NSDictionary *)scaleDefinitions {
    return scaleDefinitions_;
}


- (NSDictionary *)chordDefinitions {
    return chordDefinitions_;
}

- (NSArray *)allNotes {
    return allNotes_;
}

- (NSDictionary *)loadChordsDefinitionsFromJSONFile {
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"chords" ofType:@"json"];    
    NSError *error;
    NSData *jsonData = [NSData dataWithContentsOfFile:path];
    NSDictionary *jsonChords = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
    if (error) {
        NSLog(@"Error :%@ , %@", error, [error userInfo]);
    }
    return jsonChords;
}


- (NSDictionary *)loadScalesDefinitionsFromJSONFile {
    NSString *path = [[NSBundle mainBundle]pathForResource:@"scales" ofType:@"json"];
    NSError *error;
    NSData *jsonData = [NSData dataWithContentsOfFile:path];
    NSDictionary *jsonScales = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
    if (error) {
        NSLog(@"Error :%@ , %@", error, [error userInfo]);
    }
    return jsonScales;
}    





- (NSArray *)prepareNotes {
    return  [[NSArray alloc] initWithObjects:
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:-1 withMidiNoteNumber:0 andCpspch:3.0 atFrequency:8.176 forShortName:@"C-1"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:-1 withMidiNoteNumber:1 andCpspch:3.01 atFrequency:8.662 forShortName:@"C#-1"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:-1 withMidiNoteNumber:2 andCpspch:3.02 atFrequency:9.177 forShortName:@"D-1"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:-1 withMidiNoteNumber:3 andCpspch:3.03 atFrequency:9.723 forShortName:@"D#-1"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:-1 withMidiNoteNumber:4 andCpspch:3.04 atFrequency:10.301 forShortName:@"E-1"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:-1 withMidiNoteNumber:5 andCpspch:3.05 atFrequency:10.913 forShortName:@"F-1"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:-1 withMidiNoteNumber:6 andCpspch:3.06 atFrequency:11.562 forShortName:@"F#-1"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:-1 withMidiNoteNumber:7 andCpspch:3.07 atFrequency:12.25 forShortName:@"G-1"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:-1 withMidiNoteNumber:8 andCpspch:3.08 atFrequency:12.978 forShortName:@"G#-1"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:-1 withMidiNoteNumber:9 andCpspch:3.09 atFrequency:13.75 forShortName:@"A-1"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:-1 withMidiNoteNumber:10 andCpspch:3.1 atFrequency:14.568 forShortName:@"A#-1"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:-1 withMidiNoteNumber:11 andCpspch:3.11 atFrequency:15.434 forShortName:@"B-1"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:0 withMidiNoteNumber:12 andCpspch:4.0 atFrequency:16.352 forShortName:@"C0"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:0 withMidiNoteNumber:13 andCpspch:4.01 atFrequency:17.324 forShortName:@"C#0"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:0 withMidiNoteNumber:14 andCpspch:4.02 atFrequency:18.354 forShortName:@"D0"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:0 withMidiNoteNumber:15 andCpspch:4.03 atFrequency:19.445 forShortName:@"D#0"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:0 withMidiNoteNumber:16 andCpspch:4.04 atFrequency:20.602 forShortName:@"E0"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:0 withMidiNoteNumber:17 andCpspch:4.05 atFrequency:21.827 forShortName:@"F0"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:0 withMidiNoteNumber:18 andCpspch:4.06 atFrequency:23.125 forShortName:@"F#0"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:0 withMidiNoteNumber:19 andCpspch:4.07 atFrequency:24.5 forShortName:@"G0"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:0 withMidiNoteNumber:20 andCpspch:4.08 atFrequency:25.957 forShortName:@"G#0"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:0 withMidiNoteNumber:21 andCpspch:4.09 atFrequency:27.5 forShortName:@"A0"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:0 withMidiNoteNumber:22 andCpspch:4.1 atFrequency:29.135 forShortName:@"A#0"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:0 withMidiNoteNumber:23 andCpspch:4.11 atFrequency:30.868 forShortName:@"B0"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:1 withMidiNoteNumber:24 andCpspch:5.0 atFrequency:32.703 forShortName:@"C1"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:1 withMidiNoteNumber:25 andCpspch:5.01 atFrequency:34.648 forShortName:@"C#1"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:1 withMidiNoteNumber:26 andCpspch:5.02 atFrequency:36.708 forShortName:@"D1"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:1 withMidiNoteNumber:27 andCpspch:5.03 atFrequency:38.891 forShortName:@"D#1"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:1 withMidiNoteNumber:28 andCpspch:5.04 atFrequency:41.203 forShortName:@"E1"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:1 withMidiNoteNumber:29 andCpspch:5.05 atFrequency:43.654 forShortName:@"F1"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:1 withMidiNoteNumber:30 andCpspch:5.06 atFrequency:46.249 forShortName:@"F#1"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:1 withMidiNoteNumber:31 andCpspch:5.07 atFrequency:48.999 forShortName:@"G1"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:1 withMidiNoteNumber:32 andCpspch:5.08 atFrequency:51.913 forShortName:@"G#1"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:1 withMidiNoteNumber:33 andCpspch:5.09 atFrequency:55.0 forShortName:@"A1"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:1 withMidiNoteNumber:34 andCpspch:5.1 atFrequency:58.27 forShortName:@"A#1"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:1 withMidiNoteNumber:35 andCpspch:5.11 atFrequency:61.735 forShortName:@"B1"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:2 withMidiNoteNumber:36 andCpspch:6.0 atFrequency:65.406 forShortName:@"C2"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:2 withMidiNoteNumber:37 andCpspch:6.01 atFrequency:69.296 forShortName:@"C#2"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:2 withMidiNoteNumber:38 andCpspch:6.02 atFrequency:73.416 forShortName:@"D2"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:2 withMidiNoteNumber:39 andCpspch:6.03 atFrequency:77.782 forShortName:@"D#2"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:2 withMidiNoteNumber:40 andCpspch:6.04 atFrequency:82.407 forShortName:@"E2"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:2 withMidiNoteNumber:41 andCpspch:6.05 atFrequency:87.307 forShortName:@"F2"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:2 withMidiNoteNumber:42 andCpspch:6.06 atFrequency:92.499 forShortName:@"F#2"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:2 withMidiNoteNumber:43 andCpspch:6.07 atFrequency:97.999 forShortName:@"G2"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:2 withMidiNoteNumber:44 andCpspch:6.08 atFrequency:103.826 forShortName:@"G#2"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:2 withMidiNoteNumber:45 andCpspch:6.09 atFrequency:110.0 forShortName:@"A2"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:2 withMidiNoteNumber:46 andCpspch:6.1 atFrequency:116.541 forShortName:@"A#2"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:2 withMidiNoteNumber:47 andCpspch:6.11 atFrequency:123.471 forShortName:@"B2"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:3 withMidiNoteNumber:48 andCpspch:7.0 atFrequency:130.813 forShortName:@"C3"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:3 withMidiNoteNumber:49 andCpspch:7.01 atFrequency:138.591 forShortName:@"C#3"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:3 withMidiNoteNumber:50 andCpspch:7.02 atFrequency:146.832 forShortName:@"D3"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:3 withMidiNoteNumber:51 andCpspch:7.03 atFrequency:155.563 forShortName:@"D#3"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:3 withMidiNoteNumber:52 andCpspch:7.04 atFrequency:164.814 forShortName:@"E3"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:3 withMidiNoteNumber:53 andCpspch:7.05 atFrequency:174.614 forShortName:@"F3"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:3 withMidiNoteNumber:54 andCpspch:7.06 atFrequency:184.997 forShortName:@"F#3"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:3 withMidiNoteNumber:55 andCpspch:7.07 atFrequency:195.998 forShortName:@"G3"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:3 withMidiNoteNumber:56 andCpspch:7.08 atFrequency:207.652 forShortName:@"G#3"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:3 withMidiNoteNumber:57 andCpspch:7.09 atFrequency:220.0 forShortName:@"A3"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:3 withMidiNoteNumber:58 andCpspch:7.1 atFrequency:233.082 forShortName:@"A#3"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:3 withMidiNoteNumber:59 andCpspch:7.11 atFrequency:246.942 forShortName:@"B3"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:4 withMidiNoteNumber:60 andCpspch:8.0 atFrequency:261.626 forShortName:@"C4"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:4 withMidiNoteNumber:61 andCpspch:8.01 atFrequency:277.183 forShortName:@"C#4"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:4 withMidiNoteNumber:62 andCpspch:8.02 atFrequency:293.665 forShortName:@"D4"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:4 withMidiNoteNumber:63 andCpspch:8.03 atFrequency:311.127 forShortName:@"D#4"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:4 withMidiNoteNumber:64 andCpspch:8.04 atFrequency:329.628 forShortName:@"E4"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:4 withMidiNoteNumber:65 andCpspch:8.05 atFrequency:349.228 forShortName:@"F4"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:4 withMidiNoteNumber:66 andCpspch:8.06 atFrequency:369.994 forShortName:@"F#4"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:4 withMidiNoteNumber:67 andCpspch:8.07 atFrequency:391.995 forShortName:@"G4"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:4 withMidiNoteNumber:68 andCpspch:8.08 atFrequency:415.305 forShortName:@"G#4"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:4 withMidiNoteNumber:69 andCpspch:8.09 atFrequency:440.0 forShortName:@"A4"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:4 withMidiNoteNumber:70 andCpspch:8.1 atFrequency:466.164 forShortName:@"A#4"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:4 withMidiNoteNumber:71 andCpspch:8.11 atFrequency:493.883 forShortName:@"B4"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:5 withMidiNoteNumber:72 andCpspch:9.0 atFrequency:523.251 forShortName:@"C5"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:5 withMidiNoteNumber:73 andCpspch:9.01 atFrequency:554.365 forShortName:@"C#5"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:5 withMidiNoteNumber:74 andCpspch:9.02 atFrequency:587.33 forShortName:@"D5"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:5 withMidiNoteNumber:75 andCpspch:9.03 atFrequency:622.254 forShortName:@"D#5"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:5 withMidiNoteNumber:76 andCpspch:9.04 atFrequency:659.255 forShortName:@"E5"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:5 withMidiNoteNumber:77 andCpspch:9.05 atFrequency:698.456 forShortName:@"F5"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:5 withMidiNoteNumber:78 andCpspch:9.06 atFrequency:739.989 forShortName:@"F#5"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:5 withMidiNoteNumber:79 andCpspch:9.07 atFrequency:783.991 forShortName:@"G5"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:5 withMidiNoteNumber:80 andCpspch:9.08 atFrequency:830.609 forShortName:@"G#5"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:5 withMidiNoteNumber:81 andCpspch:9.09 atFrequency:880.0 forShortName:@"A5"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:5 withMidiNoteNumber:82 andCpspch:9.1 atFrequency:932.328 forShortName:@"A#5"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:5 withMidiNoteNumber:83 andCpspch:9.11 atFrequency:987.767 forShortName:@"B5"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:6 withMidiNoteNumber:84 andCpspch:10.0 atFrequency:1046.502 forShortName:@"C6"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:6 withMidiNoteNumber:85 andCpspch:10.01 atFrequency:1108.731 forShortName:@"C#6"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:6 withMidiNoteNumber:86 andCpspch:10.02 atFrequency:1174.659 forShortName:@"D6"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:6 withMidiNoteNumber:87 andCpspch:10.03 atFrequency:1244.508 forShortName:@"D#6"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:6 withMidiNoteNumber:88 andCpspch:10.04 atFrequency:1318.51 forShortName:@"E6"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:6 withMidiNoteNumber:89 andCpspch:10.05 atFrequency:1396.913 forShortName:@"F6"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:6 withMidiNoteNumber:90 andCpspch:10.06 atFrequency:1479.978 forShortName:@"F#6"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:6 withMidiNoteNumber:91 andCpspch:10.07 atFrequency:1567.982 forShortName:@"G6"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:6 withMidiNoteNumber:92 andCpspch:10.08 atFrequency:1661.219 forShortName:@"G#6"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:6 withMidiNoteNumber:93 andCpspch:10.09 atFrequency:1760.0 forShortName:@"A6"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:6 withMidiNoteNumber:94 andCpspch:10.1 atFrequency:1864.655 forShortName:@"A#6"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:6 withMidiNoteNumber:95 andCpspch:10.11 atFrequency:1975.533 forShortName:@"B6"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:7 withMidiNoteNumber:96 andCpspch:11.0 atFrequency:2093.005 forShortName:@"C7"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:7 withMidiNoteNumber:97 andCpspch:11.01 atFrequency:2217.461 forShortName:@"C#7"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:7 withMidiNoteNumber:98 andCpspch:11.02 atFrequency:2349.318 forShortName:@"D7"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:7 withMidiNoteNumber:99 andCpspch:11.03 atFrequency:2489.016 forShortName:@"D#7"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:7 withMidiNoteNumber:100 andCpspch:11.04 atFrequency:2637.02 forShortName:@"E7"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:7 withMidiNoteNumber:101 andCpspch:11.05 atFrequency:2793.826 forShortName:@"F7"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:7 withMidiNoteNumber:102 andCpspch:11.06 atFrequency:2959.955 forShortName:@"F#7"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:7 withMidiNoteNumber:103 andCpspch:11.07 atFrequency:3135.963 forShortName:@"G7"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:7 withMidiNoteNumber:104 andCpspch:11.08 atFrequency:3322.438 forShortName:@"G#7"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:7 withMidiNoteNumber:105 andCpspch:11.09 atFrequency:3520.0 forShortName:@"A7"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:7 withMidiNoteNumber:106 andCpspch:11.1 atFrequency:3729.31 forShortName:@"A#7"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:7 withMidiNoteNumber:107 andCpspch:11.11 atFrequency:3951.066 forShortName:@"B7"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:8 withMidiNoteNumber:108 andCpspch:12.0 atFrequency:4186.009 forShortName:@"C8"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:8 withMidiNoteNumber:109 andCpspch:12.01 atFrequency:4434.922 forShortName:@"C#8"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:8 withMidiNoteNumber:110 andCpspch:12.02 atFrequency:4698.636 forShortName:@"D8"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:8 withMidiNoteNumber:111 andCpspch:12.03 atFrequency:4978.032 forShortName:@"D#8"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:8 withMidiNoteNumber:112 andCpspch:12.04 atFrequency:5274.041 forShortName:@"E8"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:8 withMidiNoteNumber:113 andCpspch:12.05 atFrequency:5587.652 forShortName:@"F8"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:8 withMidiNoteNumber:114 andCpspch:12.06 atFrequency:5919.911 forShortName:@"F#8"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:8 withMidiNoteNumber:115 andCpspch:12.07 atFrequency:6271.927 forShortName:@"G8"],
             [[WMNote alloc] initWithRoot:@"G" accidental:@"#" atOctave:8 withMidiNoteNumber:116 andCpspch:12.08 atFrequency:6644.875 forShortName:@"G#8"],
             [[WMNote alloc] initWithRoot:@"A" accidental:nil atOctave:8 withMidiNoteNumber:117 andCpspch:12.09 atFrequency:7040.0 forShortName:@"A8"],
             [[WMNote alloc] initWithRoot:@"A" accidental:@"#" atOctave:8 withMidiNoteNumber:118 andCpspch:12.1 atFrequency:7458.62 forShortName:@"A#8"],
             [[WMNote alloc] initWithRoot:@"B" accidental:nil atOctave:8 withMidiNoteNumber:119 andCpspch:12.11 atFrequency:7902.133 forShortName:@"B8"],
             [[WMNote alloc] initWithRoot:@"C" accidental:nil atOctave:9 withMidiNoteNumber:120 andCpspch:13.0 atFrequency:8372.018 forShortName:@"C9"],
             [[WMNote alloc] initWithRoot:@"C" accidental:@"#" atOctave:9 withMidiNoteNumber:121 andCpspch:13.01 atFrequency:8869.844 forShortName:@"C#9"],
             [[WMNote alloc] initWithRoot:@"D" accidental:nil atOctave:9 withMidiNoteNumber:122 andCpspch:13.02 atFrequency:9397.273 forShortName:@"D9"],
             [[WMNote alloc] initWithRoot:@"D" accidental:@"#" atOctave:9 withMidiNoteNumber:123 andCpspch:13.03 atFrequency:9956.063 forShortName:@"D#9"],
             [[WMNote alloc] initWithRoot:@"E" accidental:nil atOctave:9 withMidiNoteNumber:124 andCpspch:13.04 atFrequency:10548.08 forShortName:@"E9"],
             [[WMNote alloc] initWithRoot:@"F" accidental:nil atOctave:9 withMidiNoteNumber:125 andCpspch:13.05 atFrequency:11175.3 forShortName:@"F9"],
             [[WMNote alloc] initWithRoot:@"F" accidental:@"#" atOctave:9 withMidiNoteNumber:126 andCpspch:13.06 atFrequency:11839.82 forShortName:@"F#9"],
             [[WMNote alloc] initWithRoot:@"G" accidental:nil atOctave:9 withMidiNoteNumber:127 andCpspch:13.07 atFrequency:12543.85 forShortName:@"G9"],
             nil ];     
}

#pragma mark - Notes

- (WMNote *)noteWithShortName:(NSString *)aShortName {
    for (WMNote *note in [self allNotes]) {
        if ([[note valueForKey:@"shortName"] isEqualToString:[aShortName uppercaseString]]) {
            return note;
        }
    }
    return nil;
}



- (WMNote *)noteWithRoot:(NSString *)aRoot
              accidental:(NSString *)anAccidental 
                  octave:(int)anOctave {
    NSString *resolvedAccidental = anAccidental ? anAccidental : @"";
    NSString *noteName = [NSString stringWithFormat:@"%@%@%d", [aRoot uppercaseString], resolvedAccidental, anOctave];
    return [self noteWithShortName:noteName];
}




- (WMNote *)noteWithMidiNoteNumber:(int)midiNoteNumber {
    if ((midiNoteNumber >= 0) && (midiNoteNumber < 128)) {        
        return [[self allNotes] objectAtIndex:midiNoteNumber];
    }else {
        return nil;
    }
}

#pragma mark - Scales


- (WMScale *)scaleWithRoot:(NSString *)aRoot 
                accidental:(NSString *)anAccidental 
                    octave:(int)anOctave 
                 scaleMode:(WMScaleMode *)mode {
    WMNote *rootNote = [self noteWithRoot:aRoot accidental:anAccidental octave:anOctave];
    return [self scaleWithRootNote:rootNote scaleMode:mode];
    
}


- (WMScale *)scaleWithRootNote:(WMNote *)rootNote scaleMode:(WMScaleMode *)mode {
    return [[WMScale alloc] initWithRootNote:rootNote forScaleMode:mode];
}


- (WMScale *)scaleWithRootShortName:(NSString *)name scaleMode:(WMScaleMode *)mode {
    return [[WMScale alloc] initWithRootNote:[self noteWithShortName:name] forScaleMode:mode];
}


#pragma mark - Chords

- (WMChord *)chordWithRoot:(NSString *)aRoot
                accidental:(NSString *)anAccidental 
                    octave:(int)anOctave
                 chordType:(WMChordType *)aType
                 inversion:(int)theInversion {
    WMNote *rootNote = [self noteWithRoot:aRoot accidental:anAccidental octave:anOctave];
    return [self chordWithRootNote:rootNote chordType:aType inversion:theInversion];
    
}



- (WMChord *)chordWithRootShortName:(NSString *)name
                          chordType:(WMChordType *)aType 
                          inversion:(int)theInversion {
    return [[WMChord alloc] initWithRootNote:[self noteWithShortName:name]  forType:aType inversion:theInversion];
}

- (WMChord *)chordWithRootNote:(WMNote *)rootNote chordType:(WMChordType *)aType inversion:(int)theInversion {
    return [[WMChord alloc] initWithRootNote:rootNote forType:aType inversion:theInversion];
}


@end
