-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.resources
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OnDemandResources

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OnDemandResources" "NULL_ON_DEMAND_RESOURCES" (<- JR.new "OnDemandResources" #[])
    pure JV.null


def m_waitFor_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_initAt_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageCache : JV := (JR.arg jargs 0)
    let mut l_resourceAnimationInterfaceFactoryInterfaceFactory : JV := (JR.arg jargs 1)
    let mut l_portion : JV := (JR.asI (JR.arg jargs 2))
    let mut l_loadingString : JV := (JR.arg jargs 3)
    let mut l_index : JV := (JR.asI (JR.arg jargs 4))
    return (JR.asI (JV.int 0))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OnDemandResources",
    javaName := "org.allbinary.game.layer.resources.OnDemandResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[("NULL_ON_DEMAND_RESOURCES", JV.null)],
    methods := #[
        ("waitFor_0", #[], false, m_waitFor_0), 
        ("init_0", #[], false, m_init_0), 
        ("initAt_5", #["ImageCache", "BaseResourceAnimationInterfaceFactoryInterfaceFactory", "int", "String", "int"], false, m_initAt_5), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OnDemandResources


