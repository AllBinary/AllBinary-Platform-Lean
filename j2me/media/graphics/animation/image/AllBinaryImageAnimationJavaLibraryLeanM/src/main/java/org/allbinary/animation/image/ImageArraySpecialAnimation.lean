-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArraySpecialAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 270)])
    JR.setField this "loopCount" (JR.asI (JV.int 0))
    JR.setField this "loopCountTotal" (JR.asI (JV.int 1))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getLoopCount_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "loopCount"))


def m_setLastFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "ImageArraySpecialAnimation" "circularIndexUtil") "setIndex_1" #[(<- JR.sub (<- JR.call (<- JR.getInherited this "ImageArraySpecialAnimation" "circularIndexUtil") "getSize_0" #[]) (JV.int 1))])
    pure JV.null


def m_reset_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callInherited this "ImageArraySpecialAnimation" "setFrame_1" #[(<- JR.sub (<- JR.callInherited this "ImageArraySpecialAnimation" "getSize_0" #[]) (JV.int 1))])
    JR.setField this "loopCount" (JR.asI (JV.int 0))
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.gt (<- JR.callInherited this "ImageArraySpecialAnimation" "getFrame_0" #[]) (JV.int 0)) then
        if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTime_1" #[(<- JR.getField (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[]) "startTime")]) then
            let _ := (<- JR.callInherited this "ImageArraySpecialAnimation" "previousFrame_0" #[])
            if JR.truth (<- JR.eq (<- JR.callInherited this "ImageArraySpecialAnimation" "getFrame_0" #[]) (JV.int 0)) then
                JR.setField this "loopCount" (JR.inc (<- JR.getField this "loopCount"))
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_isComplete_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.cor (<- JR.lt (<- JR.getField this "loopCount") (<- JR.getField this "loopCountTotal")) (do pure (<- JR.ne (<- JR.callInherited this "ImageArraySpecialAnimation" "getFrame_0" #[]) (JV.int 0)))) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    l_x := (JR.asI (<- JR.sub (<- JR.call (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "getLastHalfWidth_0" #[]) ((<- JR.shr (<- JR.call (<- JR.callInherited this "ImageArraySpecialAnimation" "getImage_1" #[(<- JR.call (<- JR.getInherited this "ImageArraySpecialAnimation" "circularIndexUtil") "getIndex_0" #[])]) "getWidth_0" #[]) (JV.int 1)))))
    l_y := (JR.asI (JV.int 5))
    let _ := (<- JR.callSuper "ImageArrayAnimation" this "paintXY_3" #[l_graphics, l_x, l_y])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "ImageArrayAnimation" this #[l_imageArray, l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call this "reset_0" #[])
    pure this

initialize JR.registerClass {
    name := "ImageArraySpecialAnimation",
    javaName := "org.allbinary.animation.image.ImageArraySpecialAnimation",
    super := "ImageArrayAnimation",
    interfaces := #["SpecialAnimationInterface"],
    isInterface := false,
    fields := #[("timeDelayHelper", JV.null), ("loopCount", (JV.int 0)), ("loopCountTotal", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getLoopCount_0", #[], false, m_getLoopCount_0), 
        ("setLastFrame_0", #[], false, m_setLastFrame_0), 
        ("reset_0", #[], false, m_reset_0), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("isComplete_0", #[], false, m_isComplete_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_2", #["ImageArr", "AnimationBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArraySpecialAnimation


