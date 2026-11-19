-- Generated Code Do Not Modify
-- package org.allbinary.device
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullGL10

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullGL10" "NULL_GL10" (<- JR.new "NullGL10" #[])
    pure JV.null


def m_glActiveTexture_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_texture : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glAlphaFunc_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_func : JV := (JR.asI (JR.arg jargs 0))
    let mut l_ref : JV := (JR.asF (JR.arg jargs 1))
    return JV.null


def m_glBindTexture_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_texture : JV := (JR.asI (JR.arg jargs 1))
    return JV.null


def m_glBlendFunc_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sfactor : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dfactor : JV := (JR.asI (JR.arg jargs 1))
    return JV.null


def m_glClear_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mask : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glClearColor_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_red : JV := (JR.asF (JR.arg jargs 0))
    let mut l_green : JV := (JR.asF (JR.arg jargs 1))
    let mut l_blue : JV := (JR.asF (JR.arg jargs 2))
    let mut l_alpha : JV := (JR.asF (JR.arg jargs 3))
    return JV.null


def m_glClearDepthf_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_depth : JV := (JR.asF (JR.arg jargs 0))
    return JV.null


def m_glClearStencil_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_s : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glClientActiveTexture_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_texture : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glColor4f_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_red : JV := (JR.asF (JR.arg jargs 0))
    let mut l_green : JV := (JR.asF (JR.arg jargs 1))
    let mut l_blue : JV := (JR.asF (JR.arg jargs 2))
    let mut l_alpha : JV := (JR.asF (JR.arg jargs 3))
    return JV.null


def m_glColorMask_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_red : JV := (JR.arg jargs 0)
    let mut l_green : JV := (JR.arg jargs 1)
    let mut l_blue : JV := (JR.arg jargs 2)
    let mut l_alpha : JV := (JR.arg jargs 3)
    return JV.null


def m_glColorPointer_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    let mut l_type : JV := (JR.asI (JR.arg jargs 1))
    let mut l_stride : JV := (JR.asI (JR.arg jargs 2))
    let mut l_pointer : JV := (JR.arg jargs 3)
    return JV.null


def m_glCompressedTexImage2D_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    let mut l_internalformat : JV := (JR.asI (JR.arg jargs 2))
    let mut l_width : JV := (JR.asI (JR.arg jargs 3))
    let mut l_height : JV := (JR.asI (JR.arg jargs 4))
    let mut l_border : JV := (JR.asI (JR.arg jargs 5))
    let mut l_imageSize : JV := (JR.asI (JR.arg jargs 6))
    let mut l_data : JV := (JR.arg jargs 7)
    return JV.null


def m_glCompressedTexSubImage2D_9 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    let mut l_xoffset : JV := (JR.asI (JR.arg jargs 2))
    let mut l_yoffset : JV := (JR.asI (JR.arg jargs 3))
    let mut l_width : JV := (JR.asI (JR.arg jargs 4))
    let mut l_height : JV := (JR.asI (JR.arg jargs 5))
    let mut l_format : JV := (JR.asI (JR.arg jargs 6))
    let mut l_imageSize : JV := (JR.asI (JR.arg jargs 7))
    let mut l_data : JV := (JR.arg jargs 8)
    return JV.null


def m_glCopyTexImage2D_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    let mut l_internalformat : JV := (JR.asI (JR.arg jargs 2))
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_width : JV := (JR.asI (JR.arg jargs 5))
    let mut l_height : JV := (JR.asI (JR.arg jargs 6))
    let mut l_border : JV := (JR.asI (JR.arg jargs 7))
    return JV.null


def m_glCopyTexSubImage2D_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    let mut l_xoffset : JV := (JR.asI (JR.arg jargs 2))
    let mut l_yoffset : JV := (JR.asI (JR.arg jargs 3))
    let mut l_x : JV := (JR.asI (JR.arg jargs 4))
    let mut l_y : JV := (JR.asI (JR.arg jargs 5))
    let mut l_width : JV := (JR.asI (JR.arg jargs 6))
    let mut l_height : JV := (JR.asI (JR.arg jargs 7))
    return JV.null


def m_glCullFace_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mode : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glDeleteTextures_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_n : JV := (JR.asI (JR.arg jargs 0))
    let mut l_textures : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glDeleteTextures_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_n : JV := (JR.asI (JR.arg jargs 0))
    let mut l_textures : JV := (JR.arg jargs 1)
    return JV.null


def m_glDepthFunc_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_func : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glDepthMask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_flag : JV := (JR.arg jargs 0)
    return JV.null


def m_glDepthRangef_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_zNear : JV := (JR.asF (JR.arg jargs 0))
    let mut l_zFar : JV := (JR.asF (JR.arg jargs 1))
    return JV.null


def m_glDisable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cap : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glDisableClientState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glDrawArrays_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_first : JV := (JR.asI (JR.arg jargs 1))
    let mut l_count : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glDrawElements_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_count : JV := (JR.asI (JR.arg jargs 1))
    let mut l_type : JV := (JR.asI (JR.arg jargs 2))
    let mut l_indices : JV := (JR.arg jargs 3)
    return JV.null


def m_glEnable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cap : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glEnableClientState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_array : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glFinish_0 (this : JV) (jargs : Array JV) : JM JV := do
    return JV.null


def m_glFlush_0 (this : JV) (jargs : Array JV) : JM JV := do
    return JV.null


def m_glFogf_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pname : JV := (JR.asI (JR.arg jargs 0))
    let mut l_param : JV := (JR.asF (JR.arg jargs 1))
    return JV.null


def m_glFogfv_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pname : JV := (JR.asI (JR.arg jargs 0))
    let mut l_params : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glFogfv_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pname : JV := (JR.asI (JR.arg jargs 0))
    let mut l_params : JV := (JR.arg jargs 1)
    return JV.null


def m_glFrontFace_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mode : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glFrustumf_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_left : JV := (JR.asF (JR.arg jargs 0))
    let mut l_right : JV := (JR.asF (JR.arg jargs 1))
    let mut l_bottom : JV := (JR.asF (JR.arg jargs 2))
    let mut l_top : JV := (JR.asF (JR.arg jargs 3))
    let mut l_zNear : JV := (JR.asF (JR.arg jargs 4))
    let mut l_zFar : JV := (JR.asF (JR.arg jargs 5))
    return JV.null


def m_glGenTextures_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_n : JV := (JR.asI (JR.arg jargs 0))
    let mut l_textures : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glGenTextures_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_n : JV := (JR.asI (JR.arg jargs 0))
    let mut l_textures : JV := (JR.arg jargs 1)
    return JV.null


def m_glGetError_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_glGetIntegerv_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pname : JV := (JR.asI (JR.arg jargs 0))
    let mut l_params : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glGetIntegerv_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pname : JV := (JR.asI (JR.arg jargs 0))
    let mut l_params : JV := (JR.arg jargs 1)
    return JV.null


def m_glGetString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_glHint_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_mode : JV := (JR.asI (JR.arg jargs 1))
    return JV.null


def m_glLightModelf_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pname : JV := (JR.asI (JR.arg jargs 0))
    let mut l_param : JV := (JR.asF (JR.arg jargs 1))
    return JV.null


def m_glLightModelfv_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pname : JV := (JR.asI (JR.arg jargs 0))
    let mut l_params : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glLightModelfv_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pname : JV := (JR.asI (JR.arg jargs 0))
    let mut l_params : JV := (JR.arg jargs 1)
    return JV.null


def m_glLightf_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_light : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_param : JV := (JR.asF (JR.arg jargs 2))
    return JV.null


def m_glLightfv_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_light : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_params : JV := (JR.arg jargs 2)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 3))
    return JV.null


def m_glLightfv_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_light : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_params : JV := (JR.arg jargs 2)
    return JV.null


def m_glLineWidth_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asF (JR.arg jargs 0))
    return JV.null


def m_glLoadIdentity_0 (this : JV) (jargs : Array JV) : JM JV := do
    return JV.null


def m_glLoadMatrixf_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_m : JV := (JR.arg jargs 0)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 1))
    return JV.null


def m_glLoadMatrixf_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_m : JV := (JR.arg jargs 0)
    return JV.null


def m_glLogicOp_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_opcode : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glMaterialf_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_face : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_param : JV := (JR.asF (JR.arg jargs 2))
    return JV.null


def m_glMaterialfv_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_face : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_params : JV := (JR.arg jargs 2)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 3))
    return JV.null


def m_glMaterialfv_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_face : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_params : JV := (JR.arg jargs 2)
    return JV.null


def m_glMatrixMode_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mode : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glMultMatrixf_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_m : JV := (JR.arg jargs 0)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 1))
    return JV.null


def m_glMultMatrixf_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_m : JV := (JR.arg jargs 0)
    return JV.null


def m_glMultiTexCoord4f_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_s : JV := (JR.asF (JR.arg jargs 1))
    let mut l_t : JV := (JR.asF (JR.arg jargs 2))
    let mut l_r : JV := (JR.asF (JR.arg jargs 3))
    let mut l_q : JV := (JR.asF (JR.arg jargs 4))
    return JV.null


def m_glNormal3f_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_nx : JV := (JR.asF (JR.arg jargs 0))
    let mut l_ny : JV := (JR.asF (JR.arg jargs 1))
    let mut l_nz : JV := (JR.asF (JR.arg jargs 2))
    return JV.null


def m_glNormalPointer_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_type : JV := (JR.asI (JR.arg jargs 0))
    let mut l_stride : JV := (JR.asI (JR.arg jargs 1))
    let mut l_pointer : JV := (JR.arg jargs 2)
    return JV.null


def m_glOrthof_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_left : JV := (JR.asF (JR.arg jargs 0))
    let mut l_right : JV := (JR.asF (JR.arg jargs 1))
    let mut l_bottom : JV := (JR.asF (JR.arg jargs 2))
    let mut l_top : JV := (JR.asF (JR.arg jargs 3))
    let mut l_zNear : JV := (JR.asF (JR.arg jargs 4))
    let mut l_zFar : JV := (JR.asF (JR.arg jargs 5))
    return JV.null


def m_glPixelStorei_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pname : JV := (JR.asI (JR.arg jargs 0))
    let mut l_param : JV := (JR.asI (JR.arg jargs 1))
    return JV.null


def m_glPointSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asF (JR.arg jargs 0))
    return JV.null


def m_glPolygonOffset_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_factor : JV := (JR.asF (JR.arg jargs 0))
    let mut l_units : JV := (JR.asF (JR.arg jargs 1))
    return JV.null


def m_glPopMatrix_0 (this : JV) (jargs : Array JV) : JM JV := do
    return JV.null


def m_glPushMatrix_0 (this : JV) (jargs : Array JV) : JM JV := do
    return JV.null


def m_glReadPixels_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_width : JV := (JR.asI (JR.arg jargs 2))
    let mut l_height : JV := (JR.asI (JR.arg jargs 3))
    let mut l_format : JV := (JR.asI (JR.arg jargs 4))
    let mut l_type : JV := (JR.asI (JR.arg jargs 5))
    let mut l_pixels : JV := (JR.arg jargs 6)
    return JV.null


def m_glRotatef_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asF (JR.arg jargs 0))
    let mut l_x : JV := (JR.asF (JR.arg jargs 1))
    let mut l_y : JV := (JR.asF (JR.arg jargs 2))
    let mut l_z : JV := (JR.asF (JR.arg jargs 3))
    return JV.null


def m_glRotatex_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asI (JR.arg jargs 0))
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    return JV.null


def m_glSampleCoverage_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asF (JR.arg jargs 0))
    let mut l_invert : JV := (JR.arg jargs 1)
    return JV.null


def m_glScalef_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asF (JR.arg jargs 0))
    let mut l_y : JV := (JR.asF (JR.arg jargs 1))
    let mut l_z : JV := (JR.asF (JR.arg jargs 2))
    return JV.null


def m_glScalex_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glScissor_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_width : JV := (JR.asI (JR.arg jargs 2))
    let mut l_height : JV := (JR.asI (JR.arg jargs 3))
    return JV.null


def m_glShadeModel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mode : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glStencilFunc_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_func : JV := (JR.asI (JR.arg jargs 0))
    let mut l_ref : JV := (JR.asI (JR.arg jargs 1))
    let mut l_mask : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glStencilMask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mask : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glStencilOp_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fail : JV := (JR.asI (JR.arg jargs 0))
    let mut l_zfail : JV := (JR.asI (JR.arg jargs 1))
    let mut l_zpass : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glTexCoordPointer_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    let mut l_type : JV := (JR.asI (JR.arg jargs 1))
    let mut l_stride : JV := (JR.asI (JR.arg jargs 2))
    let mut l_pointer : JV := (JR.arg jargs 3)
    return JV.null


def m_glTexEnvf_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_param : JV := (JR.asF (JR.arg jargs 2))
    return JV.null


def m_glTexEnvfv_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_params : JV := (JR.arg jargs 2)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 3))
    return JV.null


def m_glTexEnvfv_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_params : JV := (JR.arg jargs 2)
    return JV.null


def m_glTexImage2D_9 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    let mut l_internalformat : JV := (JR.asI (JR.arg jargs 2))
    let mut l_width : JV := (JR.asI (JR.arg jargs 3))
    let mut l_height : JV := (JR.asI (JR.arg jargs 4))
    let mut l_border : JV := (JR.asI (JR.arg jargs 5))
    let mut l_format : JV := (JR.asI (JR.arg jargs 6))
    let mut l_type : JV := (JR.asI (JR.arg jargs 7))
    let mut l_pixels : JV := (JR.arg jargs 8)
    return JV.null


def m_glTexParameterf_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_param : JV := (JR.asF (JR.arg jargs 2))
    return JV.null


def m_glTexParameteri_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pname : JV := (JR.asI (JR.arg jargs 1))
    let mut l_param : JV := (JR.asI (JR.arg jargs 2))
    return JV.null


def m_glTexSubImage2D_9 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_target : JV := (JR.asI (JR.arg jargs 0))
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    let mut l_xoffset : JV := (JR.asI (JR.arg jargs 2))
    let mut l_yoffset : JV := (JR.asI (JR.arg jargs 3))
    let mut l_width : JV := (JR.asI (JR.arg jargs 4))
    let mut l_height : JV := (JR.asI (JR.arg jargs 5))
    let mut l_format : JV := (JR.asI (JR.arg jargs 6))
    let mut l_type : JV := (JR.asI (JR.arg jargs 7))
    let mut l_pixels : JV := (JR.arg jargs 8)
    return JV.null


def m_glTranslatef_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asF (JR.arg jargs 0))
    let mut l_y : JV := (JR.asF (JR.arg jargs 1))
    let mut l_z : JV := (JR.asF (JR.arg jargs 2))
    return JV.null


def m_glVertexPointer_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    let mut l_type : JV := (JR.asI (JR.arg jargs 1))
    let mut l_stride : JV := (JR.asI (JR.arg jargs 2))
    let mut l_pointer : JV := (JR.arg jargs 3)
    return JV.null


def m_glViewport_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_width : JV := (JR.asI (JR.arg jargs 2))
    let mut l_height : JV := (JR.asI (JR.arg jargs 3))
    return JV.null


def m_glBegin_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_i : JV := (JR.asI (JR.arg jargs 0))
    return JV.null


def m_glEnd_0 (this : JV) (jargs : Array JV) : JM JV := do
    return JV.null


def m_glVertex3f_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_f : JV := (JR.asF (JR.arg jargs 0))
    let mut l_f2 : JV := (JR.asF (JR.arg jargs 1))
    let mut l_f3 : JV := (JR.asF (JR.arg jargs 2))
    return JV.null


