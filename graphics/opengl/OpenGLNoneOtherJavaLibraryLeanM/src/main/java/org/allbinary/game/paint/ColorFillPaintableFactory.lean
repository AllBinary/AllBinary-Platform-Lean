-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ColorFillPaintableFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ColorFillPaintableFactory" "instance" (<- JR.new "ColorFillPaintableFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ColorFillPaintableFactory" "instance")


def m_getInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let mut l_forThreedCanvas : JV := (JR.arg jargs 1)
    let mut l_operatingSystem : JV := (<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[])
    if JR.truth (<- JR.call l_operatingSystem "isOverScan_0" #[]) then
        return (<- JR.new "OverScanColorFillPaintable" #[l_basicColor])
    else
        return (<- JR.new "ColorFillPaintable" #[l_basicColor])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ColorFillPaintableFactory",
    javaName := "org.allbinary.game.paint.ColorFillPaintableFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstance_2", #["BasicColor", "boolean"], false, m_getInstance_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ColorFillPaintableFactory


