-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryEventCircularPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_initAllBinaryEventCircularPool_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryEventObjectFactoryInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "AllBinaryEventCircularPool" "circularIndexUtil") "setIndex_1" #[(JV.int 0)])
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getInherited this "AllBinaryEventCircularPool" "circularIndexUtil") "getSize_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset (<- JR.getInherited this "AllBinaryEventCircularPool" "OBJECT_ARRAY") l_index (<- JR.call l_allBinaryEventObjectFactoryInterface "getInstance_0" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_max : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "BaseCircularPool" this #[]
    let _ <- jfields this
    JR.setInherited this "AllBinaryEventCircularPool" "OBJECT_ARRAY" (<- JR.newArray "L" 1 #[l_max])
    JR.setInherited this "AllBinaryEventCircularPool" "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[l_max])
    pure this

initialize JR.registerClass {
    name := "AllBinaryEventCircularPool",
    javaName := "org.allbinary.logic.util.event.AllBinaryEventCircularPool",
    super := "BaseCircularPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("initAllBinaryEventCircularPool_1", #["AllBinaryEventObjectFactoryInterface"], false, m_initAllBinaryEventCircularPool_1), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryEventCircularPool


