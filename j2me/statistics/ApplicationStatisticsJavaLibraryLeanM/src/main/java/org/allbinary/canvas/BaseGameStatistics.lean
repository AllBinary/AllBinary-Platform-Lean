-- Generated Code Do Not Modify
-- package org.allbinary.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseGameStatistics

def jfields (this : JV) : JM JV := do
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(<- JR.getStatic "Integer" "MAX_VALUE")])
    JR.setField this "updateDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 2000)])
    JR.setField this "gameTickTimeDelayHelper" (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[])
    JR.setField this "DEFAULT_SCALE_FACTOR" (JR.asI (<- JR.getField (<- JR.callStatic "ScaleFactorFactory" "getInstance_0" #[]) "DEFAULT_SCALE_FACTOR"))
    JR.setField this "NOT" (JV.str "Not enough Time to Calculate")
    JR.setField this "EMPTY_STRING" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "STRING_ARRAY" (<- JR.arrayOf "L" #[(JV.str " Total Time: "), (<- JR.getField this "EMPTY_STRING"), (JV.str " Total Frames: "), (<- JR.getField this "EMPTY_STRING"), (JV.str " Frames/10 Sec: "), (<- JR.getField this "EMPTY_STRING"), (JV.str " Total Paints: "), (<- JR.getField this "EMPTY_STRING"), (JV.str " Paints/10 Sec: "), (<- JR.getField this "EMPTY_STRING")])
    JR.setField this "SPACE_CHAR" (JR.asC (JV.char 32))
    JR.setField this "PLUS_CHAR" (JR.asC (JV.char 43))
    JR.setField this "X_CHAR" (JR.asC (JV.char 88))
    JR.setField this "CHAR_ARRAY" (<- JR.arrayOf "L" #[(<- JR.arrayOf "C" #[(JV.char 70), (JV.char 114), (JV.char 97), (JV.char 109), (JV.char 101), (JV.char 115), (JV.char 47), (JV.char 49), (JV.char 48), (JV.char 32), (JV.char 83), (JV.char 101), (JV.char 99), (JV.char 58)]), (<- JR.arrayOf "C" #[(JV.char 88), (JV.char 88)]), (<- JR.arrayOf "C" #[(JV.char 80), (JV.char 97), (JV.char 105), (JV.char 110), (JV.char 116), (JV.char 115), (JV.char 47), (JV.char 49), (JV.char 48), (JV.char 32), (JV.char 83), (JV.char 101), (JV.char 99), (JV.char 58)]), (<- JR.arrayOf "C" #[(JV.char 88), (JV.char 88)])])
    JR.setField this "primitiveLongSingleton" (<- JR.callStatic "PrimitiveLongSingleton" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "timeDelayHelper") "setStartTimeTNT_0" #[])
    JR.setField this "totalRefreshes" (JR.asJ (JV.long 0))
    JR.setField this "totalFrames" (JR.asJ (JV.long 0))
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "totalFrames" (JR.inc (<- JR.getField this "totalFrames"))
    pure JV.null


def m_nextRefresh_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "totalRefreshes" (JR.inc (<- JR.getField this "totalRefreshes"))
    pure JV.null


def m_getRefreshRate_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_elapsed : JV := (JR.asJ (<- JR.call (<- JR.getField this "timeDelayHelper") "getElapsed_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]))
    if JR.truth (<- JR.gt l_elapsed (JV.long 1)) then
        let mut l_time : JV := (JR.asS (JR.toS ((<- JR.div (<- JR.getField this "totalRefreshes") ((<- JR.shr l_elapsed (<- JR.getField this "DEFAULT_SCALE_FACTOR")))))))
        return (JR.asS l_time)
    else
        return (JR.asS (JV.int 0))
    pure JV.null


def m_getTimeDelayHelper_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "timeDelayHelper")


def m_to2DCharArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalTime : JV := (JR.asJ (<- JR.call (<- JR.getField this "timeDelayHelper") "getElapsed_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]))
    l_totalTime := (JR.asJ ((<- JR.shr l_totalTime (<- JR.getField this "DEFAULT_SCALE_FACTOR"))))
    if JR.truth (<- JR.cand (<- JR.gt l_totalTime (JV.long 0)) (do pure (<- JR.call (<- JR.getField this "updateDelayHelper") "isTime_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]))) then
        let mut l_framesPerSec : JV := (JR.asI (JR.toI ((<- JR.div (<- JR.getField this "totalFrames") l_totalTime))))
        if JR.truth (<- JR.lt l_framesPerSec (JV.int 10)) then
            JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 1)) (JV.int 0) (<- JR.getField this "SPACE_CHAR")
            JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 1)) (JV.int 1) (<- JR.aget (<- JR.getField (<- JR.getField this "primitiveLongSingleton") "NUMBER_CHAR_ARRAY") l_framesPerSec)
            pure ()
        else
            if JR.truth (<- JR.lt l_framesPerSec (JV.int 100)) then
                let mut l_tens : JV := (JR.asI (<- JR.div l_framesPerSec (JV.int 10)))
                let mut l_removeTens : JV := (JR.asI (<- JR.mul l_tens (JV.int 10)))
                JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 1)) (JV.int 0) (<- JR.aget (<- JR.getField (<- JR.getField this "primitiveLongSingleton") "NUMBER_CHAR_ARRAY") l_tens)
                JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 1)) (JV.int 1) (<- JR.aget (<- JR.getField (<- JR.getField this "primitiveLongSingleton") "NUMBER_CHAR_ARRAY") (<- JR.sub l_framesPerSec l_removeTens))
                pure ()
            else
                JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 1)) (JV.int 0) (<- JR.getField this "PLUS_CHAR")
                JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 1)) (JV.int 1) (<- JR.getField this "PLUS_CHAR")
                pure ()
        let mut l_refreshesPerSec : JV := (JR.asI (JR.toI ((<- JR.div (<- JR.getField this "totalRefreshes") l_totalTime))))
        if JR.truth (<- JR.lt l_refreshesPerSec (JV.int 10)) then
            JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 3)) (JV.int 0) (<- JR.getField this "X_CHAR")
            JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 3)) (JV.int 1) (<- JR.aget (<- JR.getField (<- JR.getField this "primitiveLongSingleton") "NUMBER_CHAR_ARRAY") l_refreshesPerSec)
            pure ()
        else
            if JR.truth (<- JR.lt l_refreshesPerSec (JV.int 100)) then
                let mut l_tens : JV := (JR.asI (<- JR.div l_refreshesPerSec (JV.int 10)))
                let mut l_removeTens : JV := (JR.asI (<- JR.mul l_tens (JV.int 10)))
                JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 3)) (JV.int 0) (<- JR.aget (<- JR.getField (<- JR.getField this "primitiveLongSingleton") "NUMBER_CHAR_ARRAY") (<- JR.div l_refreshesPerSec (JV.int 10)))
                JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 3)) (JV.int 1) (<- JR.aget (<- JR.getField (<- JR.getField this "primitiveLongSingleton") "NUMBER_CHAR_ARRAY") (<- JR.sub l_refreshesPerSec l_removeTens))
                pure ()
            else
                JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 3)) (JV.int 0) (<- JR.getField this "PLUS_CHAR")
                JR.aset (<- JR.aget (<- JR.getField this "CHAR_ARRAY") (JV.int 3)) (JV.int 1) (<- JR.getField this "PLUS_CHAR")
                pure ()
        pure ()
    return (<- JR.getField this "CHAR_ARRAY")


