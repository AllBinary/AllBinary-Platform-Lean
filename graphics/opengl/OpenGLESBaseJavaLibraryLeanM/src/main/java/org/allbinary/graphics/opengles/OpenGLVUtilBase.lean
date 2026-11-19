-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLVUtilBase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_glTexEnvix_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_target : JV := (JR.asI (JR.arg jargs 1))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 2))
    let mut l_param : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_glTexParameterix_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_target : JV := (JR.asI (JR.arg jargs 1))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 2))
    let mut l_param : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_glGenerateMipmap_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_textureId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_target : JV := (JR.asI (JR.arg jargs 2))
    let mut l_generateMipMap : JV := (JR.arg jargs 3)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLVUtilBase",
    javaName := "org.allbinary.graphics.opengles.OpenGLVUtilBase",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("glTexEnvix_4", #["GL10", "int", "int", "int"], false, m_glTexEnvix_4), 
        ("glTexParameterix_4", #["GL10", "int", "int", "int"], false, m_glTexParameterix_4), 
        ("glGenerateMipmap_4", #["GL10", "int", "int", "boolean"], false, m_glGenerateMipmap_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLVUtilBase


