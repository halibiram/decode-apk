package com.tknetwork.tunnel.utils;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.CountDownTimer;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class TimerService extends Service {
    public static final String COUNTDOWN_BR = new ObfuscatedString(new long[]{-1153902567498673476L, 6240217618853604646L, 681408740698895038L, -2142538818609543332L, -1595993537856672544L, 4736106380681589122L}).toString();
    CountDownTimer countDownTimer;
    SharedPreferences sharedPreferences;
    private String TAG = new ObfuscatedString(new long[]{7555117706863261517L, 3875626928849446185L, -5710496429050506490L}).toString();
    Intent intent = new Intent(new ObfuscatedString(new long[]{-7179234872962817673L, -2712449289649379545L, -1951247852504306060L, -1649299947280282484L, -215103110114272725L, -2800919878607241207L}).toString());

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        new ObfuscatedString(new long[]{3339035332100637224L, 4108476777869503830L, -4570067441794214437L, 6005406572357116649L}).toString();
        SharedPreferences sharedPreferences = getSharedPreferences(getPackageName(), 0);
        this.sharedPreferences = sharedPreferences;
        CountDownTimer countDownTimer = new CountDownTimer(sharedPreferences.getLong(new ObfuscatedString(new long[]{6193166131117815078L, -443146837155004301L}).toString(), 0L), 1000L) { // from class: com.tknetwork.tunnel.utils.TimerService.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                TimerService.this.TAG;
                new ObfuscatedString(new long[]{2789376042600874927L, -4781462376791200716L, 1112964364930661605L, 947382113685825762L, -2190727820565265793L}).toString();
                TimerService.this.intent.putExtra(new ObfuscatedString(new long[]{2420173820986304364L, 4060436155595239007L, -6464728643241829056L}).toString(), j);
                TimerService timerService = TimerService.this;
                timerService.sendBroadcast(timerService.intent);
            }
        };
        this.countDownTimer = countDownTimer;
        countDownTimer.start();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.countDownTimer.cancel();
        super.onDestroy();
    }
}
