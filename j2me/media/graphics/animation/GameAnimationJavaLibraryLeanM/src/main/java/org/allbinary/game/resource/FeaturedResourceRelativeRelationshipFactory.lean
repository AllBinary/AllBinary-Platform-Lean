-- Generated Code Do Not Modify
-- package org.allbinary.game.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FeaturedResourceRelativeRelationshipFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "basicArrayListUtil" (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FeaturedResourceRelativeRelationshipFactory" "INSTANCE" (<- JR.new "FeaturedResourceRelativeRelationshipFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FeaturedResourceRelativeRelationshipFactory" "INSTANCE")


def m_getRelativeRelationshipList_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_layer : JV := (JR.arg jargs 1)
    let mut l_featureReleaseList : JV := (<- JR.callInherited this "FeaturedResourceRelativeRelationshipFactory" "getList_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.callInherited this "FeaturedResourceRelativeRelationshipFactory" "getList_0" #[]) "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_featureInterface : JV := (<- JR.aget (<- JR.getField l_featureReleaseList "objectArray") l_index)
            if JR.truth (<- JR.call l_featureInterface "isFeature_0" #[]) then
                let mut l_list : JV := (<- JR.call l_featureInterface "getResourceRelativeRelationshipList_1" #[l_resource])
                if JR.truth (<- JR.ne l_list (<- JR.call (<- JR.getField this "basicArrayListUtil") "getImmutableInstance_0" #[])) then
                    return (<- JR.call this "duplicate_2" #[l_list, l_layer])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Not available for current feature selection or Resource: ")]) "append_1" #[l_resource]) "toString_0" #[])])


def m_duplicate_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_layer : JV := (JR.arg jargs 1)
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    let mut l_newList : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_relativeRelationship : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call l_newList "add_1" #[(<- JR.new "RelativeLayerRelationship" #[l_layer, (<- JR.call l_pointFactory "createXY_2" #[(<- JR.call l_relativeRelationship "getX_0" #[]), (<- JR.call l_relativeRelationship "getY_0" #[])]), (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])])])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_newList


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "FeaturedResourceFactory" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FeaturedResourceRelativeRelationshipFactory",
    javaName := "org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory",
    super := "FeaturedResourceFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("basicArrayListUtil", JV.null)],
    statics := #[("INSTANCE", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getRelativeRelationshipList_2", #["String", "AllBinaryLayer"], false, m_getRelativeRelationshipList_2), 
        ("duplicate_2", #["BasicArrayList", "AllBinaryLayer"], false, m_duplicate_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FeaturedResourceRelativeRelationshipFactory


