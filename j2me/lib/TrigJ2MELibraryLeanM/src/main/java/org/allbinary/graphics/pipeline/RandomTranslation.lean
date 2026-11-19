-- Generated Code Do Not Modify
-- package org.allbinary.graphics.pipeline
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RandomTranslation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vector : JV := (JR.arg jargs 0)
    let mut l_howMuch : JV := (JR.asI (JR.arg jargs 1))
    let mut l_myRandomFactory : JV := (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[])
    let mut l_x : JV := (JR.asI (JR.neg (<- JR.call l_myRandomFactory "getNextInt_1" #[l_howMuch])))
    let mut l_y : JV := (JR.asI (<- JR.call l_myRandomFactory "getNextInt_1" #[l_howMuch]))
    let mut l_graphicsPipe : JV := (<- JR.new "BasicGraphicsPipeline" #[l_vector])
    let _ := (<- JR.call l_graphicsPipe "createMatrix_0" #[])
    let _ := (<- JR.call l_graphicsPipe "translate_2" #[l_x, l_y])
    return (<- JR.call l_graphicsPipe "getMatrix_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RandomTranslation",
    javaName := "org.allbinary.graphics.pipeline.RandomTranslation",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_2", #["BasicArrayList", "int"], true, m_getInstance_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RandomTranslation


