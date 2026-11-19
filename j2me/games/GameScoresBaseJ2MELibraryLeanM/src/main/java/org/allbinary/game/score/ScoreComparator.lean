-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScoreComparator

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getBestScore_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.cond (<- JR.getField this "isHighestBest") (do pure (<- JR.getStatic "Long" "MAX_VALUE")) (do pure (JV.int 0))))


def m_compare_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_recordOne : JV := (JR.arg jargs 0)
    let mut l_recordTwo : JV := (JR.arg jargs 1)
    let mut l_byteArrayInputStreamOne : JV := (<- JR.new "ByteArrayInputStream" #[l_recordOne])
    let mut l_inputStreamOne : JV := (<- JR.new "DataInputStream" #[l_byteArrayInputStreamOne])
    let mut l_byteArrayInputStreamTwo : JV := (<- JR.new "ByteArrayInputStream" #[l_recordTwo])
    let mut l_inputStreamTwo : JV := (<- JR.new "DataInputStream" #[l_byteArrayInputStreamTwo])
    let mut l_scoreOne : JV := (JR.asJ (JV.long 0))
    let mut l_scoreTwo : JV := (JR.asJ (JV.long 0))
    try
        let _ := (<- JR.call l_inputStreamOne "readUTF_0" #[])
        let _ := (<- JR.call l_inputStreamTwo "readUTF_0" #[])
        l_scoreOne := (JR.asJ (<- JR.call l_inputStreamOne "readLong_0" #[]))
        l_scoreTwo := (JR.asJ (<- JR.call l_inputStreamTwo "readLong_0" #[]))
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["EOFException"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "compare"), l_e])
            pure ()
        else if (<- JR.isInstanceOfAny jex0 #["IOException"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "compare"), l_e])
            pure ()
        else if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "compare"), l_e])
            pure ()
        else
            throw jex0
    if JR.truth (<- JR.getField this "isHighestBest") then
        return (JR.asI (<- JR.call this "getHighTooLow_2" #[l_scoreOne, l_scoreTwo]))
    else
        return (JR.asI (<- JR.call this "getLowTooHigh_2" #[l_scoreOne, l_scoreTwo]))
    pure JV.null


def m_getHighTooLow_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scoreOne : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_scoreTwo : JV := (JR.asJ (JR.arg jargs 1))
    if JR.truth (<- JR.gt l_scoreOne l_scoreTwo) then
        return (JR.asI (<- JR.getStatic "RecordComparator" "PRECEDES"))
    else
        if JR.truth (<- JR.lt l_scoreOne l_scoreTwo) then
            return (JR.asI (<- JR.getStatic "RecordComparator" "FOLLOWS"))
        else
            return (JR.asI (<- JR.getStatic "RecordComparator" "EQUIVALENT"))
    pure JV.null


def m_getLowTooHigh_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scoreOne : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_scoreTwo : JV := (JR.asJ (JR.arg jargs 1))
    if JR.truth (<- JR.lt l_scoreOne l_scoreTwo) then
        return (JR.asI (<- JR.getStatic "RecordComparator" "PRECEDES"))
    else
        if JR.truth (<- JR.gt l_scoreOne l_scoreTwo) then
            return (JR.asI (<- JR.getStatic "RecordComparator" "FOLLOWS"))
        else
            return (JR.asI (<- JR.getStatic "RecordComparator" "EQUIVALENT"))
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isHighestBest : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "isHighestBest" l_isHighestBest
    pure this

initialize JR.registerClass {
    name := "ScoreComparator",
    javaName := "org.allbinary.game.score.ScoreComparator",
    super := "Object",
    interfaces := #["RecordComparator"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("isHighestBest", (JV.bool false))],
    statics := #[],
    methods := #[
        ("getBestScore_0", #[], false, m_getBestScore_0), 
        ("compare_2", #["byteArr", "byteArr"], false, m_compare_2), 
        ("getHighTooLow_2", #["long", "long"], false, m_getHighTooLow_2), 
        ("getLowTooHigh_2", #["long", "long"], false, m_getLowTooHigh_2), 
        ("jinit_1", #["boolean"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScoreComparator


