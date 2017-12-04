package com.yiye.app.school.activity;

import android.Manifest;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.v4.content.ContextCompat;


import java.util.ArrayList;
import java.util.List;

/**
 * 权限管理工具 (针对Android 6.0 系统)
 * Created by AlexTam on 2016/10/14.
 */
public class PermissionUtil {
    private static PermissionUtil permissionUtil = null;
    private static final String PERMISSIONS_CAMERA = Manifest.permission.CAMERA;
    private static final String PERMISSIONS_WRITE_STORAGE = Manifest.permission.WRITE_EXTERNAL_STORAGE;
    private static final String PERMISSIONS_READ_STORAGE = Manifest.permission.READ_EXTERNAL_STORAGE;
    private static final String PERMISSIONS_PHONE = Manifest.permission.READ_PHONE_STATE;
    private static final String PERMISSIONS_ACCOUNTS = Manifest.permission.GET_ACCOUNTS;
    private static final String PERMISSIONS_LOCATION = Manifest.permission.ACCESS_FINE_LOCATION;
    private static final String PERMISSIONS_AUDIO = Manifest.permission.RECORD_AUDIO;


}
