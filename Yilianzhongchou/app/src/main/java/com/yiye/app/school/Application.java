package com.yiye.app.school;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.util.Log;

import com.tencent.smtt.sdk.QbSdk;

import org.litepal.LitePalApplication;

/**
 * Created by Administrator on 2017/3/22 0022.
 */

public class Application extends LitePalApplication {
    @Override
    public void onCreate() {
        // TODO Auto-generated method stub
        super.onCreate();
        Log.v("jinyaoshi","进来了application");
        //搜集本地tbs内核信息并上报服务器，服务器返回结果决定使用哪个内核。
//        TbsDownloader.needDownload(getApplicationContext(), false);
//        QbSdk.setTbsListener(new TbsListener() {
//            @Override
//            public void onDownloadFinish(int i) {
//                Log.v("jinyaoshi","下载完成" + i);
//                QbSdk.PreInitCallback cb = new QbSdk.PreInitCallback() {
//                    @Override
//                    public void onViewInitFinished(boolean arg0) {
//                        // TODO Auto-generated method stub
//                        Log.v("jinyaoshi", "在视图中完成" + arg0);
//                        Log.v("jinyaoshi", "加载内核");
////                        Intent intent=new Intent(getApplicationContext(), Web.class);
//////                        intent.addCategory(Intent.CATEGORY_LAUNCHER);
//////                        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
////                        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
////                        getApplicationContext().startActivity(intent);
//                    }
//                    @Override
//                    public void onCoreInitFinished() {
//                        // TODO Auto-generated method stub
//                    }
//                };
//                QbSdk.initX5Environment(getApplicationContext(),  cb);
//            }
//            @Override
//            public void onInstallFinish(int i) {
//                Log.v("jinyaoshi","安装完成是" + i);
//
//            }
//
//            @Override
//            public void onDownloadProgress(int i) {
//                Log.v("jinyaoshi","下载进度"+i);
//                Toast.makeText(getApplicationContext(),"下载进度"+i,Toast.LENGTH_SHORT).show();
//            }
//        });
//        preinitX5WebCore();

//        Intent intent = new Intent(this, AdvanceLoadX5Service.class);
//        startService(intent);
    }
    private void preinitX5WebCore() {
        if (!QbSdk.isTbsCoreInited()) {

            QbSdk.preInit(getApplicationContext(), null);// 设置X5初始化完成的回调接口
            Log.v("school","设置X5初始化完成的回调");
        }
    }


    // x5 init service
    public class AdvanceLoadX5Service extends Service {
        @Nullable
        @Override
        public IBinder onBind(Intent intent) {
            return null;
        }

        @Override
        public void onCreate() {
            super.onCreate();
            Log.v("school","进来了服务");
            initX5();
        }

        private void initX5() {
            //  预加载X5内核
            QbSdk.initX5Environment(getApplicationContext(), cb);
        }

        QbSdk.PreInitCallback cb = new QbSdk.PreInitCallback() {

            @Override
            public void onViewInitFinished(boolean arg0) {
                // TODO Auto-generated method stub
                //初始化完成回调
                Log.v("school","x5内核预加载完成");
            }

            @Override
            public void onCoreInitFinished() {
                // TODO Auto-generated method stub
            }
        };
    }
}
