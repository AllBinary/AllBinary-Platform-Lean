-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommonButtons

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CommonButtons" "instance" (<- JR.new "CommonButtons" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CommonButtons" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_commonButtonSize : JV := (JR.asI (JV.int 128))
    repeat
        if !(JR.truth (<- JR.gt l_commonButtonSize (JV.int 64))) then break
        let mut l_totalColumns : JV := (JR.asI (<- JR.div (<- JR.call l_displayInfo "getLastWidth_0" #[]) l_commonButtonSize))
        let mut l_totalRows : JV := (JR.asI (<- JR.div (<- JR.call l_displayInfo "getLastHeight_0" #[]) l_commonButtonSize))
        let mut l_max : JV := (JR.asI l_totalColumns)
        if JR.truth (<- JR.gt l_totalRows l_max) then
            l_max := (JR.asI l_totalRows)
            pure ()
        if JR.truth (<- JR.gt l_max (JV.int 9)) then
            break
        l_commonButtonSize := (JR.asI (<- JR.shr l_commonButtonSize (JV.int 1)))
        pure ()
    JR.setField this "STANDARD_BUTTON_SIZE" (JR.asI l_commonButtonSize)
    JR.setField this "NORMAL_BUTTON" (<- JR.new "Rectangle" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), (<- JR.getField this "STANDARD_BUTTON_SIZE"), (<- JR.getField this "STANDARD_BUTTON_SIZE")])
    JR.setField this "LARGE_BUTTON" (<- JR.new "Rectangle" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), (<- JR.shl (<- JR.getField this "STANDARD_BUTTON_SIZE") (JV.int 1)), (<- JR.shl (<- JR.getField this "STANDARD_BUTTON_SIZE") (JV.int 1))])
    pure this

initialize JR.registerClass {
    name := "CommonButtons",
    javaName := "org.allbinary.input.motion.button.CommonButtons",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("STANDARD_BUTTON_SIZE", (JV.int 0)), ("NORMAL_BUTTON", JV.null), ("LARGE_BUTTON", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommonButtons


