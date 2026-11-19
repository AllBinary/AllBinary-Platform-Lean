-- Generated Code Do Not Modify
-- package org.allbinary.animation.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ARectangleFilledAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_unusedX : JV := (JR.asI (JR.arg jargs 1))
    let mut l_unusedY : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "RectangleFilledAnimation" this "paintXY_3" #[l_graphics, (<- JR.getField this "x"), (<- JR.getField this "y")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "RectangleFilledAnimation" this #[(JV.int 0), (JV.int 0), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ARectangleFilledAnimation",
    javaName := "org.allbinary.animation.vector.ARectangleFilledAnimation",
    super := "RectangleFilledAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("x", (JV.int 0)), ("y", (JV.int 0))],
    statics := #[],
    methods := #[
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ARectangleFilledAnimation


