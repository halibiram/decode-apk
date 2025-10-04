package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzfof {
    private final zzfon zza;
    private final WebView zzb;
    private final List zzc = new ArrayList();
    private final Map zzd = new HashMap();
    private final String zze = new ObfuscatedString(new long[]{5012239018292444016L}).toString();

    @Nullable
    private final String zzf;
    private final zzfog zzg;

    private zzfof(zzfon zzfonVar, WebView webView, String str, List list, @Nullable String str2, String str3, zzfog zzfogVar) {
        this.zza = zzfonVar;
        this.zzb = webView;
        this.zzg = zzfogVar;
        this.zzf = str2;
    }

    public static zzfof zzb(zzfon zzfonVar, WebView webView, @Nullable String str, String str2) {
        return new zzfof(zzfonVar, webView, null, null, str, new ObfuscatedString(new long[]{7079178765150714103L}).toString(), zzfog.zza);
    }

    public static zzfof zzc(zzfon zzfonVar, WebView webView, @Nullable String str, String str2) {
        return new zzfof(zzfonVar, webView, null, null, str, new ObfuscatedString(new long[]{2947282630176613023L}).toString(), zzfog.zzc);
    }

    public final WebView zza() {
        return this.zzb;
    }

    public final zzfog zzd() {
        return this.zzg;
    }

    public final zzfon zze() {
        return this.zza;
    }

    @Nullable
    public final String zzf() {
        return this.zzf;
    }

    public final String zzg() {
        return this.zze;
    }

    public final List zzh() {
        return DesugarCollections.unmodifiableList(this.zzc);
    }

    public final Map zzi() {
        return DesugarCollections.unmodifiableMap(this.zzd);
    }
}
