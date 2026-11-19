-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullRotationAnimation2

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "NullRotationAnimation" this #[(<- JR.callStatic "AngleInfo" "getInstance_1" #[(<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "QUARTER_TOTAL_ANGLE")]), (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(JV.int 4)]), (<- JR.new "IndexedAnimationBehavior" #[(JV.int 1), (JV.int 250)])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullRotationAnimation2",
    javaName := "org.allbinary.animation.NullRotationAnimation2",
    super := "NullRotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullRotationAnimation2


