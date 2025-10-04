package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzawk {
    private long zza = -1;
    private long zzb = -1;
    private long zzc = -1;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;

    private static DisplayMetrics zzl(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService(new ObfuscatedString(new long[]{-4216027293995784830L, -8649709647849683069L}).toString())).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            defaultDisplay.getRealMetrics(displayMetrics);
        } catch (NoSuchMethodError unused) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        return displayMetrics;
    }

    private static boolean zzm(View view) {
        try {
            if (view.getClass().getName().contains(new ObfuscatedString(new long[]{-759873262376709743L, -8728331022145252493L, 3166246318522855115L, 2456385340455242233L}).toString())) {
                view = ((ViewGroup) view).getChildAt(0);
            }
            Object invoke = view.getClass().getMethod(new ObfuscatedString(new long[]{-589517451271101179L, 2614656307709625785L, -346419907454228687L, -2328229887786630398L}).toString(), null).invoke(view, null);
            Integer num = (Integer) invoke.getClass().getField(new ObfuscatedString(new long[]{-7090995388024827206L, 8599912209423036966L}).toString()).get(invoke);
            num.intValue();
            String str = (String) invoke.getClass().getMethod(new ObfuscatedString(new long[]{-4638092986646532257L, 8065683741218412837L, 4234045625122692678L}).toString(), Integer.TYPE).invoke(null, num);
            if (!str.contains(new ObfuscatedString(new long[]{1987356222854487858L, -1188871346838237421L, 75035876184386174L}).toString()) && !str.contains(new ObfuscatedString(new long[]{-2733914751480154261L, -785214921414047867L}).toString())) {
                if (!str.contains(new ObfuscatedString(new long[]{6216232955149729378L, 6730896457087469006L}).toString())) {
                    return false;
                }
            }
            return true;
        } catch (ReflectiveOperationException | SecurityException unused) {
            return false;
        }
    }

    public final long zza() {
        return this.zzg;
    }

    public final long zzb() {
        return this.zze;
    }

    public final long zzc() {
        return this.zza;
    }

    public final long zzd() {
        return this.zzc;
    }

    public final long zze() {
        return this.zzh;
    }

    public final long zzf() {
        return this.zzf;
    }

    public final long zzg() {
        return this.zzb;
    }

    public final long zzh() {
        return this.zzd;
    }

    public final void zzi() {
        this.zzh = this.zzg;
        this.zzg = SystemClock.uptimeMillis();
    }

    public final void zzj() {
        this.zzb = this.zza;
        this.zza = SystemClock.uptimeMillis();
    }

    public final void zzk(Context context, View view) {
        this.zzd = this.zzc;
        this.zzc = SystemClock.uptimeMillis();
        long j = this.zze;
        if (j != -1) {
            this.zzf = j;
        }
        DisplayMetrics zzl = zzl(context);
        int i = zzl.widthPixels * zzl.heightPixels;
        if (view != null) {
            int min = Math.min(view.getHeight(), zzl.heightPixels) * Math.min(view.getWidth(), zzl.widthPixels);
            if (min + min >= i || (min == 0 && zzm(view))) {
                this.zze = this.zzc;
                return;
            }
        }
        this.zze = -1L;
    }
}
