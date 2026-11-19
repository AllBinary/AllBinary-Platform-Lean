-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.health
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HealthHudWidget

def jfields (this : JV) : JM JV := do
    JR.setField this "gameTickTimeDelayHelper" (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[])
    JR.setField this "timeDelayHelper" (<- JR.getStatic "NoTimeDelayHelper" "SINGLETON")
    JR.setField this "slowBeatTimeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 1280)])
    JR.setField this "mediumBeatTimeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 640)])
    JR.setField this "fastBeatTimeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 320)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.ne (<- JR.getField this "xArray") JV.null) then
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index (<- JR.alen (<- JR.getField this "xArray")))) then break
                JR.aset (<- JR.getField this "xArray") l_index (JR.asI (<- JR.add (<- JR.callInherited this "HealthHudWidget" "getX_0" #[]) ((<- JR.mul l_index (JV.int 16)))))
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_setX_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "BasicHud" this "setX_1" #[l_x])
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_onHealthChange_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "max" (JR.asI ((<- JR.div (<- JR.call (<- JR.getField this "healthInterface") "getHealth_0" #[]) (<- JR.getField this "healthScale"))))
    JR.setField this "timeDelayHelper" (<- JR.getStatic "NoTimeDelayHelper" "SINGLETON")
    if JR.truth (<- JR.cand (<- JR.le (<- JR.getField this "max") (JV.int 1)) (do pure (<- JR.call (<- JR.getField this "healthInterface") "isAlive_0" #[]))) then
        JR.setField this "max" (JR.asI (JV.int 1))
        if JR.truth (<- JR.gt (<- JR.sub (<- JR.getField this "healthScale") (<- JR.call (<- JR.getField this "healthInterface") "getHealth_0" #[])) (<- JR.div ((<- JR.mul (<- JR.getField this "healthScale") (JV.int 2))) (JV.int 3))) then
            JR.setField this "timeDelayHelper" (<- JR.getField this "slowBeatTimeDelayHelper")
            pure ()
        else
            if JR.truth (<- JR.gt (<- JR.sub (<- JR.getField this "healthScale") (<- JR.call (<- JR.getField this "healthInterface") "getHealth_0" #[])) (<- JR.div (<- JR.getField this "healthScale") (JV.int 3))) then
                JR.setField this "timeDelayHelper" (<- JR.getField this "mediumBeatTimeDelayHelper")
                pure ()
            else
                JR.setField this "timeDelayHelper" (<- JR.getField this "fastBeatTimeDelayHelper")
                pure ()
        pure ()
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "HealthHudWidget" "myFontProcessor") "process_1" #[l_graphics])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "max"))) then break
            if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTime_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]) then
                let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (<- JR.aget (<- JR.getField this "xArray") l_index), (<- JR.callInherited this "HealthHudWidget" "getY_0" #[])])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_healthInterface : JV := (JR.arg jargs 1)
    let mut l_location : JV := (JR.asI (JR.arg jargs 2))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 3))
    let _ <- JR.superInit "BasicHud" this #[l_location, l_direction, (JV.int 2), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")]
    let _ <- jfields this
    JR.setField this "animationInterface" l_animationInterface
    JR.setField this "healthInterface" l_healthInterface
    let _ := (<- JR.call (<- JR.getField this "healthInterface") "addListener_1" #[this])
    JR.setField this "healthScale" (JR.asI (<- JR.add ((<- JR.div (<- JR.call (<- JR.getField this "healthInterface") "getMaxHealth_0" #[]) (JV.int 6))) (JV.int 1)))
    let _ := (<- JR.call this "onHealthChange_0" #[])
    JR.setInherited this "HealthHudWidget" "updateMaxWidth" (<- JR.mul (<- JR.call l_healthInterface "getMaxHealth_0" #[]) (JV.int 16))
    JR.setInherited this "HealthHudWidget" "updateMaxHeight" (JV.int 16)
    JR.setField this "xArray" (<- JR.newArray "I" 1 #[(JV.int 30)])
    let _ := (<- JR.call this "update_0" #[])
    pure this

initialize JR.registerClass {
    name := "HealthHudWidget",
    javaName := "org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget",
    super := "BasicHud",
    interfaces := #["PaintableInterface", "HealthListenerInterface"],
    isInterface := false,
    fields := #[("healthScale", (JV.int 0)), ("animationInterface", JV.null), ("healthInterface", JV.null), ("max", (JV.int 0)), ("xArray", JV.null), ("gameTickTimeDelayHelper", JV.null), ("timeDelayHelper", JV.null), ("slowBeatTimeDelayHelper", JV.null), ("mediumBeatTimeDelayHelper", JV.null), ("fastBeatTimeDelayHelper", JV.null)],
    statics := #[],
    methods := #[
        ("update_0", #[], false, m_update_0), 
        ("setX_1", #["int"], false, m_setX_1), 
        ("onHealthChange_0", #[], false, m_onHealthChange_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_4", #["Animation", "Health", "int", "int"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HealthHudWidget


