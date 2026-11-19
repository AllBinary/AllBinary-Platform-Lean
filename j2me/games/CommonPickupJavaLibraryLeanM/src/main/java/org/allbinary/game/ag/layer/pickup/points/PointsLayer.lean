-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.pickup.points
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PointsLayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scoreableInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_scoreableInterface "addPoints_1" #[(<- JR.getField this "points")])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "AllBinaryLayer" this #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.new "Rectangle" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), (JV.int 0), (JV.int 0)]), (<- JR.callStatic "ViewPosition" "getInstanceD_0" #[])]
    let _ <- jfields this
    JR.setField this "points" (JR.asI l_points)
    pure this

initialize JR.registerClass {
    name := "PointsLayer",
    javaName := "org.allbinary.game.ag.layer.pickup.points.PointsLayer",
    super := "AllBinaryLayer",
    interfaces := #[],
    isInterface := false,
    fields := #[("points", (JV.int 0))],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("visit_1", #["ScoreableInterface"], false, m_visit_1), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PointsLayer


