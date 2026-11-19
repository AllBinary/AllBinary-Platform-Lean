-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseScalable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getRatio_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ratio : JV := (JR.asF (JR.arg jargs 0))
    return (JR.asF (JV.float 1.0))


def m_getLeft_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_xOffset : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (JV.int (-1)))


def m_getTop_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_yOffset : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (JV.int (-1)))


def m_scale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ratio : JV := (JR.asF (JR.arg jargs 0))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BaseScalable",
    javaName := "org.allbinary.graphics.displayable.BaseScalable",
    super := "Object",
    interfaces := #["ScalableListener"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getRatio_1", #["float"], false, m_getRatio_1), 
        ("getLeft_1", #["int"], false, m_getLeft_1), 
        ("getTop_1", #["int"], false, m_getTop_1), 
        ("scale_1", #["float"], false, m_scale_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseScalable


