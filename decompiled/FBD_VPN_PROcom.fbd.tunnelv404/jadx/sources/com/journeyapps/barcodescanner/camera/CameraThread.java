package com.journeyapps.barcodescanner.camera;

import android.os.Handler;
import android.os.HandlerThread;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class CameraThread {
    private static final String TAG = "CameraThread";
    private static CameraThread instance;
    private Handler handler;
    private HandlerThread thread;
    private int openCount = 0;
    private final Object LOCK = new Object();

    private CameraThread() {
    }

    private void checkRunning() {
        synchronized (this.LOCK) {
            try {
                if (this.handler == null) {
                    if (this.openCount > 0) {
                        HandlerThread handlerThread = new HandlerThread(new ObfuscatedString(new long[]{-2962932384402640912L, 4086254690639599065L, -1044385102272911279L}).toString());
                        this.thread = handlerThread;
                        handlerThread.start();
                        this.handler = new Handler(this.thread.getLooper());
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{-2938318900566491757L, -2568405742982280636L, 3577277409814265669L, 7955427609449442916L}).toString());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static CameraThread getInstance() {
        if (instance == null) {
            instance = new CameraThread();
        }
        return instance;
    }

    private void quit() {
        synchronized (this.LOCK) {
            this.thread.quit();
            this.thread = null;
            this.handler = null;
        }
    }

    public void decrementInstances() {
        synchronized (this.LOCK) {
            try {
                int i = this.openCount - 1;
                this.openCount = i;
                if (i == 0) {
                    quit();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void enqueue(Runnable runnable) {
        synchronized (this.LOCK) {
            checkRunning();
            this.handler.post(runnable);
        }
    }

    public void enqueueDelayed(Runnable runnable, long j) {
        synchronized (this.LOCK) {
            checkRunning();
            this.handler.postDelayed(runnable, j);
        }
    }

    public void incrementAndEnqueue(Runnable runnable) {
        synchronized (this.LOCK) {
            this.openCount++;
            enqueue(runnable);
        }
    }
}
