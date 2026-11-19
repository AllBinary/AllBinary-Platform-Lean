-- Generated Code Do Not Modify
-- package org.allbinary.game.part
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CountedLayerInterfaceFactoryPart

def jfields (this : JV) : JM JV := do
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "animationInterface" (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])
    JR.setField this "totalString" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_CHAR_ARRAY")
    JR.setField this "countedPickedUpLayerInterfaceFactory" (<- JR.getStatic "CountedPickedUpLayerInterfaceFactory" "NULL_COUNTED_PICKUP_LAYER_FACTORY")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CountedLayerInterfaceFactoryPart" "NULL_COUNTED_LAYER_INTERFACE_FACTORY" (<- JR.new "CountedLayerInterfaceFactoryPart" #[(JV.int 0), (<- JR.getStatic "CountedPickedUpLayerInterfaceFactory" "NULL_COUNTED_PICKUP_LAYER_FACTORY")])
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    let _ := (<- JR.call this "setXOffset_1" #[(<- JR.add (<- JR.call l_font "charsWidth_3" #[(<- JR.getField this "totalString"), (JV.int 0), (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCurrentTotalDigits_0" #[])]) ((<- JR.shr (<- JR.call l_font "getSize_0" #[]) (JV.int 1))))])
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_total : JV := (JR.asI (JR.arg jargs 0))
    let mut l_countedPickedUpLayerInterfaceFactory : JV := (JR.arg jargs 1)
    let _ := (<- JR.call this "setCountedPickedUpLayerInterfaceFactory_1" #[l_countedPickedUpLayerInterfaceFactory])
    JR.setField this "total" (JR.asI l_total)
    pure JV.null


def m_getInstance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    if JR.truth (<- JR.gt (<- JR.getField this "total") (JV.int 0)) then
        let _ := (<- JR.call this "setTotal_1" #[(<- JR.sub (<- JR.getField this "total") (JV.int 1))])
        return (<- JR.call (<- JR.call this "getCountedPickedUpLayerInterfaceFactory_0" #[]) "getNextInstance_4" #[l_hashtable, l_x, l_y, l_z])
    else
        throw (<- JR.new "Exception" #[(JV.str "No more left. Could use a listener to automatically remove")])
    pure JV.null


def m_getTotal_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "total"))


def m_setTotal_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_total : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "total" (JR.asI l_total)
    JR.setField this "totalString" (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCharArray_1" #[l_total])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_getAnimationInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationInterface")


def m_setAnimationInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    JR.setField this "animationInterface" l_animationInterface
    pure JV.null


def m_getXOffset_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "xOffset"))


def m_setXOffset_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalStringWidth : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "xOffset" (JR.asI l_totalStringWidth)
    pure JV.null


def m_getTotalString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "totalString")


def m_getCountedPickedUpLayerInterfaceFactory_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "countedPickedUpLayerInterfaceFactory")


def m_setCountedPickedUpLayerInterfaceFactory_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_countedPickedUpLayerInterfaceFactory : JV := (JR.arg jargs 0)
    JR.setField this "countedPickedUpLayerInterfaceFactory" l_countedPickedUpLayerInterfaceFactory
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_total : JV := (JR.asI (JR.arg jargs 0))
    let mut l_countedPickedUpLayerInterfaceFactory : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "primitiveLongUtil" (<- JR.callStatic "PrimitiveLongUtil" "createPowerOfTen_1" #[(JV.int 1000)])
    let _ := (<- JR.call this "init_2" #[l_total, l_countedPickedUpLayerInterfaceFactory])
    pure this

initialize JR.registerClass {
    name := "CountedLayerInterfaceFactoryPart",
    javaName := "org.allbinary.game.part.CountedLayerInterfaceFactoryPart",
    super := "Object",
    interfaces := #["PartInterface", "UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("animationInterface", JV.null), ("total", (JV.int 0)), ("totalString", JV.null), ("xOffset", (JV.int 0)), ("countedPickedUpLayerInterfaceFactory", JV.null), ("primitiveLongUtil", JV.null)],
    statics := #[("NULL_COUNTED_LAYER_INTERFACE_FACTORY", JV.null)],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("init_2", #["int", "CountedPickedUpLayerInterfaceFactory"], false, m_init_2), 
        ("getInstance_4", #["ABHashtable", "int", "int", "int"], false, m_getInstance_4), 
        ("getTotal_0", #[], false, m_getTotal_0), 
        ("setTotal_1", #["int"], false, m_setTotal_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("getAnimationInterface_0", #[], false, m_getAnimationInterface_0), 
        ("setAnimationInterface_1", #["Animation"], false, m_setAnimationInterface_1), 
        ("getXOffset_0", #[], false, m_getXOffset_0), 
        ("setXOffset_1", #["int"], false, m_setXOffset_1), 
        ("getTotalString_0", #[], false, m_getTotalString_0), 
        ("getCountedPickedUpLayerInterfaceFactory_0", #[], false, m_getCountedPickedUpLayerInterfaceFactory_0), 
        ("setCountedPickedUpLayerInterfaceFactory_1", #["CountedPickedUpLayerInterfaceFactory"], false, m_setCountedPickedUpLayerInterfaceFactory_1), 
        ("jinit_2", #["int", "CountedPickedUpLayerInterfaceFactory"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CountedLayerInterfaceFactoryPart


