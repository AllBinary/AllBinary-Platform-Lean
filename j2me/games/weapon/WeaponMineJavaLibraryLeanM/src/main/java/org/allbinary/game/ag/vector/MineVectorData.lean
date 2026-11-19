-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MineVectorData

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MineVectorData" "points" (<- JR.arrayOf "L" #[(<- JR.arrayOf "L" #[(<- JR.arrayOf "I" #[(JV.int 10), (JV.int 5)]), (<- JR.arrayOf "I" #[(JV.int 2), (JV.int 6)]), (<- JR.arrayOf "I" #[(JV.int 1000), (JV.int 1000)]), (<- JR.arrayOf "I" #[(JV.int 2), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 10), (JV.int 9)]), (<- JR.arrayOf "I" #[(JV.int 1000), (JV.int 1000)]), (<- JR.arrayOf "I" #[(JV.int 10), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 2), (JV.int 9)]), (<- JR.arrayOf "I" #[(JV.int 1000), (JV.int 1000)]), (<- JR.arrayOf "I" #[(JV.int 2), (JV.int 5)]), (<- JR.arrayOf "I" #[(JV.int 10), (JV.int 6)]), (<- JR.arrayOf "I" #[(JV.int 1000), (JV.int 1000)]), (<- JR.arrayOf "I" #[(JV.int 7), (JV.int 9)]), (<- JR.arrayOf "I" #[(JV.int 5), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 1000), (JV.int 1000)]), (<- JR.arrayOf "I" #[(JV.int 7), (JV.int 2)]), (<- JR.arrayOf "I" #[(JV.int 5), (JV.int 9)]), (<- JR.arrayOf "I" #[(JV.int 1000), (JV.int 1000)])])])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MineVectorData",
    javaName := "org.allbinary.game.ag.vector.MineVectorData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("points", JV.null)],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MineVectorData


