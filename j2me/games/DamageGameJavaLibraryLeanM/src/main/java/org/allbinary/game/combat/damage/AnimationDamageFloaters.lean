-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.damage
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnimationDamageFloaters

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damage : JV := (JR.asI (JR.arg jargs 0))
    let mut l_i : JV := (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_i) "setFrame_1" #[(JV.int 0)])
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    try
        let mut l_viewPosition : JV := (<- JR.call (<- JR.getField this "layerInterface") "getViewPosition_0" #[])
        let mut l_x : JV := (JR.asI (<- JR.call l_viewPosition "getX_0" #[]))
        let mut l_y : JV := (JR.asI (<- JR.call l_viewPosition "getY_0" #[]))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index (<- JR.alen (<- JR.getField this "animationInterfaceArray")))) then break
                let mut l_animationInterface : JV := (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index)
                if JR.truth (<- JR.lt (<- JR.call l_animationInterface "getFrame_0" #[]) (<- JR.sub (<- JR.call l_animationInterface "getAnimationSize_0" #[]) (JV.int 1))) then
                    let mut l_delta : JV := (JR.asI (<- JR.mul (<- JR.call l_animationInterface "getFrame_0" #[]) (JV.int 20)))
                    let _ := (<- JR.call l_animationInterface "paintXY_3" #[l_graphics, (<- JR.add l_x (<- JR.getField this "dx")), (<- JR.add (<- JR.sub l_y l_delta) (<- JR.getField this "dy"))])
                    let _ := (<- JR.call l_animationInterface "nextFrame_0" #[])
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let mut l_canvasStrings : JV := (<- JR.callStatic "CanvasStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_canvasStrings "PAINT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_animationInterfaceArray : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    let _ <- JR.superInit "DamageFloaters" this #[]
    let _ <- jfields this
    JR.setField this "animationInterfaceArray" l_animationInterfaceArray
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "animationInterfaceArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "setFrame_1" #[(<- JR.sub (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "getSize_0" #[]) (JV.int 1))])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    JR.setField this "layerInterface" l_layerInterface
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.alen (<- JR.getField this "animationInterfaceArray"))])
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    pure this

initialize JR.registerClass {
    name := "AnimationDamageFloaters",
    javaName := "org.allbinary.game.combat.damage.AnimationDamageFloaters",
    super := "DamageFloaters",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("layerInterface", JV.null), ("animationInterfaceArray", JV.null), ("circularIndexUtil", JV.null), ("dx", (JV.int 0)), ("dy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("add_1", #["int"], false, m_add_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_4", #["AllBinaryLayer", "IndexedAnimationArr", "int", "int"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnimationDamageFloaters


