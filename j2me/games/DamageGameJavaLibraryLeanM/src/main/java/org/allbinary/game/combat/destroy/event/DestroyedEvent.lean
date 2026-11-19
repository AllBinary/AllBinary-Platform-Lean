-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.destroy.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DestroyedEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "allBinaryGameCanvas" (<- JR.callStatic "NullGameCanvas" "getInstance_0" #[])
    JR.setField this "allBinaryLayerInterface" (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAllBinaryGameCanvas_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "allBinaryGameCanvas")


def m_getLayerInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "allBinaryLayerInterface")


def m_setAllBinaryGameCanvas_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    JR.setField this "allBinaryGameCanvas" l_allBinaryGameCanvas
    pure JV.null


def m_setLayerInterfaceForCircularStaticPool_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerInterface : JV := (JR.arg jargs 0)
    JR.setField this "allBinaryLayerInterface" l_allBinaryLayerInterface
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "DestroyedEvent: \n")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "AllBinaryLayerInterface: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "allBinaryLayerInterface") "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "\nAllBinaryGameCanvas: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.call this "getAllBinaryGameCanvas_0" #[])])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_combatGameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AllBinaryEventObject" this #[(<- JR.callStatic "DestroyedEventHandler" "getInstance_0" #[])]
    let _ <- jfields this
    let _ := (<- JR.call this "setAllBinaryGameCanvas_1" #[l_combatGameCanvas])
    pure this

initialize JR.registerClass {
    name := "DestroyedEvent",
    javaName := "org.allbinary.game.combat.destroy.event.DestroyedEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("allBinaryGameCanvas", JV.null), ("allBinaryLayerInterface", JV.null)],
    statics := #[],
    methods := #[
        ("getAllBinaryGameCanvas_0", #[], false, m_getAllBinaryGameCanvas_0), 
        ("getLayerInterface_0", #[], false, m_getLayerInterface_0), 
        ("setAllBinaryGameCanvas_1", #["AllBinaryGameCanvas"], false, m_setAllBinaryGameCanvas_1), 
        ("setLayerInterfaceForCircularStaticPool_1", #["AllBinaryLayer"], false, m_setLayerInterfaceForCircularStaticPool_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DestroyedEvent


