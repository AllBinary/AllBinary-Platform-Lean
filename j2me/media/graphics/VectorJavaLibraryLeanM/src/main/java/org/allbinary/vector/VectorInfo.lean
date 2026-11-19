-- Generated Code Do Not Modify
-- package org.allbinary.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorInfo

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "width"))


def m_setWidth_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "width" (JR.asI l_width)
    pure JV.null


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "height"))


def m_setHeight_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_height : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "height" (JR.asI l_height)
    pure JV.null


def m_getPoints_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "points")


def m_setPoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    JR.setField this "points" l_points
    pure JV.null


def m_getTotalFrames_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "totalFrames"))


def m_setTotalFrames_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalFrames : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "totalFrames" (JR.asI l_totalFrames)
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_points : JV := (JR.arg jargs 2)
    let mut l_totalFrames : JV := (JR.asI (JR.arg jargs 3))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "width" (JR.asI l_width)
    JR.setField this "height" (JR.asI l_height)
    JR.setField this "points" l_points
    JR.setField this "totalFrames" (JR.asI l_totalFrames)
    pure this

initialize JR.registerClass {
    name := "VectorInfo",
    javaName := "org.allbinary.vector.VectorInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("width", (JV.int 0)), ("height", (JV.int 0)), ("points", JV.null), ("totalFrames", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("setWidth_1", #["int"], false, m_setWidth_1), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("setHeight_1", #["int"], false, m_setHeight_1), 
        ("getPoints_0", #[], false, m_getPoints_0), 
        ("setPoints_1", #["intArrArr"], false, m_setPoints_1), 
        ("getTotalFrames_0", #[], false, m_getTotalFrames_0), 
        ("setTotalFrames_1", #["int"], false, m_setTotalFrames_1), 
        ("jinit_4", #["int", "int", "intArrArr", "int"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorInfo


