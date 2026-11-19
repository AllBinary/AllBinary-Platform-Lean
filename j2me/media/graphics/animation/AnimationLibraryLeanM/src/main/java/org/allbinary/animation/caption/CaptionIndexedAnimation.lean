-- Generated Code Do Not Modify
-- package org.allbinary.animation.caption
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CaptionIndexedAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTime_1" #[(<- JR.getField (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[]) "startTime")]) then
        let _ := (<- JR.call (<- JR.getField this "movieIndexedAnimationInterface") "nextFrame_0" #[])
        pure ()
    if JR.truth (<- JR.call this "isLastFrame_0" #[]) then
        let _ := (<- JR.call (<- JR.callStatic "AnimationEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "END_EVENT")])
        pure ()
    pure JV.null


def m_isLastFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "movieIndexedAnimationInterface") "getFrame_0" #[]) (<- JR.sub (<- JR.call this "getSize_0" #[]) (JV.int 1))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "movieIndexedAnimationInterface") "previousFrame_0" #[])
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "movieIndexedAnimationInterface") "setFrame_1" #[l_index])
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "movieIndexedAnimationInterface") "getFrame_0" #[]))


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "movieIndexedAnimationInterface") "getSize_0" #[]))


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (<- JR.add l_x (<- JR.getField this "captionDx")), (<- JR.add l_y (<- JR.getField this "captionDy"))])
    let _ := (<- JR.call (<- JR.getField this "movieIndexedAnimationInterface") "paintXY_3" #[l_graphics, (<- JR.add (<- JR.add l_x (<- JR.getField this "captionDx")) (<- JR.getField this "dx")), (<- JR.add (<- JR.add l_y (<- JR.getField this "captionDy")) (<- JR.getField this "dy"))])
    pure JV.null


def m_paintThreedXYZ_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintThreedXYZ_4" #[l_graphics, (<- JR.add l_x (<- JR.getField this "captionDx")), (<- JR.add l_y (<- JR.getField this "captionDy")), l_z])
    let _ := (<- JR.call (<- JR.getField this "movieIndexedAnimationInterface") "paintThreedXYZ_4" #[l_graphics, (<- JR.add (<- JR.add l_x (<- JR.getField this "captionDx")) (<- JR.getField this "dx")), (<- JR.add (<- JR.add l_y (<- JR.getField this "captionDy")) (<- JR.getField this "dy")), l_z])
    pure JV.null


def jinit_9 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_movieIndexedAnimationInterface : JV := (JR.arg jargs 1)
    let mut l_player : JV := (JR.arg jargs 2)
    let mut l_captionDx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_captionDy : JV := (JR.asI (JR.arg jargs 4))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 5))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 6))
    let mut l_time : JV := (JR.asI (JR.arg jargs 7))
    let mut l_animationBehavior : JV := (JR.arg jargs 8)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    JR.setField this "animationInterface" l_animationInterface
    JR.setField this "movieIndexedAnimationInterface" l_movieIndexedAnimationInterface
    JR.setField this "captionDx" (JR.asI l_captionDx)
    JR.setField this "captionDy" (JR.asI l_captionDy)
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    JR.setField this "time" (JR.asI l_time)
    JR.setField this "END_EVENT" (<- JR.new "AllBinaryEventObject" #[this])
    let mut l_timePerFrame : JV := (JR.asI (<- JR.div (<- JR.getField this "time") (<- JR.call this "getSize_0" #[])))
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[l_timePerFrame])
    JR.setField this "player" l_player
    let _ := (<- JR.call (<- JR.getField this "player") "start_0" #[])
    pure this

initialize JR.registerClass {
    name := "CaptionIndexedAnimation",
    javaName := "org.allbinary.animation.caption.CaptionIndexedAnimation",
    super := "IndexedAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("animationInterface", JV.null), ("movieIndexedAnimationInterface", JV.null), ("captionDx", (JV.int 0)), ("captionDy", (JV.int 0)), ("dx", (JV.int 0)), ("dy", (JV.int 0)), ("time", (JV.int 0)), ("END_EVENT", JV.null), ("timeDelayHelper", JV.null), ("player", JV.null)],
    statics := #[],
    methods := #[
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("isLastFrame_0", #[], false, m_isLastFrame_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paintThreedXYZ_4", #["Graphics", "int", "int", "int"], false, m_paintThreedXYZ_4), 
        ("jinit_9", #["Animation", "IndexedAnimation", "Player", "int", "int", "int", "int", "int", "AnimationBehavior"], false, jinit_9)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CaptionIndexedAnimation


