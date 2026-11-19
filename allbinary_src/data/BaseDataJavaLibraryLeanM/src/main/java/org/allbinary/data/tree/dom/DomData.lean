-- Generated Code Do Not Modify
-- package org.allbinary.data.tree.dom
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DomData

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DomData",
    javaName := "org.allbinary.data.tree.dom.DomData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("ID", (JV.str "id")), ("CHILD", (JV.str "child")), ("NAME", (JV.str "name")), ("VALUE", (JV.str "value")), ("INDEX", (JV.str "index"))],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DomData


