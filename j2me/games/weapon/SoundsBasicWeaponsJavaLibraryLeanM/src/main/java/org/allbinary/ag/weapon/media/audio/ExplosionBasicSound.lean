-- Generated Code Do Not Modify
-- package org.allbinary.ag.weapon.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ExplosionBasicSound

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ExplosionBasicSound" "soundInterface" (<- JR.new "ExplosionBasicSound" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ExplosionBasicSound" "soundInterface")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "CompositeSound" this #[(JV.str "resource:/wav/explosion.wav")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ExplosionBasicSound",
    javaName := "org.allbinary.ag.weapon.media.audio.ExplosionBasicSound",
    super := "CompositeSound",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("soundInterface", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ExplosionBasicSound


