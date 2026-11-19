-- Generated Code Do Not Modify
-- package org.allbinary.animation.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TitleAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "systemWrapper" (<- JR.callStatic "ABSystemWrapper" "getInstance_0" #[])
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "CLEAR_COLOR" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "CLEAR_COLOR")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createAnimation_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterfaceArray : JV := (JR.arg jargs 0)
    let mut l_basicColorArray : JV := (JR.arg jargs 1)
    let mut l_dxArray : JV := (JR.arg jargs 2)
    let mut l_dyArray : JV := (JR.arg jargs 3)
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_width : JV := (JR.asI (JR.arg jargs 5))
    return (<- JR.new "TitleAnimation" #[l_animationInterfaceArray, l_basicColorArray, l_dxArray, l_dyArray, l_y, l_width, (<- JR.new "IndexedAnimationBehavior" #[(JV.int 1), (JV.int 250)])])


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTime : JV := (JR.asJ (<- JR.call (<- JR.getField this "systemWrapper") "currentTimeMillis_0" #[]))
    let mut l_totalTimeElapsed : JV := (JR.asJ (<- JR.sub l_currentTime (<- JR.getField this "lastFrameStartTime")))
    let mut l_indexedAnimationBehavior : JV := (<- JR.callInherited this "TitleAnimation" "getAnimationBehavior_0" #[])
    if JR.truth (<- JR.gt l_totalTimeElapsed (<- JR.getField l_indexedAnimationBehavior "frameDelayTime")) then
        let _ := (<- JR.call this "previousFrame_0" #[])
        JR.setField this "lastFrameStartTime" (JR.asJ l_currentTime)
        pure ()
    if JR.truth (<- JR.eq (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") (JV.int 0)) "getFrame_0" #[]) (JV.int 0)) then
        JR.setField l_indexedAnimationBehavior "loopIndex" (JR.inc (<- JR.getField l_indexedAnimationBehavior "loopIndex"))
        pure ()
    pure JV.null


def m_isComplete_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_indexedAnimationBehavior : JV := (<- JR.callInherited this "TitleAnimation" "getAnimationBehavior_0" #[])
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.eq (<- JR.getField l_indexedAnimationBehavior "loopTotal") (JV.int (-1))) (do pure (<- JR.lt (<- JR.getField l_indexedAnimationBehavior "loopIndex") (<- JR.getField l_indexedAnimationBehavior "loopTotal")))) (do pure (<- JR.ne (<- JR.call this "getFrame_0" #[]) (JV.int 0)))) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") (JV.int 0)) "getSize_0" #[]))


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") (JV.int 0)) "getFrame_0" #[]))


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frame : JV := (JR.asI (JR.arg jargs 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "sizeP"))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "setFrame_1" #[l_frame])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_setLastFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setFrame_1" #[(<- JR.sub (<- JR.call this "getSize_0" #[]) (JV.int 1))])
    pure JV.null


def m_reset_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setLastFrame_0" #[])
    let mut l_indexedAnimationBehavior : JV := ((<- JR.callInherited this "TitleAnimation" "getAnimationBehavior_0" #[]))
    let _ := (<- JR.call l_indexedAnimationBehavior "reset_0" #[])
    pure JV.null


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "sizeP"))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "previousFrame_0" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_paintFrameXY_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_frame : JV := (JR.asI (JR.arg jargs 1))
    let mut l_x : JV := (JR.asI (JR.arg jargs 2))
    let mut l_y : JV := (JR.asI (JR.arg jargs 3))
    let _ := (<- JR.call this "setFrame_1" #[l_frame])
    let _ := (<- JR.call this "paintXY_3" #[l_graphics, l_x, l_y])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_ax : JV := (JR.asI (JR.arg jargs 1))
    let mut l_ay : JV := (JR.asI (JR.arg jargs 2))
    let mut l_x : JV := (JR.asI (JV.int 0))
    if JR.truth (<- JR.ne (<- JR.getField this "widthP") (<- JR.getStatic "Integer" "MIN_VALUE")) then
        l_x := (JR.asI ((<- JR.div ((<- JR.sub (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastWidth_0" #[]) (<- JR.getField this "widthP"))) (JV.int 2))))
        pure ()
    let mut l_deltaX : JV := (JR.asI (JV.int 0))
    let mut l_deltaY : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "sizeP"))) then break
            l_deltaX := (JR.asI (<- JR.add (<- JR.aget (<- JR.getField this "dxArray") l_index) l_x))
            l_deltaY := (JR.asI (<- JR.add (<- JR.aget (<- JR.getField this "dyArray") l_index) (<- JR.getField this "y")))
            if JR.truth (<- JR.ne (<- JR.aget (<- JR.getField this "basicColorArray") l_index) (<- JR.getField this "CLEAR_COLOR")) then
                let _ := (<- JR.call (<- JR.getInherited this "TitleAnimation" "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.aget (<- JR.getField this "basicColorArray") l_index)])
                pure ()
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "paintXY_3" #[l_graphics, l_deltaX, l_deltaY])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterfaceArray : JV := (JR.arg jargs 0)
    let mut l_basicColorArray : JV := (JR.arg jargs 1)
    let mut l_dxArray : JV := (JR.arg jargs 2)
    let mut l_dyArray : JV := (JR.arg jargs 3)
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_width : JV := (JR.asI (JR.arg jargs 5))
    let mut l_animationBehavior : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "SpecialAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    JR.setField this "lastFrameStartTime" (JR.asJ (<- JR.call (<- JR.getField this "systemWrapper") "currentTimeMillis_0" #[]))
    JR.setField this "animationInterfaceArray" l_animationInterfaceArray
    JR.setField this "sizeP" (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
    JR.setField this "basicColorArray" l_basicColorArray
    JR.setField this "dxArray" l_dxArray
    JR.setField this "dyArray" l_dyArray
    JR.setField this "y" (JR.asI l_y)
    JR.setField this "widthP" (JR.asI l_width)
    let _ := (<- JR.call this "reset_0" #[])
    pure this

initialize JR.registerClass {
    name := "TitleAnimation",
    javaName := "org.allbinary.animation.special.TitleAnimation",
    super := "SpecialAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("systemWrapper", JV.null), ("deltaX", (JV.float 0.0)), ("deltaY", (JV.float 0.0)), ("deltaZ", (JV.float 0.0)), ("basicColorArray", JV.null), ("dxArray", JV.null), ("dyArray", JV.null), ("widthP", (JV.int 0)), ("animationInterfaceArray", JV.null), ("sizeP", (JV.int 0)), ("y", (JV.int 0)), ("lastFrameStartTime", (JV.long 0)), ("displayInfoSingleton", JV.null), ("CLEAR_COLOR", JV.null)],
    statics := #[],
    methods := #[
        ("createAnimation_6", #["IndexedAnimationArr", "BasicColorArr", "intArr", "intArr", "int", "int"], true, m_createAnimation_6), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("isComplete_0", #[], false, m_isComplete_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("setLastFrame_0", #[], false, m_setLastFrame_0), 
        ("reset_0", #[], false, m_reset_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("paintFrameXY_4", #["Graphics", "int", "int", "int"], false, m_paintFrameXY_4), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_7", #["IndexedAnimationArr", "BasicColorArr", "intArr", "intArr", "int", "int", "AnimationBehavior"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TitleAnimation


