-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_KeyFactoryInitializer

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "KeyFactoryInitializer" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "KeyFactoryInitializer" "commonStrings") "INIT")])
    let _ := (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "initWithRange_2" #[(JV.int (JR.wrapI 0x2D0)), (JV.int 6)])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Init" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "KeyFactoryInitializer",
    javaName := "org.allbinary.game.input.KeyFactoryInitializer",
    super := "Init",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_KeyFactoryInitializer


