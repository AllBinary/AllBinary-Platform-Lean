-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LicenseLoadingTypeFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "INITIAL_LOADING" (<- JR.new "LicenseLoadingType" #[(JV.str "Initial Loading")])
    JR.setField this "GAME_START" (<- JR.new "LicenseLoadingType" #[(JV.str "Game Start")])
    JR.setField this "LOGIN" (<- JR.new "LicenseLoadingType" #[(JV.str "Login")])
    JR.setField this "OTHER" (<- JR.new "LicenseLoadingType" #[(JV.str "Other/Usually The First Non Demo Level")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LicenseLoadingTypeFactory" "instance" (<- JR.new "LicenseLoadingTypeFactory" #[])
    pure JV.null


def m_getIntance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LicenseLoadingTypeFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LicenseLoadingTypeFactory",
    javaName := "org.allbinary.game.midlet.LicenseLoadingTypeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("INITIAL_LOADING", JV.null), ("GAME_START", JV.null), ("LOGIN", JV.null), ("OTHER", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getIntance_0", #[], true, m_getIntance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LicenseLoadingTypeFactory


