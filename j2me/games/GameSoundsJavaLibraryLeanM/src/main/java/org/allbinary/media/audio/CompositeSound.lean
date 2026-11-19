-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CompositeSound

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callInherited this "CompositeSound" "setPlayerP_1" #[(<- JR.new "PlayerComposite" #[(<- JR.callStatic "AllBinaryMediaManager" "createPlayer_1" #[(<- JR.callInherited this "CompositeSound" "getResource_0" #[])]), (JV.int 570)])])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Sound" this #[l_resource]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CompositeSound",
    javaName := "org.allbinary.media.audio.CompositeSound",
    super := "Sound",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CompositeSound


