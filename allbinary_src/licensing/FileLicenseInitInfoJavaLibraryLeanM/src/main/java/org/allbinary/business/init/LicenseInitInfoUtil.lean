-- Generated Code Do Not Modify
-- package org.allbinary.business.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LicenseInitInfoUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "stringUtil" (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    JR.setField this "INITFILENAME" (JV.str "licenseinitdata.dat")
    JR.setField this "ABOUT" (JV.str "about")
    JR.setField this "PRIVACY_POLICY" (JV.str "privacy_policy")
    JR.setField this "filePath" (<- JR.getField (<- JR.getField this "stringUtil") "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LicenseInitInfoUtil" "instance" (<- JR.new "LicenseInitInfoUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LicenseInitInfoUtil" "instance")


def m_setFilePath_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_filePath : JV := (JR.arg jargs 0)
    JR.setField this "filePath" l_filePath
    pure JV.null


def m_write_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initData : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.getField this "filePath") (<- JR.getField (<- JR.getField this "stringUtil") "EMPTY_STRING")) then
        JR.setField this "filePath" (<- JR.concat (<- JR.callStatic "URLGLOBALS" "getMainPath_0" #[]) (<- JR.getField (<- JR.callStatic "PATH_GLOBALS" "getInstance_0" #[]) "INIT_PATH"))
        pure ()
    try
        let mut l_tsUtil : JV := (<- JR.callStatic "TsUtil" "getInstance_0" #[])
        let mut l_dataOutputStream : JV := (<- JR.call (<- JR.callStatic "DataOutputStreamFactory" "getInstance_0" #[]) "getInstance_2" #[(<- JR.getField this "filePath"), (<- JR.getField this "INITFILENAME")])
        let mut l_licenseIdCrypted : JV := (<- JR.call l_tsUtil "getByteArray_1" #[(<- JR.call (<- JR.new "WeakCrypt" #[(JV.int 1)]) "encrypt_1" #[(<- JR.call l_initData "getLicenseId_0" #[])])])
        let _ := (<- JR.call l_dataOutputStream "writeUTF_1" #[(<- JR.callStatic "DatabaseEncoder" "encode_1" #[l_licenseIdCrypted])])
        let mut l_numberOfLicenseServers : JV := (JR.asI (<- JR.call l_initData "getNumberOfServers_0" #[]))
        let _ := (<- JR.call l_dataOutputStream "writeInt_1" #[l_numberOfLicenseServers])
        let mut l_licenseServerCrypted : JV := JV.null
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_numberOfLicenseServers)) then break
                l_licenseServerCrypted := (<- JR.call l_tsUtil "getByteArray_1" #[(<- JR.call (<- JR.new "WeakCrypt" #[(JV.int 3)]) "encrypt_1" #[(<- JR.call l_initData "getServer_1" #[l_index])])])
                let _ := (<- JR.call l_dataOutputStream "writeUTF_1" #[(<- JR.callStatic "DatabaseEncoder" "encode_1" #[l_licenseServerCrypted])])
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.concat (JV.str "Command Failed: ") (<- JR.getField this "INITFILENAME")), this, (JV.str "write"), l_e])
            let _ := (<- JR.call (<- JR.callStatic "FileStreamFactory" "getInstance_0" #[]) "delete_2" #[(<- JR.getField this "filePath"), (<- JR.getField this "INITFILENAME")])
            throw l_e
        else
            throw jex0
    pure JV.null


def m_read_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "readAgain_1" #[(JV.int 0)])


def m_readAgain_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initializeCounter : JV := (JR.asI (JR.arg jargs 0))
    let mut l_METHOD_NAME : JV := (JV.str "readAgain")
    if JR.truth (<- JR.eq (<- JR.getField this "filePath") (<- JR.getField (<- JR.getField this "stringUtil") "EMPTY_STRING")) then
        JR.setField this "filePath" (<- JR.concat (<- JR.callStatic "URLGLOBALS" "getMainPath_0" #[]) (<- JR.getField (<- JR.callStatic "PATH_GLOBALS" "getInstance_0" #[]) "INIT_PATH"))
        pure ()
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.concat (JV.str "LicenseInitInfo File: ") (<- JR.getField this "INITFILENAME")), this, l_METHOD_NAME])
        let mut l_fileStreamFactory : JV := (<- JR.callStatic "FileStreamFactory" "getInstance_0" #[])
        let mut l_iFile : JV := (<- JR.call l_fileStreamFactory "getFileInputStreamInstance_2" #[(<- JR.getField this "filePath"), (<- JR.getField this "INITFILENAME")])
        if JR.truth (<- JR.ne l_iFile JV.null) then
            let mut l_iData : JV := (<- JR.new "AbDataInputStream" #[l_iFile])
            let mut l_initInfo : JV := (<- JR.new "LicenseInitInfo" #[])
            let mut l_decodedByteArray : JV := (<- JR.callStatic "DatabaseEncoder" "decode_1" #[(<- JR.call l_iData "readUTF_0" #[])])
            let mut l_licenseIdDecoded : JV := (<- JR.new "String" #[l_decodedByteArray])
            let _ := (<- JR.call l_initInfo "setLicenseId_1" #[(<- JR.call (<- JR.new "WeakCrypt" #[(JV.int 1)]) "decrypt_1" #[l_licenseIdDecoded])])
            let mut l_numberOfLicenseServers : JV := (JR.asI (<- JR.call l_iData "readInt_0" #[]))
            let mut l_NEXT_FILE : JV := (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "NEXT")]) "append_1" #[(JV.str " License Server From File: ")]) "toString_0" #[])
            let mut l_licenseServerDecoded : JV := JV.null
            if true then
                let mut l_index : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index l_numberOfLicenseServers)) then break
                    l_decodedByteArray := (<- JR.callStatic "DatabaseEncoder" "decode_1" #[(<- JR.call l_iData "readUTF_0" #[])])
                    l_licenseServerDecoded := (<- JR.new "String" #[l_decodedByteArray])
                    let _ := (<- JR.call l_initInfo "setServer_2" #[(<- JR.call (<- JR.new "WeakCrypt" #[(JV.int 3)]) "decrypt_1" #[l_licenseServerDecoded]), l_index])
                    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.concat l_NEXT_FILE (<- JR.call l_initInfo "getServer_1" #[l_index])), this, l_METHOD_NAME])
                    l_index := (JR.inc l_index)
                    pure ()
                pure ()
            return l_initInfo
        else
            throw (<- JR.new "Exception" #[(<- JR.concat (JV.str "Could Not Load License InitInfo: ") (<- JR.getField this "INITFILENAME"))])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            try
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.concat (JV.str "Command Failed: ") (<- JR.getField this "INITFILENAME")), this, l_METHOD_NAME, l_e])
                pure ()
            catch jex2 =>
                if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
                    let mut l_e2 : JV := jex2
                    let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.concat (JV.str "LicenseInitInfo Read Retry: ") (<- JR.getField this "INITFILENAME")), this, (JV.str "readAgain()"), l_e2])
                    pure ()
                else
                    throw jex2
            throw (<- JR.new "Exception" #[(<- JR.concat (JV.str "LicenseInitInfo Read Error: ") (<- JR.getField this "INITFILENAME"))])
        else
            throw jex1
    pure JV.null


def m_getFilePath_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "filePath")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LicenseInitInfoUtil",
    javaName := "org.allbinary.business.init.LicenseInitInfoUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("stringUtil", JV.null), ("INITFILENAME", JV.null), ("ABOUT", JV.null), ("PRIVACY_POLICY", JV.null), ("filePath", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setFilePath_1", #["String"], false, m_setFilePath_1), 
        ("write_1", #["LicenseInitInfo"], false, m_write_1), 
        ("read_0", #[], false, m_read_0), 
        ("readAgain_1", #["int"], false, m_readAgain_1), 
        ("getFilePath_0", #[], false, m_getFilePath_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LicenseInitInfoUtil


