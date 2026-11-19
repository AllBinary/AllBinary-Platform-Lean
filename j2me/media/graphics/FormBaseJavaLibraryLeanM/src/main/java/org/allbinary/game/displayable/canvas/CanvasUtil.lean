-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CanvasUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getKeyName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    let mut l_commonPhoneStrings : JV := (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[])
    if JR.truth (<- JR.eq l_key (<- JR.getStatic "Canvas" "UP")) then
        return (<- JR.getField l_commonPhoneStrings "UP")
    else
        if JR.truth (<- JR.eq l_key (<- JR.getStatic "Canvas" "DOWN")) then
            return (<- JR.getField l_commonPhoneStrings "DOWN")
        else
            if JR.truth (<- JR.eq l_key (<- JR.getStatic "Canvas" "RIGHT")) then
                return (<- JR.getField l_commonPhoneStrings "RIGHT")
            else
                if JR.truth (<- JR.eq l_key (<- JR.getStatic "Canvas" "LEFT")) then
                    return (<- JR.getField l_commonPhoneStrings "LEFT")
                else
                    if JR.truth (<- JR.eq l_key (<- JR.getStatic "Canvas" "FIRE")) then
                        return (<- JR.getField l_commonPhoneStrings "FIRE")
    return (JV.str "UNKNOWN KEY")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CanvasUtil",
    javaName := "org.allbinary.game.displayable.canvas.CanvasUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getKeyName_1", #["int"], true, m_getKeyName_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CanvasUtil


