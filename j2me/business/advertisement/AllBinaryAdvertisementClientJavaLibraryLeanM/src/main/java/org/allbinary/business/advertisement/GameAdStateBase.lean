-- Generated Code Do Not Modify
-- package org.allbinary.business.advertisement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameAdStateBase

def jfields (this : JV) : JM JV := do
    JR.setField this "advertisementsP" (<- JR.new "Advertisements" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_initViewArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_viewArray : JV := (JR.arg jargs 0)
    pure JV.null


def m_onStart_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "init_0" #[])
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_isShowingAtLocation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_location : JV := (JR.asI (JR.arg jargs 0))
    return (JV.bool false)


def m_isShowingAt_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_show_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_hide_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_processAdState_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameState : JV := (JR.arg jargs 0)
    let mut l_gameType : JV := (JR.arg jargs 1)
    pure JV.null


def m_processPageAdState_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_playingAdState_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_playingAdStateWH_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_notPlayingAdState_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setGameIsReady_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameIsReady : JV := (JR.arg jargs 0)
    pure JV.null


def m_isGameIsReady_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_getAdvertisements_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "advertisementsP")


def m_getAdConfiguration_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "adConfigurationP")


def m_isOkayToShowPageAd_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_setOkayToShowAds_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_okayToShowAds : JV := (JR.arg jargs 0)
    JR.setField this "okayToShowAdsP" l_okayToShowAds
    pure JV.null


def m_isOkayToShowAds_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "okayToShowAdsP")


def m_isEnabled_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_adConfiguration : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "adConfigurationP" l_adConfiguration
    pure this

initialize JR.registerClass {
    name := "GameAdStateBase",
    javaName := "org.allbinary.business.advertisement.GameAdStateBase",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("adConfigurationP", JV.null), ("advertisementsP", JV.null), ("okayToShowAdsP", (JV.bool false))],
    statics := #[],
    methods := #[
        ("initViewArray_1", #["AnyArr"], false, m_initViewArray_1), 
        ("onStart_1", #["Any"], false, m_onStart_1), 
        ("init_0", #[], false, m_init_0), 
        ("isShowingAtLocation_1", #["int"], false, m_isShowingAtLocation_1), 
        ("isShowingAt_0", #[], false, m_isShowingAt_0), 
        ("show_0", #[], false, m_show_0), 
        ("hide_0", #[], false, m_hide_0), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("processAdState_2", #["GameState", "GameType"], false, m_processAdState_2), 
        ("processPageAdState_0", #[], false, m_processPageAdState_0), 
        ("playingAdState_0", #[], false, m_playingAdState_0), 
        ("playingAdStateWH_2", #["int", "int"], false, m_playingAdStateWH_2), 
        ("notPlayingAdState_0", #[], false, m_notPlayingAdState_0), 
        ("setGameIsReady_1", #["boolean"], false, m_setGameIsReady_1), 
        ("isGameIsReady_0", #[], false, m_isGameIsReady_0), 
        ("getAdvertisements_0", #[], false, m_getAdvertisements_0), 
        ("getAdConfiguration_0", #[], false, m_getAdConfiguration_0), 
        ("isOkayToShowPageAd_0", #[], false, m_isOkayToShowPageAd_0), 
        ("setOkayToShowAds_1", #["boolean"], false, m_setOkayToShowAds_1), 
        ("isOkayToShowAds_0", #[], false, m_isOkayToShowAds_0), 
        ("isEnabled_0", #[], false, m_isEnabled_0), 
        ("jinit_1", #["AdConfiguration"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameAdStateBase


