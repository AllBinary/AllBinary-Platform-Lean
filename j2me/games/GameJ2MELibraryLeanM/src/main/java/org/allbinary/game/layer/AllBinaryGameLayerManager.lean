-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryGameLayerManager

def jfields (this : JV) : JM JV := do
    JR.setField this "playerGameInputCompositeInterface" (<- JR.getStatic "NullPlayerGameInputComposite" "NULL_PLAYER_GAME_INPUT_COMPOSITE")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryGameLayerManager" "NULL_ALLBINARY_LAYER_MANAGER" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    JR.setStatic "AllBinaryGameLayerManager" "ID" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 22)])
    pure JV.null


def m_getNullInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "AllBinaryGameLayerManager" "NULL_ALLBINARY_LAYER_MANAGER") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "AllBinaryGameLayerManager" "NULL_ALLBINARY_LAYER_MANAGER" (<- JR.new "AllBinaryGameLayerManager" #[(<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE"), (<- JR.getStatic "GameInfo" "NONE")])
        pure ()
    return (<- JR.getStatic "AllBinaryGameLayerManager" "NULL_ALLBINARY_LAYER_MANAGER")


def m_getLayerManager_0 (this : JV) (jargs : Array JV) : JM JV := do
    return this


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getBackgroundBasicColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "backgroundBasicColor")


def m_setBackgroundBasicColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 0)
    JR.setField this "backgroundBasicColor" l_backgroundBasicColor
    JR.setField (<- JR.callStatic "ItemColorFactory" "getInstance_0" #[]) "INVERT_PAINT" (JR.asI (<- JR.call (<- JR.getField this "backgroundBasicColor") "intValue_0" #[]))
    pure JV.null


def m_getForegroundBasicColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "foregroundBasicColor")


def m_setForegroundBasicColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 0)
    JR.setField this "foregroundBasicColor" l_foregroundBasicColor
    JR.setField (<- JR.callStatic "ItemColorFactory" "getInstance_0" #[]) "PAINT" (JR.asI (<- JR.call (<- JR.getField this "foregroundBasicColor") "intValue_0" #[]))
    pure JV.null


def m_getGameInfo_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameInfo")


def m_setGameInfo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInfo : JV := (JR.arg jargs 0)
    JR.setField this "gameInfo" l_gameInfo
    pure JV.null


def m_setLayerProcessorList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_layerProcessorInterfaceArray : JV := (<- JR.newArray "L" 1 #[(<- JR.call l_list "size_0" #[])])
    let mut l_size : JV := (JR.asI (<- JR.alen l_layerProcessorInterfaceArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset l_layerProcessorInterfaceArray l_index (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.callInherited this "AllBinaryGameLayerManager" "setLayerProcessorArray_1" #[l_layerProcessorInterfaceArray])
    pure JV.null


def m_setPlayerGameInputCompositeInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerGameInputCompositeInterface : JV := (JR.arg jargs 0)
    JR.setField this "playerGameInputCompositeInterface" l_playerGameInputCompositeInterface
    pure JV.null


def m_getPlayerGameInputCompositeInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "playerGameInputCompositeInterface")


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 0)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 1)
    let mut l_gameInfo : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "AllBinaryLayerManager" this #[]
    let _ <- jfields this
    JR.setField this "backgroundBasicColor" l_backgroundBasicColor
    JR.setField this "foregroundBasicColor" l_foregroundBasicColor
    let mut l_itemColorFactory : JV := (<- JR.callStatic "ItemColorFactory" "getInstance_0" #[])
    JR.setField l_itemColorFactory "INVERT_PAINT" (JR.asI (<- JR.call (<- JR.getField this "backgroundBasicColor") "intValue_0" #[]))
    JR.setField l_itemColorFactory "PAINT" (JR.asI (<- JR.call (<- JR.getField this "foregroundBasicColor") "intValue_0" #[]))
    JR.setField this "gameInfo" l_gameInfo
    pure this

initialize JR.registerClass {
    name := "AllBinaryGameLayerManager",
    javaName := "org.allbinary.game.layer.AllBinaryGameLayerManager",
    super := "AllBinaryLayerManager",
    interfaces := #[],
    isInterface := false,
    fields := #[("backgroundBasicColor", JV.null), ("foregroundBasicColor", JV.null), ("gameInfo", JV.null), ("playerGameInputCompositeInterface", JV.null)],
    statics := #[("NULL_ALLBINARY_LAYER_MANAGER", JV.null), ("ID", JV.null)],
    methods := #[
        ("getNullInstance_0", #[], true, m_getNullInstance_0), 
        ("getLayerManager_0", #[], false, m_getLayerManager_0), 
        ("init_0", #[], false, m_init_0), 
        ("getBackgroundBasicColor_0", #[], false, m_getBackgroundBasicColor_0), 
        ("setBackgroundBasicColor_1", #["BasicColor"], false, m_setBackgroundBasicColor_1), 
        ("getForegroundBasicColor_0", #[], false, m_getForegroundBasicColor_0), 
        ("setForegroundBasicColor_1", #["BasicColor"], false, m_setForegroundBasicColor_1), 
        ("getGameInfo_0", #[], false, m_getGameInfo_0), 
        ("setGameInfo_1", #["GameInfo"], false, m_setGameInfo_1), 
        ("setLayerProcessorList_1", #["BasicArrayList"], false, m_setLayerProcessorList_1), 
        ("setPlayerGameInputCompositeInterface_1", #["PlayerGameInputCompositeInterface"], false, m_setPlayerGameInputCompositeInterface_1), 
        ("getPlayerGameInputCompositeInterface_0", #[], false, m_getPlayerGameInputCompositeInterface_0), 
        ("jinit_3", #["BasicColor", "BasicColor", "GameInfo"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryGameLayerManager


