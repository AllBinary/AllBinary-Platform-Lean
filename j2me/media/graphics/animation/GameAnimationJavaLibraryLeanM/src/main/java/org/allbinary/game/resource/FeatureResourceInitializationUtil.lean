-- Generated Code Do Not Modify
-- package org.allbinary.game.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FeatureResourceInitializationUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FeatureResourceInitializationUtil" "instance" (<- JR.new "FeatureResourceInitializationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FeatureResourceInitializationUtil" "instance")


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField l_commonStrings "START"), this, (<- JR.getField l_commonStrings "INIT")])
    let mut l_featuredResourceFactory : JV := (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_featuredResourceFactory "init_1" #[l_level])
    let _ := (<- JR.call (<- JR.callStatic "FeaturedResourceRelativeRelationshipFactory" "getInstance_0" #[]) "init_1" #[l_level])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FeatureResourceInitializationUtil",
    javaName := "org.allbinary.game.resource.FeatureResourceInitializationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_1", #["int"], false, m_init_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FeatureResourceInitializationUtil