def m_glPolygonMode_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_i : JV := (JR.asI (JR.arg jargs 0))
    let mut l_i1 : JV := (JR.asI (JR.arg jargs 1))
    return JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullGL10",
    javaName := "org.allbinary.device.NullGL10",
    super := "Object",
    interfaces := #["GL10"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_GL10", JV.null)],
    methods := #[
        ("glActiveTexture_1", #["int"], false, m_glActiveTexture_1), 
        ("glAlphaFunc_2", #["int", "float"], false, m_glAlphaFunc_2), 
        ("glBindTexture_2", #["int", "int"], false, m_glBindTexture_2), 
        ("glBlendFunc_2", #["int", "int"], false, m_glBlendFunc_2), 
        ("glClear_1", #["int"], false, m_glClear_1), 
        ("glClearColor_4", #["float", "float", "float", "float"], false, m_glClearColor_4), 
        ("glClearDepthf_1", #["float"], false, m_glClearDepthf_1), 
        ("glClearStencil_1", #["int"], false, m_glClearStencil_1), 
        ("glClientActiveTexture_1", #["int"], false, m_glClientActiveTexture_1), 
        ("glColor4f_4", #["float", "float", "float", "float"], false, m_glColor4f_4), 
        ("glColorMask_4", #["boolean", "boolean", "boolean", "boolean"], false, m_glColorMask_4), 
        ("glColorPointer_4", #["int", "int", "int", "Buffer"], false, m_glColorPointer_4), 
        ("glCompressedTexImage2D_8", #["int", "int", "int", "int", "int", "int", "int", "Buffer"], false, m_glCompressedTexImage2D_8), 
        ("glCompressedTexSubImage2D_9", #["int", "int", "int", "int", "int", "int", "int", "int", "Buffer"], false, m_glCompressedTexSubImage2D_9), 
        ("glCopyTexImage2D_8", #["int", "int", "int", "int", "int", "int", "int", "int"], false, m_glCopyTexImage2D_8), 
        ("glCopyTexSubImage2D_8", #["int", "int", "int", "int", "int", "int", "int", "int"], false, m_glCopyTexSubImage2D_8), 
        ("glCullFace_1", #["int"], false, m_glCullFace_1), 
        ("glDeleteTextures_3", #["int", "intArr", "int"], false, m_glDeleteTextures_3), 
        ("glDeleteTextures_2", #["int", "IntBuffer"], false, m_glDeleteTextures_2), 
        ("glDepthFunc_1", #["int"], false, m_glDepthFunc_1), 
        ("glDepthMask_1", #["boolean"], false, m_glDepthMask_1), 
        ("glDepthRangef_2", #["float", "float"], false, m_glDepthRangef_2), 
        ("glDisable_1", #["int"], false, m_glDisable_1), 
        ("glDisableClientState_1", #["int"], false, m_glDisableClientState_1), 
        ("glDrawArrays_3", #["int", "int", "int"], false, m_glDrawArrays_3), 
        ("glDrawElements_4", #["int", "int", "int", "Buffer"], false, m_glDrawElements_4), 
        ("glEnable_1", #["int"], false, m_glEnable_1), 
        ("glEnableClientState_1", #["int"], false, m_glEnableClientState_1), 
        ("glFinish_0", #[], false, m_glFinish_0), 
        ("glFlush_0", #[], false, m_glFlush_0), 
        ("glFogf_2", #["int", "float"], false, m_glFogf_2), 
        ("glFogfv_3", #["int", "floatArr", "int"], false, m_glFogfv_3), 
        ("glFogfv_2", #["int", "FloatBuffer"], false, m_glFogfv_2), 
        ("glFrontFace_1", #["int"], false, m_glFrontFace_1), 
        ("glFrustumf_6", #["float", "float", "float", "float", "float", "float"], false, m_glFrustumf_6), 
        ("glGenTextures_3", #["int", "intArr", "int"], false, m_glGenTextures_3), 
        ("glGenTextures_2", #["int", "IntBuffer"], false, m_glGenTextures_2), 
        ("glGetError_0", #[], false, m_glGetError_0), 
        ("glGetIntegerv_3", #["int", "intArr", "int"], false, m_glGetIntegerv_3), 
        ("glGetIntegerv_2", #["int", "IntBuffer"], false, m_glGetIntegerv_2), 
        ("glGetString_1", #["int"], false, m_glGetString_1), 
        ("glHint_2", #["int", "int"], false, m_glHint_2), 
        ("glLightModelf_2", #["int", "float"], false, m_glLightModelf_2), 
        ("glLightModelfv_3", #["int", "floatArr", "int"], false, m_glLightModelfv_3), 
        ("glLightModelfv_2", #["int", "FloatBuffer"], false, m_glLightModelfv_2), 
        ("glLightf_3", #["int", "int", "float"], false, m_glLightf_3), 
        ("glLightfv_4", #["int", "int", "floatArr", "int"], false, m_glLightfv_4), 
        ("glLightfv_3", #["int", "int", "FloatBuffer"], false, m_glLightfv_3), 
        ("glLineWidth_1", #["float"], false, m_glLineWidth_1), 
        ("glLoadIdentity_0", #[], false, m_glLoadIdentity_0), 
        ("glLoadMatrixf_2", #["floatArr", "int"], false, m_glLoadMatrixf_2), 
        ("glLoadMatrixf_1", #["FloatBuffer"], false, m_glLoadMatrixf_1), 
        ("glLogicOp_1", #["int"], false, m_glLogicOp_1), 
        ("glMaterialf_3", #["int", "int", "float"], false, m_glMaterialf_3), 
        ("glMaterialfv_4", #["int", "int", "floatArr", "int"], false, m_glMaterialfv_4), 
        ("glMaterialfv_3", #["int", "int", "FloatBuffer"], false, m_glMaterialfv_3), 
        ("glMatrixMode_1", #["int"], false, m_glMatrixMode_1), 
        ("glMultMatrixf_2", #["floatArr", "int"], false, m_glMultMatrixf_2), 
        ("glMultMatrixf_1", #["FloatBuffer"], false, m_glMultMatrixf_1), 
        ("glMultiTexCoord4f_5", #["int", "float", "float", "float", "float"], false, m_glMultiTexCoord4f_5), 
        ("glNormal3f_3", #["float", "float", "float"], false, m_glNormal3f_3), 
        ("glNormalPointer_3", #["int", "int", "Buffer"], false, m_glNormalPointer_3), 
        ("glOrthof_6", #["float", "float", "float", "float", "float", "float"], false, m_glOrthof_6), 
        ("glPixelStorei_2", #["int", "int"], false, m_glPixelStorei_2), 
        ("glPointSize_1", #["float"], false, m_glPointSize_1), 
        ("glPolygonOffset_2", #["float", "float"], false, m_glPolygonOffset_2), 
        ("glPopMatrix_0", #[], false, m_glPopMatrix_0), 
        ("glPushMatrix_0", #[], false, m_glPushMatrix_0), 
        ("glReadPixels_7", #["int", "int", "int", "int", "int", "int", "Buffer"], false, m_glReadPixels_7), 
        ("glRotatef_4", #["float", "float", "float", "float"], false, m_glRotatef_4), 
        ("glRotatex_4", #["int", "int", "int", "int"], false, m_glRotatex_4), 
        ("glSampleCoverage_2", #["float", "boolean"], false, m_glSampleCoverage_2), 
        ("glScalef_3", #["float", "float", "float"], false, m_glScalef_3), 
        ("glScalex_3", #["int", "int", "int"], false, m_glScalex_3), 
        ("glScissor_4", #["int", "int", "int", "int"], false, m_glScissor_4), 
        ("glShadeModel_1", #["int"], false, m_glShadeModel_1), 
        ("glStencilFunc_3", #["int", "int", "int"], false, m_glStencilFunc_3), 
        ("glStencilMask_1", #["int"], false, m_glStencilMask_1), 
        ("glStencilOp_3", #["int", "int", "int"], false, m_glStencilOp_3), 
        ("glTexCoordPointer_4", #["int", "int", "int", "Buffer"], false, m_glTexCoordPointer_4), 
        ("glTexEnvf_3", #["int", "int", "float"], false, m_glTexEnvf_3), 
        ("glTexEnvfv_4", #["int", "int", "floatArr", "int"], false, m_glTexEnvfv_4), 
        ("glTexEnvfv_3", #["int", "int", "FloatBuffer"], false, m_glTexEnvfv_3), 
        ("glTexImage2D_9", #["int", "int", "int", "int", "int", "int", "int", "int", "Buffer"], false, m_glTexImage2D_9), 
        ("glTexParameterf_3", #["int", "int", "float"], false, m_glTexParameterf_3), 
        ("glTexParameteri_3", #["int", "int", "int"], false, m_glTexParameteri_3), 
        ("glTexSubImage2D_9", #["int", "int", "int", "int", "int", "int", "int", "int", "Buffer"], false, m_glTexSubImage2D_9), 
        ("glTranslatef_3", #["float", "float", "float"], false, m_glTranslatef_3), 
        ("glVertexPointer_4", #["int", "int", "int", "Buffer"], false, m_glVertexPointer_4), 
        ("glViewport_4", #["int", "int", "int", "int"], false, m_glViewport_4), 
        ("glBegin_1", #["int"], false, m_glBegin_1), 
        ("glEnd_0", #[], false, m_glEnd_0), 
        ("glVertex3f_3", #["float", "float", "float"], false, m_glVertex3f_3), 
        ("glPolygonMode_2", #["int", "int"], false, m_glPolygonMode_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullGL10


