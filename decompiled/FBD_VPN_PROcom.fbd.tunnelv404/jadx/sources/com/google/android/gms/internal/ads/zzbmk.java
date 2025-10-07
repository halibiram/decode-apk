package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbmk implements zzbng {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        WindowManager windowManager = (WindowManager) zzcjkVar.getContext().getSystemService(new ObfuscatedString(new long[]{7008629169809763462L, -7200472767613761177L}).toString());
        com.google.android.gms.ads.internal.zzt.zzp();
        DisplayMetrics zzs = com.google.android.gms.ads.internal.util.zzt.zzs(windowManager);
        int i = zzs.widthPixels;
        int i2 = zzs.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        ((View) zzcjkVar).getLocationInWindow(iArr);
        hashMap.put(new ObfuscatedString(new long[]{7302249042351015960L, -1580494248850860255L, 2516172822571890362L}).toString(), Integer.valueOf(iArr[0]));
        hashMap.put(new ObfuscatedString(new long[]{-681440746909756838L, -9168747588338044445L, -8192153453111925160L}).toString(), Integer.valueOf(iArr[1]));
        hashMap.put(new ObfuscatedString(new long[]{1748619664328186785L, -6156668431341341485L, -7541926832655622589L, 8948544885852690222L}).toString(), Integer.valueOf(i));
        hashMap.put(new ObfuscatedString(new long[]{2164870923319956743L, 8273156871766009024L, 1113511665604212863L, -8592186133996054968L}).toString(), Integer.valueOf(i2));
        zzcjkVar.zzd(new ObfuscatedString(new long[]{-3754033745716459750L, -1665691789788701425L, -565842121369566635L}).toString(), hashMap);
        zzcec.zzj(new ObfuscatedString(new long[]{1162710320832583562L, 8361590420237911055L, -3024614480337525563L, -196054252725249100L}).toString());
    }
}
