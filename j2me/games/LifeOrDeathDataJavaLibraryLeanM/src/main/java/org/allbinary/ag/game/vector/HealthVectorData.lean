-- Generated Code Do Not Modify
-- package org.allbinary.ag.game.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HealthVectorData

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HealthVectorData" "points" (<- JR.arrayOf "L" #[(<- JR.arrayOf "L" #[(<- JR.arrayOf "I" #[(JV.int 2), (JV.int 1)]), (<- JR.arrayOf "I" #[(JV.int 3), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 3), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 4), (JV.int 1)]), (<- JR.arrayOf "I" #[(JV.int 4), (JV.int 1)]), (<- JR.arrayOf "I" #[(JV.int 5), (JV.int 1)]), (<- JR.arrayOf "I" #[(JV.int 5), (JV.int 1)]), (<- JR.arrayOf "I" #[(JV.int 6), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 6), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 6), (JV.int 3)]), (<- JR.arrayOf "I" #[(JV.int 6), (JV.int 3)]), (<- JR.arrayOf "I" #[(JV.int 3), (JV.int 6)]), (<- JR.arrayOf "I" #[(JV.int 3), (JV.int 6)]), (<- JR.arrayOf "I" #[(JV.int 0), (JV.int 3)]), (<- JR.arrayOf "I" #[(JV.int 0), (JV.int 3)]), (<- JR.arrayOf "I" #[(JV.int 0), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 0), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 1), (JV.int 1)]), (<- JR.arrayOf "I" #[(JV.int 1), (JV.int 1)]), (<- JR.arrayOf "I" #[(JV.int 2), (JV.int 1)]), (<- JR.arrayOf "I" #[(JV.int 1000), (JV.int 1000)])])])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HealthVectorData",
    javaName := "org.allbinary.ag.game.vector.HealthVectorData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("points", JV.null)],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HealthVectorData


