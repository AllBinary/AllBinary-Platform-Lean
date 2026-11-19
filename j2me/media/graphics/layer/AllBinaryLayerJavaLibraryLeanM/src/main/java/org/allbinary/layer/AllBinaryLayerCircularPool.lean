-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryLayerCircularPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_initAllBinaryLayerCircularPool_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_total : JV := (JR.asI (JR.arg jargs 1))
    JR.setInherited this "AllBinaryLayerCircularPool" "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[l_total])
    JR.setInherited this "AllBinaryLayerCircularPool" "OBJECT_ARRAY" (<- JR.newArray "L" 1 #[l_total])
    if true then
        let mut l_localIndex : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_localIndex l_total)) then break
            JR.aset (<- JR.getInherited this "AllBinaryLayerCircularPool" "OBJECT_ARRAY") l_localIndex (<- JR.call l_allbinaryLayerFactoryInterface "getInstance_0" #[])
            l_localIndex := (JR.inc l_localIndex)
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BaseCircularPool" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryLayerCircularPool",
    javaName := "org.allbinary.layer.AllBinaryLayerCircularPool",
    super := "BaseCircularPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("initAllBinaryLayerCircularPool_2", #["AllBinaryLayerFactoryInterface", "int"], false, m_initAllBinaryLayerCircularPool_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryLayerCircularPool


