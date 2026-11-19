-- Generated Code Do Not Modify
-- package org.allbinary.emulator.device
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TrueTypeFontUtilBase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAsTextureSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_textureSize : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (JV.int (-1)))


def m_getCellSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cellSize : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (JV.int (-1)))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scale : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TrueTypeFontUtilBase",
    javaName := "org.allbinary.emulator.device.TrueTypeFontUtilBase",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getAsTextureSize_1", #["int"], false, m_getAsTextureSize_1), 
        ("getCellSize_1", #["int"], false, m_getCellSize_1), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TrueTypeFontUtilBase


