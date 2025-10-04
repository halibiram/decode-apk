package com.google.zxing.client.android;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.os.Vibrator;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class BeepManager {
    private static final float BEEP_VOLUME = 0.1f;
    private static final String TAG = "BeepManager";
    private static final long VIBRATE_DURATION = 200;
    private final Context context;
    private boolean beepEnabled = true;
    private boolean vibrateEnabled = false;

    public BeepManager(Activity activity) {
        activity.setVolumeControlStream(3);
        this.context = activity.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playBeepSound$0(MediaPlayer mediaPlayer) {
        mediaPlayer.stop();
        mediaPlayer.reset();
        mediaPlayer.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$playBeepSound$1(MediaPlayer mediaPlayer, int i, int i2) {
        new ObfuscatedString(new long[]{-6158032328841615947L, 4712174156815090264L, -6245700146047118009L}).toString();
        new ObfuscatedString(new long[]{-174607665623331329L, 8328212561029108864L}).toString();
        mediaPlayer.stop();
        mediaPlayer.reset();
        mediaPlayer.release();
        return true;
    }

    public boolean isBeepEnabled() {
        return this.beepEnabled;
    }

    public boolean isVibrateEnabled() {
        return this.vibrateEnabled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, android.media.MediaPlayer$OnCompletionListener] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.media.MediaPlayer$OnErrorListener, java.lang.Object] */
    public MediaPlayer playBeepSound() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).build());
        mediaPlayer.setOnCompletionListener(new Object());
        mediaPlayer.setOnErrorListener(new Object());
        try {
            AssetFileDescriptor openRawResourceFd = this.context.getResources().openRawResourceFd(R.raw.zxing_beep);
            try {
                mediaPlayer.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                openRawResourceFd.close();
                mediaPlayer.setVolume(0.1f, 0.1f);
                mediaPlayer.prepare();
                mediaPlayer.start();
                return mediaPlayer;
            } catch (Throwable th) {
                openRawResourceFd.close();
                throw th;
            }
        } catch (IOException unused) {
            mediaPlayer.reset();
            mediaPlayer.release();
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    public synchronized void playBeepSoundAndVibrate() {
        Vibrator vibrator;
        try {
            if (this.beepEnabled) {
                playBeepSound();
            }
            if (this.vibrateEnabled && (vibrator = (Vibrator) this.context.getSystemService(new ObfuscatedString(new long[]{5252262961536025887L, -7447861450109568853L}).toString())) != null) {
                vibrator.vibrate(VIBRATE_DURATION);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setBeepEnabled(boolean z) {
        this.beepEnabled = z;
    }

    public void setVibrateEnabled(boolean z) {
        this.vibrateEnabled = z;
    }
}
