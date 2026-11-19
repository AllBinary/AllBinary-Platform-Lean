-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RectangleCollisionPointUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_allPointsInside_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectX1 : JV := (JR.asI (JR.arg jargs 0))
    let mut l_rectY1 : JV := (JR.asI (JR.arg jargs 1))
    let mut l_rectX2 : JV := (JR.asI (JR.arg jargs 2))
    let mut l_rectY2 : JV := (JR.asI (JR.arg jargs 3))
    let mut l_list : JV := (JR.arg jargs 4)
    let mut l_rectangleCollisionUtil : JV := (<- JR.callStatic "RectangleCollisionUtil" "getInstance_0" #[])
    let mut l_point : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        repeat
            let jtemp1 : JV := (JR.dec l_index)
            l_index := jtemp1
            
            if !(JR.truth (<- JR.ge jtemp1 (JV.int 0))) then break
            l_point := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            if JR.truth (JR.not (<- JR.call l_rectangleCollisionUtil "isInside_6" #[l_rectX1, l_rectY1, l_rectX2, l_rectY2, (<- JR.call l_point "getX_0" #[]), (<- JR.call l_point "getY_0" #[])])) then
                return (JV.bool false)
            pure ()
        pure ()
    return (JV.bool true)


def m_allPointsInsideCell_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectX1 : JV := (JR.asI (JR.arg jargs 0))
    let mut l_rectY1 : JV := (JR.asI (JR.arg jargs 1))
    let mut l_rectX2 : JV := (JR.asI (JR.arg jargs 2))
    let mut l_rectY2 : JV := (JR.asI (JR.arg jargs 3))
    let mut l_list : JV := (JR.arg jargs 4)
    let mut l_xCellSize : JV := (JR.asI (JR.arg jargs 5))
    let mut l_yCellSize : JV := (JR.asI (JR.arg jargs 6))
    let mut l_rectangleCollisionUtil : JV := (<- JR.callStatic "RectangleCollisionUtil" "getInstance_0" #[])
    let mut l_point : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            l_point := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            if JR.truth (JR.not (<- JR.call l_rectangleCollisionUtil "isInside_6" #[l_rectX1, l_rectY1, l_rectX2, l_rectY2, (<- JR.mul (<- JR.call l_point "getX_0" #[]) l_xCellSize), (<- JR.mul (<- JR.call l_point "getY_0" #[]) l_yCellSize)])) then
                return (JV.bool false)
            pure ()
        pure ()
    return (JV.bool true)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RectangleCollisionPointUtil",
    javaName := "org.allbinary.math.RectangleCollisionPointUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("allPointsInside_5", #["int", "int", "int", "int", "BasicArrayList"], true, m_allPointsInside_5), 
        ("allPointsInsideCell_7", #["int", "int", "int", "int", "BasicArrayList", "int", "int"], true, m_allPointsInsideCell_7), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RectangleCollisionPointUtil


