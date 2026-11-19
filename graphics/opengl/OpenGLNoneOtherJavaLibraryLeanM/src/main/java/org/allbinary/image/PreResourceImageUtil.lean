-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PreResourceImageUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PreResourceImageUtil" "instance" (<- JR.new "PreResourceImageUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PreResourceImageUtil" "instance")


def m_encapsulate_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    return l_image


def m_updateGL_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    pure JV.null


def m_update_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PreResourceImageUtil",
    javaName := "org.allbinary.image.PreResourceImageUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("encapsulate_1", #["Image"], false, m_encapsulate_1), 
        ("updateGL_2", #["GL", "Image"], false, m_updateGL_2), 
        ("update_2", #["Graphics", "Image"], false, m_update_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PreResourceImageUtil