def m_toStringArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalTime : JV := (JR.asJ (<- JR.call (<- JR.getField this "timeDelayHelper") "getElapsed_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]))
    l_totalTime := (JR.asJ ((<- JR.div l_totalTime (JV.long 10000))))
    if JR.truth (<- JR.gt l_totalTime (JV.long 0)) then
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 1) (<- JR.callStatic "Long" "toString_1" #[l_totalTime])
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 3) (<- JR.callStatic "Long" "toString_1" #[(<- JR.getField this "totalFrames")])
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 5) (<- JR.callStatic "Long" "toString_1" #[(<- JR.div (<- JR.getField this "totalFrames") l_totalTime)])
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 7) (<- JR.callStatic "Long" "toString_1" #[(<- JR.getField this "totalRefreshes")])
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 9) (<- JR.callStatic "Long" "toString_1" #[(<- JR.div (<- JR.getField this "totalRefreshes") l_totalTime)])
        pure ()
    else
        let mut l_string : JV := (<- JR.getField this "EMPTY_STRING")
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 1) l_string
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 3) l_string
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 5) l_string
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 7) l_string
        JR.aset (<- JR.getField this "STRING_ARRAY") (JV.int 9) l_string
        pure ()
    return (<- JR.getField this "STRING_ARRAY")


def m_toStringAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalTime : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.aget (<- JR.getField this "STRING_ARRAY") (JV.int 0))])
    let _ := (<- JR.call l_stringBuffer "appendlong_1" #[l_totalTime])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.aget (<- JR.getField this "STRING_ARRAY") (JV.int 2))])
    let _ := (<- JR.call l_stringBuffer "appendlong_1" #[(<- JR.getField this "totalFrames")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.aget (<- JR.getField this "STRING_ARRAY") (JV.int 4))])
    let _ := (<- JR.call l_stringBuffer "appendlong_1" #[(<- JR.div (<- JR.getField this "totalFrames") l_totalTime)])
    if JR.truth (<- JR.gt (<- JR.getField this "totalRefreshes") (JV.long 0)) then
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.aget (<- JR.getField this "STRING_ARRAY") (JV.int 6))])
        let _ := (<- JR.call l_stringBuffer "appendlong_1" #[(<- JR.getField this "totalRefreshes")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.aget (<- JR.getField this "STRING_ARRAY") (JV.int 8))])
        let _ := (<- JR.call l_stringBuffer "appendlong_1" #[(<- JR.div (<- JR.getField this "totalRefreshes") l_totalTime)])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "NEW_LINE")])
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalTime : JV := (JR.asJ (<- JR.call (<- JR.getField this "timeDelayHelper") "getElapsed_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]))
    l_totalTime := (JR.asJ ((<- JR.div l_totalTime (JV.long 1000))))
    if JR.truth (<- JR.gt l_totalTime (JV.long 0)) then
        return (<- JR.call this "toStringAt_1" #[l_totalTime])
    else
        return (<- JR.getField this "NOT")
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BaseGameStatistics",
    javaName := "org.allbinary.canvas.BaseGameStatistics",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("timeDelayHelper", JV.null), ("updateDelayHelper", JV.null), ("totalRefreshes", (JV.long 0)), ("totalFrames", (JV.long 0)), ("gameTickTimeDelayHelper", JV.null), ("DEFAULT_SCALE_FACTOR", (JV.int 0)), ("NOT", JV.null), ("EMPTY_STRING", JV.null), ("STRING_ARRAY", JV.null), ("SPACE_CHAR", (JV.char 0)), ("PLUS_CHAR", (JV.char 0)), ("X_CHAR", (JV.char 0)), ("CHAR_ARRAY", JV.null), ("primitiveLongSingleton", JV.null)],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("add_1", #["String"], false, m_add_1), 
        ("process_0", #[], false, m_process_0), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("nextRefresh_0", #[], false, m_nextRefresh_0), 
        ("getRefreshRate_0", #[], false, m_getRefreshRate_0), 
        ("getTimeDelayHelper_0", #[], false, m_getTimeDelayHelper_0), 
        ("to2DCharArray_0", #[], false, m_to2DCharArray_0), 
        ("toStringArray_0", #[], false, m_toStringArray_0), 
        ("toStringAt_1", #["long"], false, m_toStringAt_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseGameStatistics


