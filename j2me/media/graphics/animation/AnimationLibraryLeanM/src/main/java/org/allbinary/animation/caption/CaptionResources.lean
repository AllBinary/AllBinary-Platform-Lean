-- Generated Code Do Not Modify
-- package org.allbinary.animation.caption
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CaptionResources

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CaptionResources",
    javaName := "org.allbinary.animation.caption.CaptionResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("RESOURCE", (JV.str "/character_message_bubbled_box.png"))],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CaptionResources


