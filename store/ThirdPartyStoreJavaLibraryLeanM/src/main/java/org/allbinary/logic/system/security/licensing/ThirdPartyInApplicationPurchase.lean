-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ThirdPartyInApplicationPurchase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isPurchased_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lockableFeature : JV := (JR.arg jargs 0)
    return (JV.bool false)


def m_onCreate_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_stateObject : JV := (JR.arg jargs 1)
    pure JV.null


def m_onDestroy_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onStart_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onActivityResult_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_requestCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_resultCode : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dataObject : JV := (JR.arg jargs 2)
    pure JV.null


def m_onSaveInstanceState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    pure JV.null


def m_onStop_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_requestPurchase_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lockableFeature : JV := (JR.arg jargs 0)
    pure JV.null


def m_requestReceipts_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lockableFeature : JV := (JR.arg jargs 0)
    pure JV.null


def m_getUserName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_isEnabled_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_requestProducts_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ThirdPartyInApplicationPurchase",
    javaName := "org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase",
    super := "Object",
    interfaces := #["ThirdPartyInApplicationPurchaseInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isPurchased_1", #["LockableFeature"], false, m_isPurchased_1), 
        ("onCreate_2", #["Any", "Any"], false, m_onCreate_2), 
        ("onDestroy_0", #[], false, m_onDestroy_0), 
        ("onStart_0", #[], false, m_onStart_0), 
        ("onActivityResult_3", #["int", "int", "Any"], false, m_onActivityResult_3), 
        ("onSaveInstanceState_1", #["Any"], false, m_onSaveInstanceState_1), 
        ("onStop_0", #[], false, m_onStop_0), 
        ("requestPurchase_1", #["LockableFeature"], false, m_requestPurchase_1), 
        ("requestReceipts_0", #[], false, m_requestReceipts_0), 
        ("add_1", #["LockableFeature"], false, m_add_1), 
        ("getUserName_0", #[], false, m_getUserName_0), 
        ("isEnabled_0", #[], false, m_isEnabled_0), 
        ("requestProducts_0", #[], false, m_requestProducts_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ThirdPartyInApplicationPurchase


