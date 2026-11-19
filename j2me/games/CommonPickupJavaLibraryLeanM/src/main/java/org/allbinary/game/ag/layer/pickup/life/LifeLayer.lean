-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.pickup.life
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LifeLayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lifeInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_lifeInterface "add_1" #[(JR.toS (JV.int 1))])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinaryLayer" this #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.new "Rectangle" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), (JV.int 0), (JV.int 0)]), (<- JR.callStatic "ViewPosition" "getInstanceD_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LifeLayer",
    javaName := "org.allbinary.game.ag.layer.pickup.life.LifeLayer",
    super := "AllBinaryLayer",
    interfaces := #["LifeVisitorInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("visit_1", #["Life"], false, m_visit_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LifeLayer


