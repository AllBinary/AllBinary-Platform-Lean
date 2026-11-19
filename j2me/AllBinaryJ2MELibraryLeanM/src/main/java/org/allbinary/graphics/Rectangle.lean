-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Rectangle

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getPoint_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "point")


def m_setPoint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    JR.setField this "point" l_point
    pure JV.null


def m_getMaxX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.add (<- JR.call (<- JR.getField this "point") "getX_0" #[]) (<- JR.getField this "width")))


def m_getMaxY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.add (<- JR.call (<- JR.getField this "point") "getY_0" #[]) (<- JR.getField this "height")))


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


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.call this "getPoint_0" #[]) "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "WIDTH_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getWidth_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "HEIGHT_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getHeight_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " MaxX: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getMaxX_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " MaxY: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getMaxY_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "point" l_point
    JR.setField this "width" (JR.asI l_width)
    JR.setField this "height" (JR.asI l_height)
    pure this

initialize JR.registerClass {
    name := "Rectangle",
    javaName := "org.allbinary.graphics.Rectangle",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("point", JV.null), ("width", (JV.int 0)), ("height", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getPoint_0", #[], false, m_getPoint_0), 
        ("setPoint_1", #["GPoint"], false, m_setPoint_1), 
        ("getMaxX_0", #[], false, m_getMaxX_0), 
        ("getMaxY_0", #[], false, m_getMaxY_0), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("setWidth_1", #["int"], false, m_setWidth_1), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("setHeight_1", #["int"], false, m_setHeight_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_3", #["GPoint", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Rectangle


