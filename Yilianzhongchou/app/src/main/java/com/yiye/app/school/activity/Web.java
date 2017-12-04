package com.yiye.app.school.activity;
import android.Manifest;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.PixelFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.Toast;

import com.google.android.gms.common.api.GoogleApiClient;

 import com.yiye.app.school.R;
import com.yiye.app.school.bean.ShouyelistBean;
import com.yiye.app.school.tool.NetTool;

import org.litepal.crud.DataSupport;
import org.litepal.tablemanager.Connector;

import java.io.File;
import java.util.ArrayList;

/**
 * Created by Administrator on 2017/3/25 0025.
 */

public class Web extends Activity {
    //    WebView tbsContent;
    android.webkit.WebView tbsContent;
    private String url = "http://sjzzhxy.com";
    private static final String TAG = "MainActivity";
    private static final int REQUEST_CODE_PICK_IMAGE = 0;
    private static final int REQUEST_CODE_IMAGE_CAPTURE = 1;
    private long clickTime = 0;
    private Intent mSourceIntent;

    private Button btnShow;

    // permission Code
    private static final int P_CODE_PERMISSIONS = 101;
    /**
     * ATTENTION: This was auto-generated to implement the App Indexi ng API.
     * See https://g.co/AppIndexing/AndroidStudio for more information.
     */
    private GoogleApiClient client;

