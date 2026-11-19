-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABCustomImageItem

def jfields (this : JV) : JM JV := do
    JR.setField this "yOffset" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getImage_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullImage" "NULL_IMAGE")


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    let mut l_layout : JV := (JR.asI (JR.arg jargs 2))
    let mut l_altText : JV := (JR.arg jargs 3)
    let mut l_basicColor : JV := (JR.arg jargs 4)
    let mut l_yOffset : JV := (JR.asI (JR.arg jargs 5))
    let _ <- JR.superInit "ABCustomItem" this #[l_label, l_basicColor, l_basicColor]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ABCustomImageItem",
    javaName := "org.allbinary.graphics.form.item.ABCustomImageItem",
    super := "ABCustomItem",
    interfaces := #[],
    isInterface := false,
    fields := #[("yOffset", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getImage_0", #[], false, m_getImage_0), 
        ("jinit_6", #["String", "Image", "int", "String", "BasicColor", "int"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABCustomImageItem


