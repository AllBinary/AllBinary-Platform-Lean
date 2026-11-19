-- Generated Code Do Not Modify
-- package org.allbinary.business.advertisement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AdConfiguration

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getValidAdSpots_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.newArray "L" 1 #[(JV.int 0)])


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameState : JV := (JR.arg jargs 0)
    pure JV.null


def m_processDemo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_state : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_setShowAds_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setToggleAds_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_showAds : JV := (JR.arg jargs 0)
    pure JV.null


def m_isShowAds_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_advertIdArray : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "INNERACTIVE" (<- JR.aget l_advertIdArray (JV.int 0))
    JR.setField this "ADMOB" (<- JR.aget l_advertIdArray (JV.int 1))
    JR.setField this "LEADBOLT" (<- JR.aget l_advertIdArray (JV.int 2))
    pure this

initialize JR.registerClass {
    name := "AdConfiguration",
    javaName := "org.allbinary.business.advertisement.AdConfiguration",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("INNERACTIVE", JV.null), ("LEADBOLT", JV.null), ("ADMOB", JV.null)],
    statics := #[],
    methods := #[
        ("getValidAdSpots_0", #[], false, m_getValidAdSpots_0), 
        ("process_1", #["GameState"], false, m_process_1), 
        ("processDemo_1", #["int"], false, m_processDemo_1), 
        ("setShowAds_0", #[], false, m_setShowAds_0), 
        ("setToggleAds_1", #["boolean"], false, m_setToggleAds_1), 
        ("isShowAds_0", #[], false, m_isShowAds_0), 
        ("jinit_1", #["AnyArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AdConfiguration


