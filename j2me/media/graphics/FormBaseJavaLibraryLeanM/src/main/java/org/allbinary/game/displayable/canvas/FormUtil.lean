-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FormUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FormUtil" "instance" (<- JR.new "FormUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FormUtil" "instance")


def m_createFormRectangle_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    let mut l_rectangle : JV := (<- JR.new "Rectangle" #[(<- JR.call l_pointFactory "createXY_2" #[(JV.int 30), (JV.int 10)]), (<- JR.sub (<- JR.call l_displayInfo "getLastWidth_0" #[]) (JV.int 30)), (<- JR.sub (<- JR.call l_displayInfo "getLastHeight_0" #[]) (JV.int 35))])
    return l_rectangle


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FormUtil",
    javaName := "org.allbinary.game.displayable.canvas.FormUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createFormRectangle_0", #[], false, m_createFormRectangle_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FormUtil


