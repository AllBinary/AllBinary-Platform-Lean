-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFactory_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" #[(JV.str "TouchButton Animations")])


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "initImageCache_2" #[(<- JR.callStatic "ImageCacheFactory" "getInstance_0" #[]), l_level])
    pure JV.null


def m_initImageCache_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageCache : JV := (JR.arg jargs 0)
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    if JR.truth (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "isInitialized_0" #[]) then
        return JV.null
    let mut l_portion : JV := (JR.asI (JV.int 140))
    let mut l_loadingString : JV := (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "toString_0" #[])]) "append_1" #[(JV.str " Loading: ")]) "toString_0" #[])
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let jtemp7 : JV := l_index
    l_index := (JR.inc jtemp7)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp7])
    let mut l_touchButtonBlankResource : JV := (<- JR.callStatic "TouchButtonBlankResource" "getInstance_0" #[])
    let mut l_touchButtonGenericActionResource : JV := (<- JR.callStatic "TouchButtonGenericActionResource" "getInstance_0" #[])
    let mut l_touchButtonStartResource : JV := (<- JR.callStatic "TouchButtonStartResource" "getInstance_0" #[])
    let mut l_touchButtonUpResource : JV := (<- JR.callStatic "TouchButtonUpResource" "getInstance_0" #[])
    let mut l_touchButtonDownResource : JV := (<- JR.callStatic "TouchButtonDownResource" "getInstance_0" #[])
    let mut l_touchButtonTurnLeftResource : JV := (<- JR.callStatic "TouchButtonTurnLeftResource" "getInstance_0" #[])
    let mut l_touchButtonTurnRightResource : JV := (<- JR.callStatic "TouchButtonTurnRightResource" "getInstance_0" #[])
    let mut l_touchButtonStrafeLeftResource : JV := (<- JR.callStatic "TouchButtonStrafeLeftResource" "getInstance_0" #[])
    let mut l_touchButtonStrafeRightResource : JV := (<- JR.callStatic "TouchButtonStrafeRightResource" "getInstance_0" #[])
    let mut l_touchButtonBlankResourceImage : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField l_touchButtonBlankResource "RESOURCE")])
    let mut l_touchButtonGenericActionResourceImage : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField l_touchButtonGenericActionResource "RESOURCE")])
    let mut l_touchButtonStartResourceImage : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField l_touchButtonStartResource "RESOURCE")])
    let mut l_touchButtonUpResourceImage : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField l_touchButtonUpResource "RESOURCE")])
    let mut l_touchButtonDownResourceImage : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField l_touchButtonDownResource "RESOURCE")])
    let mut l_touchButtonTurnLeftResourceImage : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField l_touchButtonTurnLeftResource "RESOURCE")])
    let mut l_touchButtonTurnRightResourceImage : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField l_touchButtonTurnRightResource "RESOURCE")])
    let mut l_touchButtonStrafeLeftResourceImage : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField l_touchButtonStrafeLeftResource "RESOURCE")])
    let mut l_touchButtonStrafeRightResourceImage : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField l_touchButtonStrafeRightResource "RESOURCE")])
    let mut l_nullAnimationFactory : JV := (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[])
    if JR.truth (<- JR.call (<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[]) "isOverScan_0" #[]) then
        let _ := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField (<- JR.callStatic "TouchButtonStartResource" "getInstance_0" #[]) "HINT")])
        pure ()
    let jtemp11 : JV := l_index
    l_index := (JR.inc jtemp11)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp11])
    let mut l_imageCompleteUtil : JV := (<- JR.callStatic "ImageCompleteUtil" "getInstance_0" #[])
    let jtemp12 : JV := l_index
    l_index := (JR.inc jtemp12)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp12])
    let _ := (<- JR.call l_imageCompleteUtil "waitForImage_2" #[l_touchButtonBlankResourceImage, (<- JR.getField l_touchButtonBlankResource "RESOURCE")])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonBlankResource "RESOURCE"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonBlankResourceImage, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonBlankResource "HINT"), l_nullAnimationFactory])
    let jtemp13 : JV := l_index
    l_index := (JR.inc jtemp13)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp13])
    let _ := (<- JR.call l_imageCompleteUtil "waitForImage_2" #[l_touchButtonGenericActionResourceImage, (<- JR.getField l_touchButtonGenericActionResource "RESOURCE")])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonGenericActionResource "RESOURCE"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonGenericActionResourceImage, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonGenericActionResource "HINT"), l_nullAnimationFactory])
    let jtemp14 : JV := l_index
    l_index := (JR.inc jtemp14)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp14])
    let _ := (<- JR.call l_imageCompleteUtil "waitForImage_2" #[l_touchButtonStartResourceImage, (<- JR.getField l_touchButtonStartResource "RESOURCE")])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonStartResource "RESOURCE"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonStartResourceImage, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
    let jtemp15 : JV := l_index
    l_index := (JR.inc jtemp15)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp15])
    let _ := (<- JR.call l_imageCompleteUtil "waitForImage_2" #[l_touchButtonUpResourceImage, (<- JR.getField l_touchButtonUpResource "RESOURCE")])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonUpResource "RESOURCE"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonUpResourceImage, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonUpResource "HINT"), l_nullAnimationFactory])
    let jtemp16 : JV := l_index
    l_index := (JR.inc jtemp16)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp16])
    let _ := (<- JR.call l_imageCompleteUtil "waitForImage_2" #[l_touchButtonDownResourceImage, (<- JR.getField l_touchButtonDownResource "RESOURCE")])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonDownResource "RESOURCE"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonDownResourceImage, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonDownResource "HINT"), l_nullAnimationFactory])
    let jtemp17 : JV := l_index
    l_index := (JR.inc jtemp17)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp17])
    let _ := (<- JR.call l_imageCompleteUtil "waitForImage_2" #[l_touchButtonTurnLeftResourceImage, (<- JR.getField l_touchButtonTurnLeftResource "RESOURCE")])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonTurnLeftResource "RESOURCE"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonTurnLeftResourceImage, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonTurnLeftResource "HINT"), l_nullAnimationFactory])
    let jtemp18 : JV := l_index
    l_index := (JR.inc jtemp18)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp18])
    let _ := (<- JR.call l_imageCompleteUtil "waitForImage_2" #[l_touchButtonTurnRightResourceImage, (<- JR.getField l_touchButtonTurnRightResource "RESOURCE")])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonTurnRightResource "RESOURCE"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonTurnRightResourceImage, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonTurnRightResource "HINT"), l_nullAnimationFactory])
    let jtemp19 : JV := l_index
    l_index := (JR.inc jtemp19)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp19])
    let _ := (<- JR.call l_imageCompleteUtil "waitForImage_2" #[l_touchButtonStrafeLeftResourceImage, (<- JR.getField l_touchButtonStrafeLeftResource "RESOURCE")])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonStrafeLeftResource "RESOURCE"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonStrafeLeftResourceImage, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonStrafeLeftResource "HINT"), l_nullAnimationFactory])
    let jtemp20 : JV := l_index
    l_index := (JR.inc jtemp20)
    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[l_portion, l_loadingString, jtemp20])
    let _ := (<- JR.call l_imageCompleteUtil "waitForImage_2" #[l_touchButtonStrafeRightResourceImage, (<- JR.getField l_touchButtonStrafeRightResource "RESOURCE")])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonStrafeRightResource "RESOURCE"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonStrafeRightResourceImage, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
    let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonStrafeRightResource "HINT"), l_nullAnimationFactory])
    if JR.truth (<- JR.call (<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[]) "isOverScan_0" #[]) then
        let mut l_touchButtonStartHintResource : JV := (<- JR.call l_imageCache "getWithKey_1" #[(<- JR.getField (<- JR.callStatic "TouchButtonStartResource" "getInstance_0" #[]) "HINT")])
        let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonStartResource "HINT"), (<- JR.callStatic "OneRowSpriteIndexedAnimationFactory" "createFactory_2" #[l_touchButtonStartHintResource, (<- JR.callStatic "AnimationBehaviorFactory" "getInstance_0" #[])])])
        pure ()
    else
        let _ := (<- JR.callInherited this "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" "add_2" #[(<- JR.getField l_touchButtonStartResource "HINT"), l_nullAnimationFactory])
        pure ()
    let _ := (<- JR.callSuper "BaseResourceAnimationInterfaceFactoryInterfaceFactory" this "init_1" #[l_level])
    pure JV.null


def m_isLoadingLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_TOUCH") "getLevel_0" #[])) then
        return (JV.bool true)
    else
        return (<- JR.callSuper "BaseResourceAnimationInterfaceFactoryInterfaceFactory" this "isLoadingLevel_1" #[l_level])
    pure JV.null


def m_isFeature_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (JR.not (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL")])) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "BaseResourceAnimationInterfaceFactoryInterfaceFactory" this #[l_name, (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[]), (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[]), (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory",
    javaName := "org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory",
    super := "BaseResourceAnimationInterfaceFactoryInterfaceFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createFactory_0", #[], true, m_createFactory_0), 
        ("init_1", #["int"], false, m_init_1), 
        ("initImageCache_2", #["ImageCache", "int"], false, m_initImageCache_2), 
        ("isLoadingLevel_1", #["int"], false, m_isLoadingLevel_1), 
        ("isFeature_0", #[], false, m_isFeature_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory


