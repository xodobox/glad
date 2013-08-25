module amp.glx.loader;


private import amp.glx.funcs;
private import amp.glx.ext;
private import amp.glx.enums;
private import amp.glx.types;

void loadGLX(void* function(const(char)* name) load) {
	find_core();
	load_GLX_VERSION_1_0(load);
	load_GLX_VERSION_1_1(load);
	load_GLX_VERSION_1_2(load);
	load_GLX_VERSION_1_3(load);
	load_GLX_VERSION_1_4(load);

	find_extensions();
	load_GLX_EXT_import_context(load);
	load_GLX_SGIX_pbuffer(load);
	load_GLX_NV_swap_group(load);
	load_GLX_SGIX_hyperpipe(load);
	load_GLX_SGIX_video_resize(load);
	load_GLX_NV_copy_image(load);
	load_GLX_OML_sync_control(load);
	load_GLX_SGI_make_current_read(load);
	load_GLX_SGI_swap_control(load);
	load_GLX_SGI_video_sync(load);
	load_GLX_MESA_agp_offset(load);
	load_GLX_MESA_set_3dfx_mode(load);
	load_GLX_EXT_texture_from_pixmap(load);
	load_GLX_NV_video_capture(load);
	load_GLX_SGIX_swap_group(load);
	load_GLX_EXT_swap_control(load);
	load_GLX_SGIX_video_source(load);
	load_GLX_ARB_create_context(load);
	load_GLX_SGIX_fbconfig(load);
	load_GLX_MESA_pixmap_colormap(load);
	load_GLX_NV_video_output(load);
	load_GLX_SGIX_dmbuffer(load);
	load_GLX_SGIX_swap_barrier(load);
	load_GLX_MESA_release_buffers(load);
	load_GLX_MESA_copy_sub_buffer(load);
	load_GLX_SGI_cushion(load);
	load_GLX_NV_present_video(load);
	load_GLX_SUN_get_transparent_index(load);
	load_GLX_ARB_get_proc_address(load);

	return;
}

private:

void find_core() {
	return;
}

void find_extensions() {
	return;
}

void load_GLX_VERSION_1_0(void* function(const(char)* name) load) {
	glXChooseVisual = cast(typeof(glXChooseVisual))load("glXChooseVisual");
	glXCreateContext = cast(typeof(glXCreateContext))load("glXCreateContext");
	glXDestroyContext = cast(typeof(glXDestroyContext))load("glXDestroyContext");
	glXMakeCurrent = cast(typeof(glXMakeCurrent))load("glXMakeCurrent");
	glXCopyContext = cast(typeof(glXCopyContext))load("glXCopyContext");
	glXSwapBuffers = cast(typeof(glXSwapBuffers))load("glXSwapBuffers");
	glXCreateGLXPixmap = cast(typeof(glXCreateGLXPixmap))load("glXCreateGLXPixmap");
	glXDestroyGLXPixmap = cast(typeof(glXDestroyGLXPixmap))load("glXDestroyGLXPixmap");
	glXQueryExtension = cast(typeof(glXQueryExtension))load("glXQueryExtension");
	glXQueryVersion = cast(typeof(glXQueryVersion))load("glXQueryVersion");
	glXIsDirect = cast(typeof(glXIsDirect))load("glXIsDirect");
	glXGetConfig = cast(typeof(glXGetConfig))load("glXGetConfig");
	glXGetCurrentContext = cast(typeof(glXGetCurrentContext))load("glXGetCurrentContext");
	glXGetCurrentDrawable = cast(typeof(glXGetCurrentDrawable))load("glXGetCurrentDrawable");
	glXWaitGL = cast(typeof(glXWaitGL))load("glXWaitGL");
	glXWaitX = cast(typeof(glXWaitX))load("glXWaitX");
	glXUseXFont = cast(typeof(glXUseXFont))load("glXUseXFont");
	return;
}

void load_GLX_VERSION_1_1(void* function(const(char)* name) load) {
	glXQueryExtensionsString = cast(typeof(glXQueryExtensionsString))load("glXQueryExtensionsString");
	glXQueryServerString = cast(typeof(glXQueryServerString))load("glXQueryServerString");
	glXGetClientString = cast(typeof(glXGetClientString))load("glXGetClientString");
	return;
}

void load_GLX_VERSION_1_2(void* function(const(char)* name) load) {
	glXGetCurrentDisplay = cast(typeof(glXGetCurrentDisplay))load("glXGetCurrentDisplay");
	return;
}

void load_GLX_VERSION_1_3(void* function(const(char)* name) load) {
	glXGetFBConfigs = cast(typeof(glXGetFBConfigs))load("glXGetFBConfigs");
	glXChooseFBConfig = cast(typeof(glXChooseFBConfig))load("glXChooseFBConfig");
	glXGetFBConfigAttrib = cast(typeof(glXGetFBConfigAttrib))load("glXGetFBConfigAttrib");
	glXGetVisualFromFBConfig = cast(typeof(glXGetVisualFromFBConfig))load("glXGetVisualFromFBConfig");
	glXCreateWindow = cast(typeof(glXCreateWindow))load("glXCreateWindow");
	glXDestroyWindow = cast(typeof(glXDestroyWindow))load("glXDestroyWindow");
	glXCreatePixmap = cast(typeof(glXCreatePixmap))load("glXCreatePixmap");
	glXDestroyPixmap = cast(typeof(glXDestroyPixmap))load("glXDestroyPixmap");
	glXCreatePbuffer = cast(typeof(glXCreatePbuffer))load("glXCreatePbuffer");
	glXDestroyPbuffer = cast(typeof(glXDestroyPbuffer))load("glXDestroyPbuffer");
	glXQueryDrawable = cast(typeof(glXQueryDrawable))load("glXQueryDrawable");
	glXCreateNewContext = cast(typeof(glXCreateNewContext))load("glXCreateNewContext");
	glXMakeContextCurrent = cast(typeof(glXMakeContextCurrent))load("glXMakeContextCurrent");
	glXGetCurrentReadDrawable = cast(typeof(glXGetCurrentReadDrawable))load("glXGetCurrentReadDrawable");
	glXQueryContext = cast(typeof(glXQueryContext))load("glXQueryContext");
	glXSelectEvent = cast(typeof(glXSelectEvent))load("glXSelectEvent");
	glXGetSelectedEvent = cast(typeof(glXGetSelectedEvent))load("glXGetSelectedEvent");
	return;
}

void load_GLX_VERSION_1_4(void* function(const(char)* name) load) {
	glXGetProcAddress = cast(typeof(glXGetProcAddress))load("glXGetProcAddress");
	return;
}

void load_GLX_EXT_import_context(void* function(const(char)* name) load) {
	glXGetCurrentDisplayEXT = cast(typeof(glXGetCurrentDisplayEXT))load("glXGetCurrentDisplayEXT");
	glXQueryContextInfoEXT = cast(typeof(glXQueryContextInfoEXT))load("glXQueryContextInfoEXT");
	glXGetContextIDEXT = cast(typeof(glXGetContextIDEXT))load("glXGetContextIDEXT");
	glXImportContextEXT = cast(typeof(glXImportContextEXT))load("glXImportContextEXT");
	glXFreeContextEXT = cast(typeof(glXFreeContextEXT))load("glXFreeContextEXT");
	return;
}
void load_GLX_SGIX_pbuffer(void* function(const(char)* name) load) {
	glXCreateGLXPbufferSGIX = cast(typeof(glXCreateGLXPbufferSGIX))load("glXCreateGLXPbufferSGIX");
	glXDestroyGLXPbufferSGIX = cast(typeof(glXDestroyGLXPbufferSGIX))load("glXDestroyGLXPbufferSGIX");
	glXQueryGLXPbufferSGIX = cast(typeof(glXQueryGLXPbufferSGIX))load("glXQueryGLXPbufferSGIX");
	glXSelectEventSGIX = cast(typeof(glXSelectEventSGIX))load("glXSelectEventSGIX");
	glXGetSelectedEventSGIX = cast(typeof(glXGetSelectedEventSGIX))load("glXGetSelectedEventSGIX");
	return;
}
void load_GLX_NV_swap_group(void* function(const(char)* name) load) {
	glXJoinSwapGroupNV = cast(typeof(glXJoinSwapGroupNV))load("glXJoinSwapGroupNV");
	glXBindSwapBarrierNV = cast(typeof(glXBindSwapBarrierNV))load("glXBindSwapBarrierNV");
	glXQuerySwapGroupNV = cast(typeof(glXQuerySwapGroupNV))load("glXQuerySwapGroupNV");
	glXQueryMaxSwapGroupsNV = cast(typeof(glXQueryMaxSwapGroupsNV))load("glXQueryMaxSwapGroupsNV");
	glXQueryFrameCountNV = cast(typeof(glXQueryFrameCountNV))load("glXQueryFrameCountNV");
	glXResetFrameCountNV = cast(typeof(glXResetFrameCountNV))load("glXResetFrameCountNV");
	return;
}
void load_GLX_SGIX_hyperpipe(void* function(const(char)* name) load) {
	glXQueryHyperpipeNetworkSGIX = cast(typeof(glXQueryHyperpipeNetworkSGIX))load("glXQueryHyperpipeNetworkSGIX");
	glXHyperpipeConfigSGIX = cast(typeof(glXHyperpipeConfigSGIX))load("glXHyperpipeConfigSGIX");
	glXQueryHyperpipeConfigSGIX = cast(typeof(glXQueryHyperpipeConfigSGIX))load("glXQueryHyperpipeConfigSGIX");
	glXDestroyHyperpipeConfigSGIX = cast(typeof(glXDestroyHyperpipeConfigSGIX))load("glXDestroyHyperpipeConfigSGIX");
	glXBindHyperpipeSGIX = cast(typeof(glXBindHyperpipeSGIX))load("glXBindHyperpipeSGIX");
	glXQueryHyperpipeBestAttribSGIX = cast(typeof(glXQueryHyperpipeBestAttribSGIX))load("glXQueryHyperpipeBestAttribSGIX");
	glXHyperpipeAttribSGIX = cast(typeof(glXHyperpipeAttribSGIX))load("glXHyperpipeAttribSGIX");
	glXQueryHyperpipeAttribSGIX = cast(typeof(glXQueryHyperpipeAttribSGIX))load("glXQueryHyperpipeAttribSGIX");
	return;
}
void load_GLX_SGIX_video_resize(void* function(const(char)* name) load) {
	glXBindChannelToWindowSGIX = cast(typeof(glXBindChannelToWindowSGIX))load("glXBindChannelToWindowSGIX");
	glXChannelRectSGIX = cast(typeof(glXChannelRectSGIX))load("glXChannelRectSGIX");
	glXQueryChannelRectSGIX = cast(typeof(glXQueryChannelRectSGIX))load("glXQueryChannelRectSGIX");
	glXQueryChannelDeltasSGIX = cast(typeof(glXQueryChannelDeltasSGIX))load("glXQueryChannelDeltasSGIX");
	glXChannelRectSyncSGIX = cast(typeof(glXChannelRectSyncSGIX))load("glXChannelRectSyncSGIX");
	return;
}
void load_GLX_NV_copy_image(void* function(const(char)* name) load) {
	glXCopyImageSubDataNV = cast(typeof(glXCopyImageSubDataNV))load("glXCopyImageSubDataNV");
	return;
}
void load_GLX_OML_sync_control(void* function(const(char)* name) load) {
	glXGetSyncValuesOML = cast(typeof(glXGetSyncValuesOML))load("glXGetSyncValuesOML");
	glXGetMscRateOML = cast(typeof(glXGetMscRateOML))load("glXGetMscRateOML");
	glXSwapBuffersMscOML = cast(typeof(glXSwapBuffersMscOML))load("glXSwapBuffersMscOML");
	glXWaitForMscOML = cast(typeof(glXWaitForMscOML))load("glXWaitForMscOML");
	glXWaitForSbcOML = cast(typeof(glXWaitForSbcOML))load("glXWaitForSbcOML");
	return;
}
void load_GLX_SGI_make_current_read(void* function(const(char)* name) load) {
	glXMakeCurrentReadSGI = cast(typeof(glXMakeCurrentReadSGI))load("glXMakeCurrentReadSGI");
	glXGetCurrentReadDrawableSGI = cast(typeof(glXGetCurrentReadDrawableSGI))load("glXGetCurrentReadDrawableSGI");
	return;
}
void load_GLX_SGI_swap_control(void* function(const(char)* name) load) {
	glXSwapIntervalSGI = cast(typeof(glXSwapIntervalSGI))load("glXSwapIntervalSGI");
	return;
}
void load_GLX_SGI_video_sync(void* function(const(char)* name) load) {
	glXGetVideoSyncSGI = cast(typeof(glXGetVideoSyncSGI))load("glXGetVideoSyncSGI");
	glXWaitVideoSyncSGI = cast(typeof(glXWaitVideoSyncSGI))load("glXWaitVideoSyncSGI");
	return;
}
void load_GLX_MESA_agp_offset(void* function(const(char)* name) load) {
	glXGetAGPOffsetMESA = cast(typeof(glXGetAGPOffsetMESA))load("glXGetAGPOffsetMESA");
	return;
}
void load_GLX_MESA_set_3dfx_mode(void* function(const(char)* name) load) {
	glXSet3DfxModeMESA = cast(typeof(glXSet3DfxModeMESA))load("glXSet3DfxModeMESA");
	return;
}
void load_GLX_EXT_texture_from_pixmap(void* function(const(char)* name) load) {
	glXBindTexImageEXT = cast(typeof(glXBindTexImageEXT))load("glXBindTexImageEXT");
	glXReleaseTexImageEXT = cast(typeof(glXReleaseTexImageEXT))load("glXReleaseTexImageEXT");
	return;
}
void load_GLX_NV_video_capture(void* function(const(char)* name) load) {
	glXBindVideoCaptureDeviceNV = cast(typeof(glXBindVideoCaptureDeviceNV))load("glXBindVideoCaptureDeviceNV");
	glXEnumerateVideoCaptureDevicesNV = cast(typeof(glXEnumerateVideoCaptureDevicesNV))load("glXEnumerateVideoCaptureDevicesNV");
	glXLockVideoCaptureDeviceNV = cast(typeof(glXLockVideoCaptureDeviceNV))load("glXLockVideoCaptureDeviceNV");
	glXQueryVideoCaptureDeviceNV = cast(typeof(glXQueryVideoCaptureDeviceNV))load("glXQueryVideoCaptureDeviceNV");
	glXReleaseVideoCaptureDeviceNV = cast(typeof(glXReleaseVideoCaptureDeviceNV))load("glXReleaseVideoCaptureDeviceNV");
	return;
}
void load_GLX_SGIX_swap_group(void* function(const(char)* name) load) {
	glXJoinSwapGroupSGIX = cast(typeof(glXJoinSwapGroupSGIX))load("glXJoinSwapGroupSGIX");
	return;
}
void load_GLX_EXT_swap_control(void* function(const(char)* name) load) {
	glXSwapIntervalEXT = cast(typeof(glXSwapIntervalEXT))load("glXSwapIntervalEXT");
	return;
}
void load_GLX_SGIX_video_source(void* function(const(char)* name) load) {
	glXCreateGLXVideoSourceSGIX = cast(typeof(glXCreateGLXVideoSourceSGIX))load("glXCreateGLXVideoSourceSGIX");
	glXDestroyGLXVideoSourceSGIX = cast(typeof(glXDestroyGLXVideoSourceSGIX))load("glXDestroyGLXVideoSourceSGIX");
	return;
}
void load_GLX_ARB_create_context(void* function(const(char)* name) load) {
	glXCreateContextAttribsARB = cast(typeof(glXCreateContextAttribsARB))load("glXCreateContextAttribsARB");
	return;
}
void load_GLX_SGIX_fbconfig(void* function(const(char)* name) load) {
	glXGetFBConfigAttribSGIX = cast(typeof(glXGetFBConfigAttribSGIX))load("glXGetFBConfigAttribSGIX");
	glXChooseFBConfigSGIX = cast(typeof(glXChooseFBConfigSGIX))load("glXChooseFBConfigSGIX");
	glXCreateGLXPixmapWithConfigSGIX = cast(typeof(glXCreateGLXPixmapWithConfigSGIX))load("glXCreateGLXPixmapWithConfigSGIX");
	glXCreateContextWithConfigSGIX = cast(typeof(glXCreateContextWithConfigSGIX))load("glXCreateContextWithConfigSGIX");
	glXGetVisualFromFBConfigSGIX = cast(typeof(glXGetVisualFromFBConfigSGIX))load("glXGetVisualFromFBConfigSGIX");
	glXGetFBConfigFromVisualSGIX = cast(typeof(glXGetFBConfigFromVisualSGIX))load("glXGetFBConfigFromVisualSGIX");
	return;
}
void load_GLX_MESA_pixmap_colormap(void* function(const(char)* name) load) {
	glXCreateGLXPixmapMESA = cast(typeof(glXCreateGLXPixmapMESA))load("glXCreateGLXPixmapMESA");
	return;
}
void load_GLX_NV_video_output(void* function(const(char)* name) load) {
	glXGetVideoDeviceNV = cast(typeof(glXGetVideoDeviceNV))load("glXGetVideoDeviceNV");
	glXReleaseVideoDeviceNV = cast(typeof(glXReleaseVideoDeviceNV))load("glXReleaseVideoDeviceNV");
	glXBindVideoImageNV = cast(typeof(glXBindVideoImageNV))load("glXBindVideoImageNV");
	glXReleaseVideoImageNV = cast(typeof(glXReleaseVideoImageNV))load("glXReleaseVideoImageNV");
	glXSendPbufferToVideoNV = cast(typeof(glXSendPbufferToVideoNV))load("glXSendPbufferToVideoNV");
	glXGetVideoInfoNV = cast(typeof(glXGetVideoInfoNV))load("glXGetVideoInfoNV");
	return;
}
void load_GLX_SGIX_dmbuffer(void* function(const(char)* name) load) {
	glXAssociateDMPbufferSGIX = cast(typeof(glXAssociateDMPbufferSGIX))load("glXAssociateDMPbufferSGIX");
	return;
}
void load_GLX_SGIX_swap_barrier(void* function(const(char)* name) load) {
	glXBindSwapBarrierSGIX = cast(typeof(glXBindSwapBarrierSGIX))load("glXBindSwapBarrierSGIX");
	glXQueryMaxSwapBarriersSGIX = cast(typeof(glXQueryMaxSwapBarriersSGIX))load("glXQueryMaxSwapBarriersSGIX");
	return;
}
void load_GLX_MESA_release_buffers(void* function(const(char)* name) load) {
	glXReleaseBuffersMESA = cast(typeof(glXReleaseBuffersMESA))load("glXReleaseBuffersMESA");
	return;
}
void load_GLX_MESA_copy_sub_buffer(void* function(const(char)* name) load) {
	glXCopySubBufferMESA = cast(typeof(glXCopySubBufferMESA))load("glXCopySubBufferMESA");
	return;
}
void load_GLX_SGI_cushion(void* function(const(char)* name) load) {
	glXCushionSGI = cast(typeof(glXCushionSGI))load("glXCushionSGI");
	return;
}
void load_GLX_NV_present_video(void* function(const(char)* name) load) {
	glXEnumerateVideoDevicesNV = cast(typeof(glXEnumerateVideoDevicesNV))load("glXEnumerateVideoDevicesNV");
	glXBindVideoDeviceNV = cast(typeof(glXBindVideoDeviceNV))load("glXBindVideoDeviceNV");
	return;
}
void load_GLX_SUN_get_transparent_index(void* function(const(char)* name) load) {
	glXGetTransparentIndexSUN = cast(typeof(glXGetTransparentIndexSUN))load("glXGetTransparentIndexSUN");
	return;
}
void load_GLX_ARB_get_proc_address(void* function(const(char)* name) load) {
	glXGetProcAddressARB = cast(typeof(glXGetProcAddressARB))load("glXGetProcAddressARB");
	return;
}