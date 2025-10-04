package com.google.android.gms.internal.ads;

import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.annotation.GuardedBy;

/* loaded from: classes2.dex */
public final class zzdoc implements GestureDetector.OnGestureListener {

    @GuardedBy("this")
    private final zzdmv zza;
    private final zzdnw zzb;

    public zzdoc(zzdmv zzdmvVar, zzdnw zzdnwVar) {
        this.zza = zzdmvVar;
        this.zzb = zzdnwVar;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0070 A[Catch: all -> 0x002b, TRY_LEAVE, TryCatch #0 {all -> 0x002b, blocks: (B:3:0x0001, B:9:0x0008, B:13:0x001c, B:14:0x0068, B:16:0x0070, B:22:0x0031, B:26:0x0046, B:29:0x005a), top: B:2:0x0001 }] */
    @Override // android.view.GestureDetector.OnGestureListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        int y;
        try {
            if (this.zza != null) {
                int i = -1;
                if (Math.abs(f) > Math.abs(f2)) {
                    if (f > 0.0f) {
                        y = (int) (((motionEvent2.getX() - motionEvent.getX()) / f) * 1000.0f);
                        i = 1;
                    } else {
                        if (f < 0.0f) {
                            y = (int) (((motionEvent2.getX() - motionEvent.getX()) / f) * 1000.0f);
                            i = 2;
                        }
                        y = 0;
                    }
                    if (i == this.zza.zza()) {
                        this.zza.zzD(this.zzb.zzr(), y);
                        return false;
                    }
                } else {
                    if (f2 > 0.0f) {
                        y = (int) (((motionEvent2.getY() - motionEvent.getY()) / f2) * 1000.0f);
                        i = 8;
                    } else {
                        if (f2 < 0.0f) {
                            y = (int) (((motionEvent2.getY() - motionEvent.getY()) / f2) * 1000.0f);
                            i = 4;
                        }
                        y = 0;
                    }
                    if (i == this.zza.zza()) {
                    }
                }
            }
            return false;
        } finally {
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final synchronized boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }
}
