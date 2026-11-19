-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RectangleCollisionUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "RectangleCollisionUtil" "instance" (<- JR.new "RectangleCollisionUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "RectangleCollisionUtil" "instance")


def m_isCollision_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectX1 : JV := (JR.asI (JR.arg jargs 0))
    let mut l_rectY1 : JV := (JR.asI (JR.arg jargs 1))
    let mut l_rectX2 : JV := (JR.asI (JR.arg jargs 2))
    let mut l_rectY2 : JV := (JR.asI (JR.arg jargs 3))
    let mut l_rect2X1 : JV := (JR.asI (JR.arg jargs 4))
    let mut l_rect2Y1 : JV := (JR.asI (JR.arg jargs 5))
    let mut l_rect2X2 : JV := (JR.asI (JR.arg jargs 6))
    let mut l_rect2Y2 : JV := (JR.asI (JR.arg jargs 7))
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.cor (<- JR.ge l_rect2X1 l_rectX2) (do pure (<- JR.ge l_rect2Y1 l_rectY2))) (do pure (<- JR.le l_rect2X2 l_rectX1))) (do pure (<- JR.le l_rect2Y2 l_rectY1))) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def m_isInside_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectX1 : JV := (JR.asI (JR.arg jargs 0))
    let mut l_rectY1 : JV := (JR.asI (JR.arg jargs 1))
    let mut l_rectX2 : JV := (JR.asI (JR.arg jargs 2))
    let mut l_rectY2 : JV := (JR.asI (JR.arg jargs 3))
    let mut l_x : JV := (JR.asI (JR.arg jargs 4))
    let mut l_y : JV := (JR.asI (JR.arg jargs 5))
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.cor (<- JR.ge l_x l_rectX2) (do pure (<- JR.ge l_y l_rectY2))) (do pure (<- JR.le l_x l_rectX1))) (do pure (<- JR.le l_y l_rectY1))) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RectangleCollisionUtil",
    javaName := "org.allbinary.math.RectangleCollisionUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isCollision_8", #["int", "int", "int", "int", "int", "int", "int", "int"], false, m_isCollision_8), 
        ("isInside_6", #["int", "int", "int", "int", "int", "int"], false, m_isInside_6), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RectangleCollisionUtil


