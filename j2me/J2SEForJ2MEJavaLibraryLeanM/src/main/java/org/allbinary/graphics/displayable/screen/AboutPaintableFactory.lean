-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable.screen
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AboutPaintableFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "paintableArray" (<- JR.arrayOf "L" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AboutPaintableFactory" "instance" (<- JR.new "AboutPaintableFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AboutPaintableFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_INFO : JV := (<- JR.arrayOf "L" #[(JV.str "Built with the"), (JV.str "AllBinary Platform"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (JV.str "Comments or Questions:"), (JV.str "support@allbinary.com")])
    let mut l_DEVELOPERS : JV := (<- JR.arrayOf "L" #[(JV.str "Developed By:"), (JV.str "Travis Berthelot")])
    JR.setField this "paintableArray" (<- JR.call (<- JR.callStatic "AboutPaintable" "getInstance_2" #[l_INFO, l_DEVELOPERS]) "getPaintableArrayInstance_0" #[])
    pure this

initialize JR.registerClass {
    name := "AboutPaintableFactory",
    javaName := "org.allbinary.graphics.displayable.screen.AboutPaintableFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("paintableArray", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AboutPaintableFactory


