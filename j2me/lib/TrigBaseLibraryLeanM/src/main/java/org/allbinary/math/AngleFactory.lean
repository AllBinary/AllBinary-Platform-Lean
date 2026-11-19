-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AngleFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "TOTAL_ANGLE" (JR.asS (JV.int 360))
    JR.setField this "QUARTER_TOTAL_ANGLE" (JR.asS (JV.int 90))
    JR.setField this "angleArray" (<- JR.newArray "L" 1 #[(JR.toI (<- JR.getField this "TOTAL_ANGLE"))])
    JR.setField this "NEGATIVE_ONE" (JR.asS (JR.toS (JV.int (-1))))
    JR.setField this "NOT_ANGLE" (<- JR.new "NamedAngle" #[(<- JR.getField this "NEGATIVE_ONE"), (<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "EMPTY")])
    JR.setField this "frameUtil" (<- JR.callStatic "FrameUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AngleFactory" "instance" (<- JR.new "AngleFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AngleFactory" "instance")


def m_getAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_adjustedIndex : JV := (JR.asI (<- JR.call (<- JR.getField this "frameUtil") "adjustAngleToFrameAngle_1" #[l_index]))
    return (<- JR.aget (<- JR.getField this "angleArray") l_adjustedIndex)


def m_getClosestDirection_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.cor ((<- JR.cand (<- JR.ge l_angle (JV.int 315)) (do pure (<- JR.lt l_angle (JV.int 360))))) (do pure ((<- JR.cand (<- JR.ge l_angle (JV.int 0)) (do pure (<- JR.lt l_angle (JV.int 45))))))) then
        return (<- JR.getField this "UP")
    else
        if JR.truth (<- JR.cand (<- JR.ge l_angle (JV.int 45)) (do pure (<- JR.lt l_angle (JV.int 135)))) then
            return (<- JR.getField this "RIGHT")
        else
            if JR.truth (<- JR.cand (<- JR.ge l_angle (JV.int 135)) (do pure (<- JR.lt l_angle (JV.int 225)))) then
                return (<- JR.getField this "DOWN")
            else
                if JR.truth (<- JR.cand (<- JR.ge l_angle (JV.int 225)) (do pure (<- JR.lt l_angle (JV.int 315)))) then
                    return (<- JR.getField this "LEFT")
    throw (<- JR.new "RuntimeException" #[])


def m_getGeneralDirection_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "NOT_ANGLE")


def m_main_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_args : JV := (JR.arg jargs 0)
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_angleFactory : JV := (<- JR.callStatic "AngleFactory" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (JV.int 360))) then break
            let _ := (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "appendint_1" #[l_index]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "FORWARD_SLASH")]) "appendshort_1" #[(<- JR.call (<- JR.call l_angleFactory "getClosestDirection_1" #[l_index]) "getValue_0" #[])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "NEW_LINE")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.callStatic "LogUtil" "getInstance_0" #[]) "putF_3" #[(<- JR.call l_stringMaker "toString_0" #[]), (JV.str "main"), (JV.str "main")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_commonPhoneStrings : JV := (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[])
    let mut l_total : JV := (JR.asS (JR.toS (<- JR.alen (<- JR.getField this "angleArray"))))
    JR.setField this "UP" (<- JR.new "NamedAngle" #[(JR.toS (JV.int 0)), (<- JR.getField l_commonPhoneStrings "UP")])
    JR.aset (<- JR.getField this "angleArray") (JV.int 0) (<- JR.getField this "UP")
    if true then
        let mut l_index : JV := (JR.asI (JV.int 1))
        repeat
            if !(JR.truth (<- JR.lt l_index (JV.int 90))) then break
            JR.aset (<- JR.getField this "angleArray") l_index (<- JR.new "Angle" #[(JR.toS l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "RIGHT" (<- JR.new "NamedAngle" #[(JR.toS (JV.int 90)), (<- JR.getField l_commonPhoneStrings "RIGHT")])
    JR.aset (<- JR.getField this "angleArray") (JV.int 90) (<- JR.getField this "RIGHT")
    if true then
        let mut l_index : JV := (JR.asI (JV.int 91))
        repeat
            if !(JR.truth (<- JR.lt l_index (JV.int 180))) then break
            JR.aset (<- JR.getField this "angleArray") l_index (<- JR.new "Angle" #[(JR.toS l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "DOWN" (<- JR.new "NamedAngle" #[(JR.toS (JV.int 180)), (<- JR.getField l_commonPhoneStrings "DOWN")])
    JR.aset (<- JR.getField this "angleArray") (JV.int 180) (<- JR.getField this "DOWN")
    if true then
        let mut l_index : JV := (JR.asI (JV.int 181))
        repeat
            if !(JR.truth (<- JR.lt l_index (JV.int 270))) then break
            JR.aset (<- JR.getField this "angleArray") l_index (<- JR.new "Angle" #[(JR.toS l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "LEFT" (<- JR.new "NamedAngle" #[(JR.toS (JV.int 270)), (<- JR.getField l_commonPhoneStrings "LEFT")])
    JR.aset (<- JR.getField this "angleArray") (JV.int 270) (<- JR.getField this "LEFT")
    if true then
        let mut l_index : JV := (JR.asI (JV.int 271))
        repeat
            if !(JR.truth (<- JR.lt l_index (JR.toI l_total))) then break
            JR.aset (<- JR.getField this "angleArray") l_index (<- JR.new "Angle" #[(JR.toS l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure this

initialize JR.registerClass {
    name := "AngleFactory",
    javaName := "org.allbinary.math.AngleFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("TOTAL_ANGLE", (JV.short 0)), ("QUARTER_TOTAL_ANGLE", (JV.short 0)), ("angleArray", JV.null), ("NEGATIVE_ONE", (JV.short 0)), ("NOT_ANGLE", JV.null), ("DOWN", JV.null), ("UP", JV.null), ("LEFT", JV.null), ("RIGHT", JV.null), ("frameUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getAt_1", #["int"], false, m_getAt_1), 
        ("getClosestDirection_1", #["int"], false, m_getClosestDirection_1), 
        ("getGeneralDirection_0", #[], false, m_getGeneralDirection_0), 
        ("main_1", #["StringArr"], true, m_main_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AngleFactory


