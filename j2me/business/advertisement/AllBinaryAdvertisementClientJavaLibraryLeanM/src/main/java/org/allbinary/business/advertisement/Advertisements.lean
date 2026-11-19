-- Generated Code Do Not Modify
-- package org.allbinary.business.advertisement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Advertisements

def jfields (this : JV) : JM JV := do
    JR.setField this "bannerList" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "pageList" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "myRandomFactory" (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_addPage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_advertisementProcessorInterface : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "pageList") "contains_1" #[l_advertisementProcessorInterface])) then
        let _ := (<- JR.call (<- JR.getField this "pageList") "add_1" #[l_advertisementProcessorInterface])
        pure ()
    pure JV.null


def m_startRandomPage_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "pageList") "size_0" #[]))
    if JR.truth (<- JR.gt l_size (JV.int 0)) then
        let mut l_random : JV := (JR.asI (<- JR.call (<- JR.getField this "myRandomFactory") "getAbsoluteNextInt_1" #[l_size]))
        let mut l_advertisementProcessorInterface : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "pageList") "objectArray") l_random)
        let _ := (<- JR.call l_advertisementProcessorInterface "start_0" #[])
        pure ()
    pure JV.null


def m_processRandomPage_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.callStatic "LockedUtil" "getInstance_0" #[]) "isLocked_0" #[]) then
        let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "pageList") "size_0" #[]))
        if JR.truth (<- JR.gt l_size (JV.int 0)) then
            let mut l_random : JV := (JR.asI (<- JR.call (<- JR.getField this "myRandomFactory") "getAbsoluteNextInt_1" #[l_size]))
            let mut l_advertisementProcessorInterface : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "pageList") "objectArray") l_random)
            let _ := (<- JR.call l_advertisementProcessorInterface "process_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_stopAllPage_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "pageList") "size_0" #[]))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            let mut l_advertisementProcessorInterface : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "pageList") "objectArray") l_index)
            let _ := (<- JR.call l_advertisementProcessorInterface "stop_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_addBanner_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_advertisementProcessorInterface : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "bannerList") "contains_1" #[l_advertisementProcessorInterface])) then
        let _ := (<- JR.call (<- JR.getField this "bannerList") "add_1" #[l_advertisementProcessorInterface])
        pure ()
    pure JV.null


def m_startAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "bannerList") "size_0" #[]))
        repeat
            let jtemp3 : JV := (JR.dec l_index)
            l_index := jtemp3
            
            if !(JR.truth (<- JR.ge jtemp3 (JV.int 0))) then break
            let mut l_advertisementProcessorInterface : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "bannerList") "objectArray") l_index)
            let _ := (<- JR.call l_advertisementProcessorInterface "start_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_stopAllBanner_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "bannerList") "size_0" #[]))
        repeat
            let jtemp4 : JV := (JR.dec l_index)
            l_index := jtemp4
            
            if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
            let mut l_advertisementProcessorInterface : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "bannerList") "objectArray") l_index)
            let _ := (<- JR.call l_advertisementProcessorInterface "stop_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_getBanner_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_advertisementProcessorInterface : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "bannerList") "objectArray") l_index)
    return l_advertisementProcessorInterface


def m_stopAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "stopAllBanner_0" #[])
    let _ := (<- JR.call this "stopAllPage_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Advertisements",
    javaName := "org.allbinary.business.advertisement.Advertisements",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("bannerList", JV.null), ("pageList", JV.null), ("myRandomFactory", JV.null)],
    statics := #[],
    methods := #[
        ("addPage_1", #["AdvertisementProcessorInterface"], false, m_addPage_1), 
        ("startRandomPage_0", #[], false, m_startRandomPage_0), 
        ("processRandomPage_0", #[], false, m_processRandomPage_0), 
        ("stopAllPage_0", #[], false, m_stopAllPage_0), 
        ("addBanner_1", #["AdvertisementProcessorInterface"], false, m_addBanner_1), 
        ("startAll_0", #[], false, m_startAll_0), 
        ("stopAllBanner_0", #[], false, m_stopAllBanner_0), 
        ("getBanner_1", #["int"], false, m_getBanner_1), 
        ("stopAll_0", #[], false, m_stopAll_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Advertisements


