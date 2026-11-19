-- Generated Code Do Not Modify
-- package org.allbinary.platform.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformTextureBaseFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlatformTextureBaseFactory" "NULL_PLATFORM_TEXTURE_BASE_FACTORY" (<- JR.new "PlatformTextureBaseFactory" #[])
    pure JV.null


def m_load_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_target : JV := (JR.asI (JR.arg jargs 1))
    let mut l_level : JV := (JR.asI (JR.arg jargs 2))
    let mut l_image : JV := (JR.arg jargs 3)
    let mut l_border : JV := (JR.asI (JR.arg jargs 4))
    let mut l_flip : JV := (JR.arg jargs 5)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlatformTextureBaseFactory",
    javaName := "org.allbinary.platform.opengles.PlatformTextureBaseFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonStrings", JV.null)],
    statics := #[("NULL_PLATFORM_TEXTURE_BASE_FACTORY", JV.null)],
    methods := #[
        ("load_6", #["GL10", "int", "int", "Image", "int", "boolean"], false, m_load_6), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformTextureBaseFactory


