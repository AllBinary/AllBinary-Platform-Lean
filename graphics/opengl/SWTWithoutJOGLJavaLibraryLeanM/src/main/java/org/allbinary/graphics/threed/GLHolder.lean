-- Generated Code Do Not Modify
-- package org.allbinary.graphics.threed
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GLHolder

def jfields (this : JV) : JM JV := do
    JR.setField this "isCreated" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_runOnSurfaceCreated_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_renderer : JV := (JR.arg jargs 0)
    pure JV.null


def m_runOnSurfaceChanged_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_renderer : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_run_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_renderer : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GLHolder",
    javaName := "org.allbinary.graphics.threed.GLHolder",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("isCreated", (JV.bool false))],
    statics := #[],
    methods := #[
        ("runOnSurfaceCreated_1", #["Any"], false, m_runOnSurfaceCreated_1), 
        ("runOnSurfaceChanged_3", #["Any", "int", "int"], false, m_runOnSurfaceChanged_3), 
        ("run_1", #["Any"], false, m_run_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GLHolder


