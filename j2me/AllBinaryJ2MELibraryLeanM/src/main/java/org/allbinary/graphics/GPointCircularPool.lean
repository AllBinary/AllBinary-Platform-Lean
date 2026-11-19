-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GPointCircularPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "BaseCircularPool" this #[]
    let _ <- jfields this
    JR.setInherited this "GPointCircularPool" "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[l_size])
    JR.setInherited this "GPointCircularPool" "OBJECT_ARRAY" (<- JR.newArray "L" 1 #[l_size])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            JR.aset (<- JR.getInherited this "GPointCircularPool" "OBJECT_ARRAY") l_index (<- JR.callStatic "CustomGPoint" "getInstance3_2" #[(JV.int 0), (JV.int 0)])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure this

initialize JR.registerClass {
    name := "GPointCircularPool",
    javaName := "org.allbinary.graphics.GPointCircularPool",
    super := "BaseCircularPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GPointCircularPool


