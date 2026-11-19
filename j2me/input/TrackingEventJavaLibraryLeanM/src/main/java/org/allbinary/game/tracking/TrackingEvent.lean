-- Generated Code Do Not Modify
-- package org.allbinary.game.tracking
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TrackingEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "layerInterface" (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "TrackingEvent" "setSource_1" #[l_anyType])
    pure JV.null


def m_getLayerInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "layerInterface")


def m_setLayerInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    JR.setField this "layerInterface" l_layerInterface
    pure JV.null


def m_setLayerInterfaceForCircularStaticPool_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    JR.setField this "layerInterface" l_layerInterface
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "TrackingEvent: \n")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "LayerInterface: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "layerInterface") "toString_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_allBinaryLayerInterface]
    let _ <- jfields this
    if JR.truth (<- JR.ne l_allBinaryLayerInterface (<- JR.callStatic "TrackingEventHandler" "getInstance_0" #[])) then
        let _ := (<- JR.call this "setLayerInterface_1" #[l_allBinaryLayerInterface])
        pure ()
    pure this

initialize JR.registerClass {
    name := "TrackingEvent",
    javaName := "org.allbinary.game.tracking.TrackingEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("layerInterface", JV.null)],
    statics := #[],
    methods := #[
        ("init_1", #["Any"], false, m_init_1), 
        ("getLayerInterface_0", #[], false, m_getLayerInterface_0), 
        ("setLayerInterface_1", #["AllBinaryLayer"], false, m_setLayerInterface_1), 
        ("setLayerInterfaceForCircularStaticPool_1", #["AllBinaryLayer"], false, m_setLayerInterfaceForCircularStaticPool_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["Any"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TrackingEvent