    @SuppressLint("JavascriptInterface")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
//        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_main);
//        getWindow().setFormat(PixelFormat.TRANSLUCENT);
//        getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE | WindowManager.LayoutParams.SOFT_INPUT_STATE_HIDDEN);
        initView();
        // ATTENTION: This was auto-generated to implement the App Indexing API.
        // See https://g.co/AppIndexing/AndroidStudio for more information.
//        client = new GoogleApiClient.Builder(this).addApi(AppIndex.API).build();
    }

    private void initView() {
         btnShow = (Button) findViewById(R.id.btn_show);
         tbsContent = (WebView) findViewById(R.id.web);
        tbsContent.setWebChromeClient(new WebChromeClient());
         WebSettings set = tbsContent.getSettings();
        //设置webview支持js
        set.setJavaScriptEnabled(true);
        if (NetTool.isNetworkAvailable(this)) {
//            tbsContent.loadUrl(url);
            tbsContent.loadUrl("file:///android_asset/themes/default/Center/xzxx.html");

        } else {
            SQLiteDatabase db = Connector.getDatabase();
             ShouyelistBean shouyelistBean = new ShouyelistBean();
            shouyelistBean.setSushehao("639");
            shouyelistBean.setBanji("高二（19）");
            shouyelistBean.setName("王五");
            shouyelistBean.setWeiji("个人卫生");
            shouyelistBean.setTime("2017-11-22");
            shouyelistBean.setNum("-2");
            shouyelistBean.setYuanyin("有杂物杂物杂物");
            shouyelistBean.save();

            Log.v("school", "进来了没网状态下的加载网页");
            tbsContent.loadUrl("file:///android_asset/themes/default/Center/xzxx.html");
//             tbsContent.loadUrl("file:///android_asset/themes/default/Center/sushe_add.html");

//            btnShow.setOnClickListener(new View.OnClickListener() {
//                @Override
//                public void onClick(View view) {
//                    //本地调用js方法
//                    String mpassword = "aaa";
//                    tbsContent.loadUrl("javascript:ok('" + mpassword + "')");
//                }
//            });
        }

        tbsContent.setWebViewClient(new WebViewClient(){
            @TargetApi(Build.VERSION_CODES.KITKAT)
            @Override
            public boolean shouldOverrideUrlLoading(final WebView view, String url) {

            // 步骤2：根据协议的参数，判断是否是所需要的url
            // 一般根据scheme（协议格式） & authority（协议名）判断（前两个参数）
            //假定传入进来的 url = "js://webview?arg1=111&arg2=222"（同时也是约定好的需要拦截的）

            Uri uri = Uri.parse(url);
            // 如果url的协议 = 预先约定的 js 协议
            // 就解析往下解析参数
            if (uri.getScheme().equals("js")) {
                // 如果 authority  = 预先约定协议里的 webview，即代表都符合约定的协议
                // 所以拦截url,下面JS开始调用Android需要的方法
                if (uri.getAuthority().equals("webview")) {

                    //  步骤3：
                    // 执行JS所需要调用的逻辑
                    Log.v("school", "js调用了Android的方法:webview");
                    view.loadUrl("file:///android_asset/themes/default/Center/index_two.html");
                } else if (uri.getAuthority().equals("chayue")) {//查阅
                    Log.v("school", "js调用了Android的方法:chayue");
//                                        List<ShouyelistBean> allNews = DataSupport.findAll(ShouyelistBean.class);
                    ShouyelistBean shouyelistBean = DataSupport.findFirst(ShouyelistBean.class);
                    Log.v("school", "查询第一个id" + shouyelistBean);
                    //给js传递参数shouyelistBean.getSushehao();
                    String nim = "";
                    Log.v("school", "全部的数据" + nim);
                    view.loadUrl("javascript:jsFunction('" + nim + "')");
                    view.loadUrl("file:///android_asset/themes/default/Center/chayue.html");

                } else if (uri.getAuthority().equals("sushe")) {//宿舍登记

                    Log.v("school", "js调用了Android的方法：sushe");
                    view.loadUrl("file:///android_asset/themes/default/Center/sushe.html");

                } else if (uri.getAuthority().equals("xuesheng")) {//学生信息

                    Log.v("school", "js调用了Android的方法：xuesheng");
                    view.loadUrl("file:///android_asset/themes/default/Center/xuesheng.html");

                } else if (uri.getAuthority().equals("chaweed")) {//总览

                    Log.v("school", "js调用了Android的方法：chaweed");
                    view.loadUrl("file:///android_asset/themes/default/Center/chaweed.html");

                } else if (uri.getAuthority().equals("xs_lr")) {//学生信息录入

                    Log.v("school", "js调用了Android的方法：xs_lr");
                    view.loadUrl("file:///android_asset/themes/default/Center/xs_lr.html");

                } else if (uri.getAuthority().equals("xs_lb")) {//学生信息列表

                    Toast.makeText(Web.this, "学生信息列表查询失败，请重试", Toast.LENGTH_SHORT).show();
                    Log.v("school", "js调用了Android的方法：xs_lb");
                    view.loadUrl("file:///android_asset/themes/default/Center/xs_lb.html");

                } else if (uri.getAuthority().equals("kongpu")) {//空铺查询\
                    Log.v("school", "js调用了Android的方法：kongpu");
                    Toast.makeText(Web.this, "宿舍空铺查询失败！", Toast.LENGTH_SHORT).show();
                    view.loadUrl("file:///android_asset/themes/default/Center/kongpu.html");

                } else if (uri.getAuthority().equals("sushe_cha")) {

                    Log.v("school", "js调用了Android的方法：sushe_cha");
                    String pid = uri.getQueryParameter("pid");
                    view.loadUrl("file:///android_asset/themes/default/Center/sushe_cha.html");

                } else if (uri.getAuthority().equals("sushe_add")) {//学生录入

                    String xingbie = uri.getQueryParameter("xingbie");
                    String louceng = uri.getQueryParameter("louceng");
                    String nianji = uri.getQueryParameter("nianji");
                    String banji = uri.getQueryParameter("banji");
                    String sushe = uri.getQueryParameter("sushe");
                    String chuangpu = uri.getQueryParameter("chuangpu");
                    String name = uri.getQueryParameter("name");
                    String xuehao = uri.getQueryParameter("xuehao");
                    Log.v("school", "js调用了Android的方法：sushe_add，获取传递的参数：" + xingbie + louceng + nianji + banji + sushe + chuangpu + name + xuehao);
//                                                 view.loadUrl("javascript:jsFunction('" + xingbie + "')");
                    if (xingbie.equals("") || louceng.equals("") || nianji.equals("") || banji.equals("") || sushe.equals("") || chuangpu.equals("") || name.equals("") || name.equals("")) {
                        Toast.makeText(Web.this, "请填写完整", Toast.LENGTH_SHORT).show();

                    } else if(uri.getAuthority().equals("sushe_add")){

                        view.loadUrl("file:///android_asset/themes/default/Center/sushe_add.html");
                        String mpassword = "aaa";

                        view.loadUrl("javascript:ok('" + mpassword + "')");

                        Toast.makeText(Web.this, "提交成功", Toast.LENGTH_SHORT).show();

                    }

                } else if (uri.getAuthority().equals("sushe_tianjia")) {//添加

                    System.out.println("js调用了Android的方法");
                    Log.v("school", "js调用了Android的方法：sushe_tianjia");
                    view.loadUrl("file:///android_asset/themes/default/Center/sushe_tianjia.html");

                } else if (uri.getAuthority().equals("cha")) {//查询

                    String starttime = uri.getQueryParameter("starttime");
                    String endtime = uri.getQueryParameter("endtime");
                    String nianji = uri.getQueryParameter("nianji");
                    String banji = uri.getQueryParameter("banji");
                    String sushe = uri.getQueryParameter("sushe");
                    String name = uri.getQueryParameter("name");
                    Log.v("school", "js调用了Android的方法" + starttime + endtime + nianji + banji + sushe + name);
//                                          view.loadUrl("javascript:jsFunction('" + xingbie + "')");
                    if (starttime.equals("") && endtime.equals("") && nianji.equals("") && banji.equals("") && sushe.equals("") && name.equals("") && name.equals("")) {
                        Toast.makeText(Web.this, "请选择查询条件", Toast.LENGTH_SHORT).show();
                    } else {
                        Toast.makeText(Web.this, "查询失败！", Toast.LENGTH_SHORT).show();
                    }

                } else if (uri.getAuthority().equals("cha_xingbie")) {//
                    Toast.makeText(Web.this, "查询失败！", Toast.LENGTH_SHORT).show();
//                                          view.loadUrl("file:///android_asset/themes/default/Center/sushe_tianjia.html");
                }
                 return false;
            } else {
                view.loadUrl(url);
            }
                return super.shouldOverrideUrlLoading(view, url);
            }
        });

    }

 //   tbsContent.setWebViewClient(new WebViewClient() {
//        @Override
//        public boolean shouldOverrideUrlLoading (WebView view, String url){
//
//            // 步骤2：根据协议的参数，判断是否是所需要的url
//            // 一般根据scheme（协议格式） & authority（协议名）判断（前两个参数）
//            //假定传入进来的 url = "js://webview?arg1=111&arg2=222"（同时也是约定好的需要拦截的）
//
//            Uri uri = Uri.parse(url);
//            // 如果url的协议 = 预先约定的 js 协议
//            // 就解析往下解析参数
//            if (uri.getScheme().equals("js")) {
//                // 如果 authority  = 预先约定协议里的 webview，即代表都符合约定的协议
//                // 所以拦截url,下面JS开始调用Android需要的方法
//                if (uri.getAuthority().equals("webview")) {
//
//                    //  步骤3：
//                    // 执行JS所需要调用的逻辑
//                    Log.v("school", "js调用了Android的方法:webview");
//                    view.loadUrl("file:///android_asset/themes/default/Center/index_two.html");
//                } else if (uri.getAuthority().equals("chayue")) {//查阅
//                    Log.v("school", "js调用了Android的方法:chayue");
////                                        List<ShouyelistBean> allNews = DataSupport.findAll(ShouyelistBean.class);
//                    ShouyelistBean shouyelistBean = DataSupport.findFirst(ShouyelistBean.class);
//                    Log.v("school", "查询第一个id" + shouyelistBean);
//                    //给js传递参数
//                    String nim = shouyelistBean.getSushehao();
//                    Log.v("school", "全部的数据" + nim);
//                    view.loadUrl("javascript:jsFunction('" + nim + "')");
//                    view.loadUrl("file:///android_asset/themes/default/Center/chayue.html");
//
//                } else if (uri.getAuthority().equals("sushe")) {//宿舍登记
//
//                    Log.v("school", "js调用了Android的方法：sushe");
//                    view.loadUrl("file:///android_asset/themes/default/Center/sushe.html");
//
//                } else if (uri.getAuthority().equals("xuesheng")) {//学生信息
//
//                    Log.v("school", "js调用了Android的方法：xuesheng");
//                    view.loadUrl("file:///android_asset/themes/default/Center/xuesheng.html");
//
//                } else if (uri.getAuthority().equals("chaweed")) {//总览
//
//                    Log.v("school", "js调用了Android的方法：chaweed");
//                    view.loadUrl("file:///android_asset/themes/default/Center/chaweed.html");
//
//                } else if (uri.getAuthority().equals("xs_lr")) {//学生信息录入
//
//                    Log.v("school", "js调用了Android的方法：xs_lr");
//                    view.loadUrl("file:///android_asset/themes/default/Center/xs_lr.html");
//
//                } else if (uri.getAuthority().equals("xs_lb")) {//学生信息列表
//
//                    Toast.makeText(Web.this, "学生信息列表查询失败，请重试", Toast.LENGTH_SHORT).show();
//                    Log.v("school", "js调用了Android的方法：xs_lb");
//                    view.loadUrl("file:///android_asset/themes/default/Center/xs_lb.html");
//
//                } else if (uri.getAuthority().equals("kongpu")) {//空铺查询\
//                    Log.v("school", "js调用了Android的方法：kongpu");
//                    Toast.makeText(Web.this, "宿舍空铺查询失败！", Toast.LENGTH_SHORT).show();
//                    view.loadUrl("file:///android_asset/themes/default/Center/kongpu.html");
//
//                } else if (uri.getAuthority().equals("sushe_cha")) {
//
//                    Log.v("school", "js调用了Android的方法：sushe_cha");
//                    String pid = uri.getQueryParameter("pid");
//                    view.loadUrl("file:///android_asset/themes/default/Center/sushe_cha.html");
//
//                } else if (uri.getAuthority().equals("sushe_add")) {//学生录入
//
//                    String xingbie = uri.getQueryParameter("xingbie");
//                    String louceng = uri.getQueryParameter("louceng");
//                    String nianji = uri.getQueryParameter("nianji");
//                    String banji = uri.getQueryParameter("banji");
//                    String sushe = uri.getQueryParameter("sushe");
//                    String chuangpu = uri.getQueryParameter("chuangpu");
//                    String name = uri.getQueryParameter("name");
//                    String xuehao = uri.getQueryParameter("xuehao");
//                    Log.v("school", "js调用了Android的方法：sushe_add，获取传递的参数：" + xingbie + louceng + nianji + banji + sushe + chuangpu + name + xuehao);
////                                                 view.loadUrl("javascript:jsFunction('" + xingbie + "')");
//                    if (xingbie.equals("") || louceng.equals("") || nianji.equals("") || banji.equals("") || sushe.equals("") || chuangpu.equals("") || name.equals("") || name.equals("")) {
//                        Toast.makeText(Web.this, "请填写完整", Toast.LENGTH_SHORT).show();
//
//                    } else {
//                        tbsContent.addJavascriptInterface(new JsInteraction(), "control");
//
//                        view.loadUrl("file:///android_asset/themes/default/Center/sushe_add.html");
//                        tbsContent.loadUrl("javascript:sayHello()");
//
//                        Toast.makeText(Web.this, "提交成功", Toast.LENGTH_SHORT).show();
//
//                    }
//
//                } else if (uri.getAuthority().equals("sushe_tianjia")) {//添加
//
//                    System.out.println("js调用了Android的方法");
//                    Log.v("school", "js调用了Android的方法：sushe_tianjia");
//                    view.loadUrl("file:///android_asset/themes/default/Center/sushe_tianjia.html");
//
//                } else if (uri.getAuthority().equals("cha")) {//查询
//
//                    String starttime = uri.getQueryParameter("starttime");
//                    String endtime = uri.getQueryParameter("endtime");
//                    String nianji = uri.getQueryParameter("nianji");
//                    String banji = uri.getQueryParameter("banji");
//                    String sushe = uri.getQueryParameter("sushe");
//                    String name = uri.getQueryParameter("name");
//                    Log.v("school", "js调用了Android的方法" + starttime + endtime + nianji + banji + sushe + name);
////                                          view.loadUrl("javascript:jsFunction('" + xingbie + "')");
//                    if (starttime.equals("") && endtime.equals("") && nianji.equals("") && banji.equals("") && sushe.equals("") && name.equals("") && name.equals("")) {
//                        Toast.makeText(Web.this, "请选择查询条件", Toast.LENGTH_SHORT).show();
//                    } else {
//                        Toast.makeText(Web.this, "查询失败！", Toast.LENGTH_SHORT).show();
//                    }
//
//                } else if (uri.getAuthority().equals("cha_xingbie")) {//
//                    Toast.makeText(Web.this, "查询失败！", Toast.LENGTH_SHORT).show();
////                                          view.loadUrl("file:///android_asset/themes/default/Center/sushe_tianjia.html");
//                }
//
//                return true;
//            } else {
//                view.loadUrl(url);
//            }
//            return super.shouldOverrideUrlLoading(view, url);
//        }
//    }url
        //);

    class MyJsMd5{
        @JavascriptInterface
        public void toastMessage(String message) {
            Log.i("TAG" , "传递过来的值是： "+message);
        }
    }
}
