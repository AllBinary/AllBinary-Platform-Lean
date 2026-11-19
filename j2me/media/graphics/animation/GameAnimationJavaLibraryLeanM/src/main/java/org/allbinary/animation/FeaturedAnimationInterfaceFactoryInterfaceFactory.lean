-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FeaturedAnimationInterfaceFactoryInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "INSTANCE" (<- JR.new "FeaturedAnimationInterfaceFactoryInterfaceFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "INSTANCE")


def m_getRectangle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    return (<- JR.call this "getRectangleXY_3" #[l_resource, (JV.int 0), (JV.int 0)])


def m_getRectangleXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    let mut l_list : JV := (<- JR.callInherited this "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getList_0" #[])
    let mut l_scale : JV := (JR.asI (<- JR.call (<- JR.call (<- JR.getField (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "SCALE") "getValue_0" #[]) "intValue_0" #[]))
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.callInherited this "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getList_0" #[]) "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_featureInterface : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            if JR.truth (<- JR.call l_featureInterface "isFeature_0" #[]) then
                let mut l_rectangle : JV := (<- JR.call l_featureInterface "getRectangle_1" #[l_resource])
                if JR.truth (<- JR.ne l_rectangle (<- JR.getStatic "RectangleFactory" "SINGLETON")) then
                    return (<- JR.new "Rectangle" #[(<- JR.call l_pointFactory "createXY_2" #[l_x, l_y]), ((<- JR.shr ((<- JR.mul (<- JR.call l_rectangle "getWidth_0" #[]) l_scale)) (JV.int 1))), ((<- JR.shr ((<- JR.mul (<- JR.call l_rectangle "getHeight_0" #[]) l_scale)) (JV.int 1)))])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "No rectangle available for current feature selection or Resource: ")]) "append_1" #[l_resource]) "toString_0" #[])])


def m_getProcedural_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    return (<- JR.call this "getBasicAnimationInterfaceFactoryInstance_1" #[l_resource])


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    return (<- JR.call this "getBasicAnimationInterfaceFactoryInstance_1" #[l_resource])


def m_getBasicAnimationInterfaceFactoryInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_list : JV := (<- JR.callInherited this "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getList_0" #[])
    let mut l_resourceTypeAvailableList : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.callInherited this "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getList_0" #[]) "size_0" #[]))
    let mut l_featureInterface : JV := JV.null
    let mut l_animationInterfaceFactoryInterface : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_featureInterface := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            if JR.truth (<- JR.call l_featureInterface "isFeature_0" #[]) then
                let _ := (<- JR.call l_resourceTypeAvailableList "add_1" #[l_featureInterface])
                l_animationInterfaceFactoryInterface := (<- JR.call l_featureInterface "getBasicAnimationInterfaceFactoryInstance_1" #[l_resource])
                if JR.truth (<- JR.ne l_animationInterfaceFactoryInterface (<- JR.getStatic "NullAnimationFactory" "NULL_NOT_FOR_USE_ANIMATION_FACTORY")) then
                    return l_animationInterfaceFactoryInterface
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    if JR.truth (<- JR.gt (<- JR.call l_resourceTypeAvailableList "size_0" #[]) (JV.int 0)) then
        let mut l_NO_ANIMATION_AVAILABLE_FROM : JV := (JV.str "No animation available from: ")
        let mut l_FOR_FACTORIES : JV := (JV.str " factories: ")
        let mut l_FOR_RESOURCE : JV := (JV.str " for Resource: ")
        let mut l_HAS_KEY : JV := (JV.str " has: ")
        let mut l_RESOURCES_LABEL : JV := (JV.str " resources ")
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[l_NO_ANIMATION_AVAILABLE_FROM])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call l_resourceTypeAvailableList "size_0" #[])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "FORWARD_SLASH")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_size])
        let _ := (<- JR.call l_stringBuffer "append_1" #[l_FOR_FACTORIES])
        let mut l_size2 : JV := (JR.asI (<- JR.call l_resourceTypeAvailableList "size_0" #[]))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size2)) then break
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.call l_resourceTypeAvailableList "get_1" #[l_index]) "toString_0" #[])])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COMMA_SEP")])
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        let _ := (<- JR.call l_stringBuffer "append_1" #[l_FOR_RESOURCE])
        let _ := (<- JR.call l_stringBuffer "append_1" #[l_resource])
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "NEW_LINE")])
                l_featureInterface := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
                if JR.truth (<- JR.call l_featureInterface "isFeature_0" #[]) then
                    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_featureInterface])])
                    let _ := (<- JR.call l_stringBuffer "append_1" #[l_HAS_KEY])
                    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call (<- JR.call l_featureInterface "getHashtable_0" #[]) "size_0" #[])])
                    let _ := (<- JR.call l_stringBuffer "append_1" #[l_RESOURCES_LABEL])
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        throw (<- JR.new "Exception" #[(<- JR.call l_stringBuffer "toString_0" #[])])
    else
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                l_featureInterface := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_featureInterface "toString_0" #[])])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        let mut l_result : JV := (<- JR.call l_stringBuffer "toString_0" #[])
        let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
        throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(JV.str "No feature resource type available for Resource: ")]) "append_1" #[l_resource]) "append_1" #[(JV.str " Resource Factories Available: ")]) "append_1" #[l_result]) "toString_0" #[])])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "FeaturedResourceFactory" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FeaturedAnimationInterfaceFactoryInterfaceFactory",
    javaName := "org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory",
    super := "FeaturedResourceFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("INSTANCE", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getRectangle_1", #["String"], false, m_getRectangle_1), 
        ("getRectangleXY_3", #["String", "int", "int"], false, m_getRectangleXY_3), 
        ("getProcedural_1", #["String"], false, m_getProcedural_1), 
        ("get_1", #["String"], false, m_get_1), 
        ("getBasicAnimationInterfaceFactoryInstance_1", #["String"], false, m_getBasicAnimationInterfaceFactoryInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FeaturedAnimationInterfaceFactoryInterfaceFactory


