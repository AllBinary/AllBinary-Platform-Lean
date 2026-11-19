-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.resources
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OnDemandLoader

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageCache : JV := (JR.arg jargs 0)
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    let mut l_loadingString : JV := (JR.arg jargs 2)
    let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "LOAD_ALL")]) then
        if JR.truth (<- JR.call (<- JR.getField this "resourceAnimationInterfaceFactoryInterfaceFactory") "isInitialized_0" #[]) then
            return JV.null
        let _ := (<- JR.call this "initAll_2" #[l_imageCache, l_loadingString])
        pure ()
    else
        if JR.truth (<- JR.ne l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_ALL") "getLevel_0" #[])) then
            let mut l_layerPlacementInterfaceBasicArrayListFactoryInterface : JV := (<- JR.call (<- JR.getField this "gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory") "getInstance_1" #[l_level])
            let _ := (<- JR.call this "initLevel_4" #[l_layerPlacementInterfaceBasicArrayListFactoryInterface, l_imageCache, l_level, l_loadingString])
            pure ()
    pure JV.null


def m_initAll_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageCache : JV := (JR.arg jargs 0)
    let mut l_loadingString : JV := (JR.arg jargs 1)
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_portion : JV := (JR.asI (JV.int 120))
    let mut l_onDemandResources : JV := JV.null
    if true then
        let mut l_onDemandIndex : JV := (JR.asI (<- JR.call (<- JR.getField this "onDemandResourcesFactory") "size_0" #[]))
        repeat
            let jtemp3 : JV := (JR.dec l_onDemandIndex)
            l_onDemandIndex := jtemp3
            
            if !(JR.truth (<- JR.ge jtemp3 (JV.int 0))) then break
            l_onDemandResources := (<- JR.call (<- JR.getField this "onDemandResourcesFactory") "remove_1" #[l_onDemandIndex])
            if JR.truth (<- JR.ne l_onDemandResources (<- JR.getStatic "OnDemandResources" "NULL_ON_DEMAND_RESOURCES")) then
                l_index := (JR.asI (<- JR.call l_onDemandResources "initAt_5" #[l_imageCache, (<- JR.getField this "resourceAnimationInterfaceFactoryInterfaceFactory"), l_portion, l_loadingString, l_index]))
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_initLevel_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerPlacementInterfaceBasicArrayListFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_imageCache : JV := (JR.arg jargs 1)
    let mut l_level : JV := (JR.asI (JR.arg jargs 2))
    let mut l_loadingString : JV := (JR.arg jargs 3)
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let mut l_portion : JV := (JR.asI (JV.int 120))
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_onDemandArray : JV := (<- JR.call l_layerPlacementInterfaceBasicArrayListFactoryInterface "getOnDemandResources_0" #[])
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField l_commonStrings "START")]) "appendint_1" #[(<- JR.alen l_onDemandArray)]) "toString_0" #[]), this, (JV.str "initLevel")])
    let mut l_onDemandResources : JV := JV.null
    if true then
        let mut l_onDemandIndex : JV := (JR.asI (<- JR.alen l_onDemandArray))
        repeat
            let jtemp7 : JV := (JR.dec l_onDemandIndex)
            l_onDemandIndex := jtemp7
            
            if !(JR.truth (<- JR.ge jtemp7 (JV.int 0))) then break
            l_onDemandResources := (<- JR.call (<- JR.getField this "onDemandResourcesFactory") "remove_1" #[(<- JR.aget l_onDemandArray l_onDemandIndex)])
            if JR.truth (<- JR.ne l_onDemandResources (<- JR.getStatic "OnDemandResources" "NULL_ON_DEMAND_RESOURCES")) then
                l_index := (JR.asI (<- JR.call l_onDemandResources "initAt_5" #[l_imageCache, (<- JR.getField this "resourceAnimationInterfaceFactoryInterfaceFactory"), l_portion, l_loadingString, l_index]))
                pure ()
            pure ()
        pure ()
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_onDemandResourcesFactory : JV := (JR.arg jargs 0)
    let mut l_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory : JV := (JR.arg jargs 1)
    let mut l_resourceAnimationInterfaceFactoryInterfaceFactory : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "onDemandResourcesFactory" l_onDemandResourcesFactory
    JR.setField this "gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory" l_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
    JR.setField this "resourceAnimationInterfaceFactoryInterfaceFactory" l_resourceAnimationInterfaceFactoryInterfaceFactory
    pure this

initialize JR.registerClass {
    name := "OnDemandLoader",
    javaName := "org.allbinary.game.layer.resources.OnDemandLoader",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("onDemandResourcesFactory", JV.null), ("gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory", JV.null), ("resourceAnimationInterfaceFactoryInterfaceFactory", JV.null)],
    statics := #[],
    methods := #[
        ("init_3", #["ImageCache", "int", "String"], false, m_init_3), 
        ("initAll_2", #["ImageCache", "String"], false, m_initAll_2), 
        ("initLevel_4", #["LayerPlacementInterfaceBasicArrayListFactoryInterface", "ImageCache", "int", "String"], false, m_initLevel_4), 
        ("jinit_3", #["OnDemandResourcesFactory", "GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory", "BaseResourceAnimationInterfaceFactoryInterfaceFactory"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OnDemandLoader


