-- Generated Code Do Not Modify
-- package org.allbinary.graphics.color
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicColorSetUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicColorSetUtil" "instance" (<- JR.new "BasicColorSetUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicColorSetUtil" "instance")


def m_setBasicColorP_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call l_basicColor "intValue_0" #[])])
    pure JV.null


def m_setBasicColorP3_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let mut l_value : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call l_graphics "setColor_1" #[l_value])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicColorSetUtil",
    javaName := "org.allbinary.graphics.color.BasicColorSetUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setBasicColorP_2", #["Graphics", "BasicColor"], false, m_setBasicColorP_2), 
        ("setBasicColorP3_3", #["Graphics", "BasicColor", "int"], false, m_setBasicColorP3_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicColorSetUtil


