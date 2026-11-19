-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlayerGameNotificationHud

def jfields (this : JV) : JM JV := do
    JR.setField this "gameTickTimeDelayHelper" (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[])
    JR.setField this "EMPTY_STRING" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "displayInfo_PlayerGameNotificationHud" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    JR.setField this "gameNotification" (<- JR.new "GameNotification" #[])
    JR.setField this "permanentGameNotification" (<- JR.new "GameNotification" #[])
    JR.setField this "setAndRemoveProcessor" (<- JR.new "SetAndRemoveProcessor" #[this])
    JR.setField this "nextUnremoveableProcessor" (<- JR.new "NextUnremoveableProcessor" #[this])
    JR.setField this "processor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "PERMANENT_GAME_NOTIFICATION" (JV.str "Permanent Game Notification: ")
    JR.setField this "lastString" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "string" (<- JR.getField this "EMPTY_STRING")
    JR.setField this "point" (<- JR.getStatic "CustomGPoint" "NULL_CUSTOM_POINT")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    try
        let _ := (<- JR.callSuper "GameNotificationHud" this "updateMeasurement_1" #[l_graphics])
        let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
        JR.setField this "width" (JR.asI (<- JR.call l_font "stringWidth_1" #[(<- JR.getField this "string")]))
        let _ := (<- JR.call (<- JR.getField this "processor") "process_0" #[])
        JR.setField this "processor" (<- JR.callStatic "Processor" "getInstance_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call l_logUtil "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "UPDATE"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_getPoint_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "point" (<- JR.callStatic "CustomGPoint" "getInstance3_2" #[(JV.int 0), (JV.int 0)])
    let _ := (<- JR.call (<- JR.getField this "point") "setX_1" #[l_x])
    let _ := (<- JR.call (<- JR.getField this "point") "setY_1" #[l_y])
    return (<- JR.getField this "point")


def m_add_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    let mut l_seconds : JV := (JR.arg jargs 1)
    let mut l_basicColor : JV := (JR.arg jargs 2)
    let mut l_permanent : JV := (JR.arg jargs 3)
    if JR.truth (<- JR.call l_permanent "booleanValue_0" #[]) then
        if JR.truth (<- JR.ne (<- JR.getField this "lastString") l_string) then
            JR.setField this "lastString" l_string
            let _ := (<- JR.call (<- JR.getInherited this "PlayerGameNotificationHud" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "PERMANENT_GAME_NOTIFICATION")]) "append_1" #[l_string]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "PlayerGameNotificationHud" "commonStrings") "ADD")])
            pure ()
        let _ := (<- JR.call (<- JR.getField this "permanentGameNotification") "add_3" #[l_string, l_seconds, l_basicColor])
        let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "setSize_1" #[(<- JR.call (<- JR.getField this "permanentGameNotification") "getSize_0" #[])])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getField this "gameNotification") "add_3" #[l_string, l_seconds, l_basicColor])
        pure ()
    pure JV.null


def m_processTick_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTime_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]) then
        let mut l_gameAdState : JV := (<- JR.call (<- JR.callStatic "GameAdStateFactory" "getInstance_0" #[]) "getCurrentInstance_0" #[])
        if JR.truth (<- JR.call l_gameAdState "isShowingAtLocation_1" #[(<- JR.callInherited this "PlayerGameNotificationHud" "getLocation_0" #[])]) then
            JR.setInherited this "PlayerGameNotificationHud" "offsetY" (JV.int (-54))
            pure ()
        else
            JR.setInherited this "PlayerGameNotificationHud" "offsetY" (JV.int 0)
            pure ()
        if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "gameNotification") "getSize_0" #[]) (JV.int 0)) then
            let _ := (<- JR.call this "setAndRemove_0" #[])
            pure ()
        else
            if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "permanentGameNotification") "getSize_0" #[]) (JV.int 0)) then
                let _ := (<- JR.call this "setNextUnremoveable_0" #[])
                pure ()
            else
                JR.setField this "string" (<- JR.getField this "EMPTY_STRING")
                pure ()
        pure ()
    pure JV.null


def m_setAndRemove_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "string" (<- JR.call (<- JR.getField (<- JR.getField this "gameNotification") "stringList") "removeAt_1" #[(JV.int 0)])
    JR.setField this "processor" (<- JR.getField this "setAndRemoveProcessor")
    pure JV.null


def m_setAndRemoveProcess_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callInherited this "PlayerGameNotificationHud" "setX_1" #[(<- JR.shr ((<- JR.sub (<- JR.call (<- JR.getField this "displayInfo_PlayerGameNotificationHud") "getLastWidth_0" #[]) (<- JR.getField this "width"))) (JV.int 1))])
    let _ := (<- JR.call (<- JR.getField this "point") "setX_1" #[(<- JR.callInherited this "PlayerGameNotificationHud" "getX_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "point") "setY_1" #[(<- JR.callInherited this "PlayerGameNotificationHud" "getY_0" #[])])
    let mut l_time : JV := (<- JR.call (<- JR.getField (<- JR.getField this "gameNotification") "timeList") "removeAt_1" #[(JV.int 0)])
    let mut l_iTime : JV := (JR.asI (<- JR.mul (<- JR.call l_time "intValue_0" #[]) (JV.int 1000)))
    if JR.truth (<- JR.eq l_iTime (JV.int 0)) then
        l_iTime := (JR.asI (JV.int 500))
        pure ()
    JR.setField (<- JR.getField this "timeDelayHelper") "delay" (JR.asI l_iTime)
    let _ := (<- JR.callInherited this "PlayerGameNotificationHud" "setBasicColorP_1" #[(<- JR.call (<- JR.getField (<- JR.getField this "gameNotification") "colorList") "removeAt_1" #[(JV.int 0)])])
    pure JV.null


def m_setNextUnremoveable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    JR.setField this "string" (<- JR.aget (<- JR.getField (<- JR.getField (<- JR.getField this "permanentGameNotification") "stringList") "objectArray") l_index)
    JR.setField this "processor" (<- JR.getField this "nextUnremoveableProcessor")
    pure JV.null


def m_setNextUnremoveableProcess_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    let _ := (<- JR.callInherited this "PlayerGameNotificationHud" "setX_1" #[(<- JR.shr ((<- JR.sub (<- JR.call (<- JR.getField this "displayInfo_PlayerGameNotificationHud") "getLastWidth_0" #[]) (<- JR.getField this "width"))) (JV.int 1))])
    let _ := (<- JR.call (<- JR.getField this "point") "setX_1" #[(<- JR.callInherited this "PlayerGameNotificationHud" "getX_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "point") "setY_1" #[(<- JR.callInherited this "PlayerGameNotificationHud" "getY_0" #[])])
    let mut l_time : JV := (<- JR.aget (<- JR.getField (<- JR.getField (<- JR.getField this "permanentGameNotification") "timeList") "objectArray") l_index)
    JR.setField (<- JR.getField this "timeDelayHelper") "delay" (JR.asI (<- JR.mul (<- JR.call l_time "intValue_0" #[]) (JV.int 1000)))
    let _ := (<- JR.callInherited this "PlayerGameNotificationHud" "setBasicColorP_1" #[(<- JR.aget (<- JR.getField (<- JR.getField (<- JR.getField this "permanentGameNotification") "colorList") "objectArray") l_index)])
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "gameNotification") "clear_0" #[])
    let _ := (<- JR.call (<- JR.getField this "permanentGameNotification") "clear_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "PlayerGameNotificationHud" "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.callSuper "GameNotificationHud" this "paintString_2" #[l_graphics, (<- JR.getField this "string")])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_location : JV := (JR.asI (JR.arg jargs 0))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 1))
    let mut l_bufferZone : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "GameNotificationHud" this #[l_location, l_direction, l_bufferZone, l_basicColor]
    let _ <- jfields this
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(JV.int 0)])
    let mut l_gameNotificationEventHandler : JV := (<- JR.callStatic "GameNotificationEventHandler" "getInstance_0" #[])
    let _ := (<- JR.call l_gameNotificationEventHandler "removeAllListeners_0" #[])
    let _ := (<- JR.call l_gameNotificationEventHandler "addListenerInterface_1" #[this])
    pure this

initialize JR.registerClass {
    name := "PlayerGameNotificationHud",
    javaName := "org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud",
    super := "GameNotificationHud",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("gameTickTimeDelayHelper", JV.null), ("EMPTY_STRING", JV.null), ("displayInfo_PlayerGameNotificationHud", JV.null), ("timeDelayHelper", JV.null), ("circularIndexUtil", JV.null), ("gameNotification", JV.null), ("permanentGameNotification", JV.null), ("setAndRemoveProcessor", JV.null), ("nextUnremoveableProcessor", JV.null), ("processor", JV.null), ("PERMANENT_GAME_NOTIFICATION", JV.null), ("lastString", JV.null), ("string", JV.null), ("point", JV.null), ("width", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("getPoint_2", #["int", "int"], false, m_getPoint_2), 
        ("add_4", #["String", "Integer", "BasicColor", "Boolean"], false, m_add_4), 
        ("processTick_0", #[], false, m_processTick_0), 
        ("setAndRemove_0", #[], false, m_setAndRemove_0), 
        ("setAndRemoveProcess_0", #[], false, m_setAndRemoveProcess_0), 
        ("setNextUnremoveable_0", #[], false, m_setNextUnremoveable_0), 
        ("setNextUnremoveableProcess_0", #[], false, m_setNextUnremoveableProcess_0), 
        ("clear_0", #[], false, m_clear_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_4", #["int", "int", "int", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlayerGameNotificationHud


