package com.yiye.app.school.activity;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Window;

import com.tencent.smtt.sdk.QbSdk;
import com.tencent.smtt.sdk.TbsDownloader;
import com.tencent.smtt.sdk.TbsListener;
import com.yiye.app.school.R;
import com.yiye.app.school.tool.NetTool;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.main);
//        if(NetTool.isNetworkAvailable(this)) {
//            Log.v("school","进来了有网状态下初始化" );
//            //有网状态下
//            TbsDownloader.needDownload(getApplicationContext(), false);
//            QbSdk.setTbsListener(new TbsListener() {
//                @Override
//                public void onDownloadFinish(int i) {
//                    Log.v("school","下载完成" + i);
//                }
//                @Override
//                public void onInstallFinish(int i) {
//                    Log.v("school","安装完成是" + i);
//                }
//
//                @Override
//                public void onDownloadProgress(int i) {
//                    Log.v("school","下载进度"+i);
////                Toast.makeText(getApplicationContext(),"下载进度"+i,Toast.LENGTH_SHORT).show();
//                }
//            });
//            QbSdk.PreInitCallback cb = new QbSdk.PreInitCallback() {
//                @Override
//                public void onViewInitFinished(boolean arg0) {
//                    // TODO Auto-generated method stub
//                    Log.v("school", "在视图中完成" + arg0);
//                    Log.v("school", "加载内核");
//                    Intent intent = new Intent(MainActivity.this, Web.class);
//                    new Handler().postDelayed(new Runnable() {
//                        @Override
//                        public void run() {
//                            Intent intent = new Intent(MainActivity.this, Web.class);
//                            startActivity(intent);
//                            MainActivity.this.finish();
//                        }
//                    }, 3000);
//                }
//                @Override
//                public void onCoreInitFinished() {
//                    // TODO Auto-generated method stub
//                }
//            };
//            QbSdk.initX5Environment(getApplicationContext(),  cb);
//        }else{
            Intent intent = new Intent(MainActivity.this, Web.class);
            new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {
                    Intent intent = new Intent(MainActivity.this, Web.class);
                    startActivity(intent);
                    MainActivity.this.finish();
                }
            }, 3000);
//        }

    }
}
