package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.telephony.TelephonyManager;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbbp;
import com.google.android.gms.internal.ads.zzcjk;
import com.google.android.gms.internal.ads.zzcjs;
import com.google.android.gms.internal.ads.zzehs;
import com.panda912.muddy.ObfuscatedString;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes2.dex */
public class zzab {
    public /* synthetic */ zzab(zzaa zzaaVar) {
    }

    @Nullable
    public CookieManager zza(Context context) {
        throw null;
    }

    public WebResourceResponse zzb(String str, String str2, int i, String str3, Map map, InputStream inputStream) {
        throw null;
    }

    public zzcjs zzc(zzcjk zzcjkVar, zzbbp zzbbpVar, boolean z, @Nullable zzehs zzehsVar) {
        throw null;
    }

    public boolean zzd(Activity activity, Configuration configuration) {
        return false;
    }

    @Nullable
    public Intent zzf(Activity activity) {
        Intent intent = new Intent();
        intent.setAction(new ObfuscatedString(new long[]{4189735617010455553L, -1103731856103508134L, 3731865989260425348L, 1657512226773572084L, -7623724702449072562L, -4174574358177457461L, 4324719183219717322L}).toString());
        intent.putExtra(new ObfuscatedString(new long[]{1036668280516046513L, -8362015044604176551L, 6764361881945262300L}).toString(), activity.getPackageName());
        intent.putExtra(new ObfuscatedString(new long[]{-7268948279655613962L, -1987268132474623924L}).toString(), activity.getApplicationInfo().uid);
        return intent;
    }

    public void zzg(Context context, String str, String str2) {
    }

    public boolean zzh(Context context, String str) {
        return false;
    }

    public int zzi(Context context, TelephonyManager telephonyManager) {
        return 1001;
    }

    public int zzj(AudioManager audioManager) {
        return 0;
    }

    public void zzk(Activity activity) {
    }

    public int zzm(Context context) {
        return ((TelephonyManager) context.getSystemService(new ObfuscatedString(new long[]{3706757629095795343L, 307758704445582601L}).toString())).getNetworkType();
    }
}
