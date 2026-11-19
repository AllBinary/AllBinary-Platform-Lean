-- Generated Code Do Not Modify
-- package org.allbinary.emulator.device
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TrueTypeFontUtilBase

def jfields (this : JV) : JM JV := do
    JR.setField this "patternAsBytes" (<- JR.arrayOf "B" #[(JV.int 32), (JV.int 48), (JV.int 49), (JV.int 50), (JV.int 51), (JV.int 52), (JV.int 53), (JV.int 54), (JV.int 55), (JV.int 56), (JV.int 57), (JV.int 65), (JV.int 66), (JV.int 32), (JV.int 32), (JV.int 32), (JV.int 67), (JV.int 68), (JV.int 69), (JV.int 70), (JV.int 71), (JV.int 72), (JV.int 73), (JV.int 74), (JV.int 75), (JV.int 76), (JV.int 77), (JV.int 78), (JV.int 79), (JV.int 32), (JV.int 32), (JV.int 32), (JV.int 80), (JV.int 81), (JV.int 82), (JV.int 83), (JV.int 84), (JV.int 85), (JV.int 86), (JV.int 87), (JV.int 88), (JV.int 89), (JV.int 90), (JV.int 97), (JV.int 98), (JV.int 32), (JV.int 32), (JV.int 32), (JV.int 99), (JV.int 100), (JV.int 101), (JV.int 102), (JV.int 103), (JV.int 104), (JV.int 105), (JV.int 106), (JV.int 107), (JV.int 108), (JV.int 109), (JV.int 110), (JV.int 111), (JV.int 32), (JV.int 32), (JV.int 32), (JV.int 112), (JV.int 113), (JV.int 114), (JV.int 115), (JV.int 116), (JV.int 117), (JV.int 118), (JV.int 119), (JV.int 120), (JV.int 121), (JV.int 122), (JV.int 46), (JV.int 63), (JV.int 32), (JV.int 32), (JV.int 32), (JV.int 33), (JV.int 36), (JV.int 37), (JV.int 96), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-84))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-84))), (JV.int 34), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-93))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-93))), (JV.int 94), (JV.int 38), (JV.int 42), (JV.int 40), (JV.int 32), (JV.int 32), (JV.int 32), (JV.int 41), (JV.int 95), (JV.int 43), (JV.int 45), (JV.int 61), (JV.int 91), (JV.int 93), (JV.int 123), (JV.int 125), (JV.int 59), (JV.int 39), (JV.int 35), (JV.int 58), (JV.int 32), (JV.int 32), (JV.int 32), (JV.int 64), (JV.int 126), (JV.int 44), (JV.int 47), (JV.int 60), (JV.int 62), (JV.int 92), (JV.int 124), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-82))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-82))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-87))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-87)))])
    JR.setField this "pattern" (<- JR.new "String" #[(<- JR.getField this "patternAsBytes")])
    JR.setField this "charArray" (<- JR.arrayOf "S" #[(JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x6f)), (JV.int (JR.wrapI 0x50)), (JV.int (JR.wrapI 0x56)), (JV.int (JR.wrapI 0x6b)), (JV.int (JR.wrapI 0x51)), (JV.int (JR.wrapI 0x52)), (JV.int (JR.wrapI 0x5a)), (JV.int (JR.wrapI 0x6a)), (JV.int (JR.wrapI 0x5c)), (JV.int (JR.wrapI 0x60)), (JV.int (JR.wrapI 0x5b)), (JV.int (JR.wrapI 0x62)), (JV.int (JR.wrapI 0x72)), (JV.int (JR.wrapI 0x63)), (JV.int (JR.wrapI 0x4b)), (JV.int (JR.wrapI 0x73)), (JV.int (JR.wrapI 0x1)), (JV.int (JR.wrapI 0x2)), (JV.int (JR.wrapI 0x3)), (JV.int (JR.wrapI 0x4)), (JV.int (JR.wrapI 0x5)), (JV.int (JR.wrapI 0x6)), (JV.int (JR.wrapI 0x7)), (JV.int (JR.wrapI 0x8)), (JV.int (JR.wrapI 0x9)), (JV.int (JR.wrapI 0xa)), (JV.int (JR.wrapI 0x6c)), (JV.int (JR.wrapI 0x69)), (JV.int (JR.wrapI 0x74)), (JV.int (JR.wrapI 0x64)), (JV.int (JR.wrapI 0x75)), (JV.int (JR.wrapI 0x4c)), (JV.int (JR.wrapI 0x70)), (JV.int (JR.wrapI 0xb)), (JV.int (JR.wrapI 0xc)), (JV.int (JR.wrapI 0x10)), (JV.int (JR.wrapI 0x11)), (JV.int (JR.wrapI 0x12)), (JV.int (JR.wrapI 0x13)), (JV.int (JR.wrapI 0x14)), (JV.int (JR.wrapI 0x15)), (JV.int (JR.wrapI 0x16)), (JV.int (JR.wrapI 0x17)), (JV.int (JR.wrapI 0x18)), (JV.int (JR.wrapI 0x19)), (JV.int (JR.wrapI 0x1a)), (JV.int (JR.wrapI 0x1b)), (JV.int (JR.wrapI 0x1c)), (JV.int (JR.wrapI 0x20)), (JV.int (JR.wrapI 0x21)), (JV.int (JR.wrapI 0x22)), (JV.int (JR.wrapI 0x23)), (JV.int (JR.wrapI 0x24)), (JV.int (JR.wrapI 0x25)), (JV.int (JR.wrapI 0x26)), (JV.int (JR.wrapI 0x27)), (JV.int (JR.wrapI 0x28)), (JV.int (JR.wrapI 0x29)), (JV.int (JR.wrapI 0x2a)), (JV.int (JR.wrapI 0x65)), (JV.int (JR.wrapI 0x76)), (JV.int (JR.wrapI 0x66)), (JV.int (JR.wrapI 0x59)), (JV.int (JR.wrapI 0x61)), (JV.int (JR.wrapI 0x53)), (JV.int (JR.wrapI 0x2b)), (JV.int (JR.wrapI 0x2c)), (JV.int (JR.wrapI 0x30)), (JV.int (JR.wrapI 0x31)), (JV.int (JR.wrapI 0x32)), (JV.int (JR.wrapI 0x33)), (JV.int (JR.wrapI 0x34)), (JV.int (JR.wrapI 0x35)), (JV.int (JR.wrapI 0x36)), (JV.int (JR.wrapI 0x37)), (JV.int (JR.wrapI 0x38)), (JV.int (JR.wrapI 0x39)), (JV.int (JR.wrapI 0x3a)), (JV.int (JR.wrapI 0x3b)), (JV.int (JR.wrapI 0x3c)), (JV.int (JR.wrapI 0x40)), (JV.int (JR.wrapI 0x41)), (JV.int (JR.wrapI 0x42)), (JV.int (JR.wrapI 0x43)), (JV.int (JR.wrapI 0x44)), (JV.int (JR.wrapI 0x45)), (JV.int (JR.wrapI 0x46)), (JV.int (JR.wrapI 0x47)), (JV.int (JR.wrapI 0x48)), (JV.int (JR.wrapI 0x49)), (JV.int (JR.wrapI 0x4a)), (JV.int (JR.wrapI 0x67)), (JV.int (JR.wrapI 0x77)), (JV.int (JR.wrapI 0x68)), (JV.int (JR.wrapI 0x71)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x58)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x7b)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x55)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x79)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0)), (JV.int (JR.wrapI 0x0))])
    JR.setField this "_characterWidth" (<- JR.newArray "I" 1 #[(<- JR.call (<- JR.getField this "pattern") "length_0" #[])])
    JR.setField this "characterArray" (<- JR.newArray "C" 1 #[(JV.int 1)])
    JR.setField this "size" (JR.asI (<- JR.call (<- JR.getField this "pattern") "length_0" #[]))
    JR.setField this "lastCapIndex" (JR.asI (<- JR.call (<- JR.getField this "pattern") "indexOf_1" #[(JV.char 90)]))
    JR.setField this "currentFont" (<- JR.callStatic "Font" "getDefaultFont_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAsTextureSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_textureSize : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.le l_textureSize (JV.int 64)) then
        l_textureSize := (JR.asI (JV.int 64))
        pure ()
    else
        if JR.truth (<- JR.le l_textureSize (JV.int 128)) then
            l_textureSize := (JR.asI (JV.int 128))
            pure ()
        else
            if JR.truth (<- JR.le l_textureSize (JV.int 256)) then
                l_textureSize := (JR.asI (JV.int 256))
                pure ()
            else
                if JR.truth (<- JR.le l_textureSize (JV.int 512)) then
                    l_textureSize := (JR.asI (JV.int 512))
                    pure ()
                else
                    if JR.truth (<- JR.le l_textureSize (JV.int 1024)) then
                        l_textureSize := (JR.asI (JV.int 1024))
                        pure ()
    return (JR.asI l_textureSize)


def m_getCellSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cellSize : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.le l_cellSize (JV.int 16)) then
        l_cellSize := (JR.asI (JV.int 16))
        pure ()
    else
        if JR.truth (<- JR.le l_cellSize (JV.int 32)) then
            l_cellSize := (JR.asI (JV.int 32))
            pure ()
        else
            if JR.truth (<- JR.le l_cellSize (JV.int 64)) then
                l_cellSize := (JR.asI (JV.int 64))
                pure ()
            else
                if JR.truth (<- JR.le l_cellSize (JV.int 128)) then
                    l_cellSize := (JR.asI (JV.int 128))
                    pure ()
                else
                    if JR.truth (<- JR.le l_cellSize (JV.int 256)) then
                        l_cellSize := (JR.asI (JV.int 256))
                        pure ()
    return (JR.asI l_cellSize)


def m_getYOffset_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI ((<- JR.mul ((<- JR.sub (<- JR.getField this "scale") (JV.int 1))) (<- JR.getField this "cellSize"))))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scale : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_shortPattern : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    if JR.truth (<- JR.callStatic "AvianUtil" "isAvian_0" #[]) then
        let mut l_shortPatterAsByteArray : JV := (<- JR.arrayOf "B" #[(JV.int 32), (JV.int 48), (JV.int 49), (JV.int 50), (JV.int 51), (JV.int 52), (JV.int 53), (JV.int 54), (JV.int 55), (JV.int 56), (JV.int 57), (JV.int 65), (JV.int 66), (JV.int 67), (JV.int 68), (JV.int 69), (JV.int 70), (JV.int 71), (JV.int 72), (JV.int 73), (JV.int 74), (JV.int 75), (JV.int 76), (JV.int 77), (JV.int 78), (JV.int 79), (JV.int 80), (JV.int 81), (JV.int 82), (JV.int 83), (JV.int 84), (JV.int 85), (JV.int 86), (JV.int 87), (JV.int 88), (JV.int 89), (JV.int 90), (JV.int 97), (JV.int 98), (JV.int 99), (JV.int 100), (JV.int 101), (JV.int 102), (JV.int 103), (JV.int 104), (JV.int 105), (JV.int 106), (JV.int 107), (JV.int 108), (JV.int 109), (JV.int 110), (JV.int 111), (JV.int 112), (JV.int 113), (JV.int 114), (JV.int 115), (JV.int 116), (JV.int 117), (JV.int 118), (JV.int 119), (JV.int 120), (JV.int 121), (JV.int 122), (JV.int 46), (JV.int 63), (JV.int 33), (JV.int 36), (JV.int 37), (JV.int 96), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-84))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-84))), (JV.int 34), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-93))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-93))), (JV.int 94), (JV.int 38), (JV.int 42), (JV.int 40), (JV.int 41), (JV.int 95), (JV.int 43), (JV.int 45), (JV.int 61), (JV.int 91), (JV.int 93), (JV.int 123), (JV.int 125), (JV.int 59), (JV.int 39), (JV.int 35), (JV.int 58), (JV.int 64), (JV.int 126), (JV.int 44), (JV.int 47), (JV.int 60), (JV.int 62), (JV.int 92), (JV.int 124), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-82))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-82))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-87))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-87)))])
        l_shortPattern := (<- JR.new "String" #[l_shortPatterAsByteArray])
        pure ()
    else
        let mut l_shortPatterAsByteArray : JV := (<- JR.arrayOf "B" #[(JV.int 32), (JV.int 48), (JV.int 49), (JV.int 50), (JV.int 51), (JV.int 52), (JV.int 53), (JV.int 54), (JV.int 55), (JV.int 56), (JV.int 57), (JV.int 65), (JV.int 66), (JV.int 67), (JV.int 68), (JV.int 69), (JV.int 70), (JV.int 71), (JV.int 72), (JV.int 73), (JV.int 74), (JV.int 75), (JV.int 76), (JV.int 77), (JV.int 78), (JV.int 79), (JV.int 80), (JV.int 81), (JV.int 82), (JV.int 83), (JV.int 84), (JV.int 85), (JV.int 86), (JV.int 87), (JV.int 88), (JV.int 89), (JV.int 90), (JV.int 97), (JV.int 98), (JV.int 99), (JV.int 100), (JV.int 101), (JV.int 102), (JV.int 103), (JV.int 104), (JV.int 105), (JV.int 106), (JV.int 107), (JV.int 108), (JV.int 109), (JV.int 110), (JV.int 111), (JV.int 112), (JV.int 113), (JV.int 114), (JV.int 115), (JV.int 116), (JV.int 117), (JV.int 118), (JV.int 119), (JV.int 120), (JV.int 121), (JV.int 122), (JV.int 46), (JV.int 63), (JV.int 33), (JV.int 36), (JV.int 37), (JV.int 96), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-84))), (JV.int 34), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-93))), (JV.int 94), (JV.int 38), (JV.int 42), (JV.int 40), (JV.int 41), (JV.int 95), (JV.int 43), (JV.int 45), (JV.int 61), (JV.int 91), (JV.int 93), (JV.int 123), (JV.int 125), (JV.int 59), (JV.int 39), (JV.int 35), (JV.int 58), (JV.int 64), (JV.int 126), (JV.int 44), (JV.int 47), (JV.int 60), (JV.int 62), (JV.int 92), (JV.int 124), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-82))), (JR.toB (JV.int (-62))), (JR.toB (JV.int (-87)))])
        l_shortPattern := (<- JR.new "String" #[l_shortPatterAsByteArray])
        pure ()
    JR.setField this "shortPattern" l_shortPattern
    JR.setField this "scale" (JR.asI l_scale)
    JR.setField this "CELLS_PER_ROW" (JR.asI (JV.int 16))
    JR.setField this "fontSize" (JR.asI (<- JR.mul ((<- JR.add (JV.int 20) (JV.int 6))) (<- JR.getField this "scale")))
    JR.setField this "baseCharWidth" (JR.asI (<- JR.add (<- JR.getField this "fontSize") ((<- JR.mul (JV.int 6) (<- JR.getField this "scale")))))
    JR.setField this "cellSize" (JR.asI (<- JR.add (<- JR.getField this "fontSize") ((<- JR.mul (JV.int 6) (<- JR.getField this "scale")))))
    JR.setField this "textureSize" (JR.asI (<- JR.call this "getAsTextureSize_1" #[(<- JR.mul (<- JR.getField this "CELLS_PER_ROW") (<- JR.getField this "cellSize"))]))
    JR.setField this "actualCellsPerRow" (JR.asI (<- JR.div (<- JR.getField this "textureSize") (<- JR.getField this "cellSize")))
    pure this

initialize JR.registerClass {
    name := "TrueTypeFontUtilBase",
    javaName := "org.allbinary.emulator.device.TrueTypeFontUtilBase",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("shortPattern", JV.null), ("patternAsBytes", JV.null), ("pattern", JV.null), ("charArray", JV.null), ("_characterWidth", JV.null), ("characterArray", JV.null), ("size", (JV.int 0)), ("lastCapIndex", (JV.int 0)), ("currentFont", JV.null), ("scale", (JV.int 0)), ("CELLS_PER_ROW", (JV.int 0)), ("fontSize", (JV.int 0)), ("baseCharWidth", (JV.int 0)), ("cellSize", (JV.int 0)), ("textureSize", (JV.int 0)), ("actualCellsPerRow", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getAsTextureSize_1", #["int"], false, m_getAsTextureSize_1), 
        ("getCellSize_1", #["int"], false, m_getCellSize_1), 
        ("getYOffset_0", #[], false, m_getYOffset_0), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TrueTypeFontUtilBase


