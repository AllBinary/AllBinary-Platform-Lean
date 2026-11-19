-- Generated Code Do Not Modify
-- package org.allbinary.business.advertisement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AdvertisementProcessorInterface

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_start_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_stop_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AdvertisementProcessorInterface",
    javaName := "org.allbinary.business.advertisement.AdvertisementProcessorInterface",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("start_0", #[], false, m_start_0), 
        ("stop_0", #[], false, m_stop_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AdvertisementProcessorInterface


