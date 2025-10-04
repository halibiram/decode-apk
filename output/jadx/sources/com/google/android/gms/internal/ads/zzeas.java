package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzeas implements zzhhd {
    private final zzhhu zza;

    public zzeas(zzhhu zzhhuVar) {
        this.zza = zzhhuVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        if (android.text.TextUtils.isEmpty(r2) == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x006b, code lost:
    
        if (android.text.TextUtils.isEmpty(r2) != false) goto L14;
     */
    @Override // com.google.android.gms.internal.ads.zzhhu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* bridge */ /* synthetic */ Object zzb() {
        String valueOf;
        zzfhh zza = ((zzdao) this.zza).zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhm)).booleanValue()) {
            String str = zza.zzd.zzx;
            if (!TextUtils.isEmpty(str)) {
                try {
                    valueOf = new JSONObject(str).getString(new ObfuscatedString(new long[]{9133058602940986080L, -7955822858940925263L, 3587279571251337764L}).toString());
                } catch (JSONException unused) {
                }
            }
            if (zza.zzd.zzs != null) {
                try {
                    valueOf = new JSONObject(zza.zzd.zzs.zza).getString(new ObfuscatedString(new long[]{-6191894343446857385L, 4301182283308141974L, -2353574855081030581L}).toString());
                } catch (JSONException unused2) {
                }
            }
        }
        valueOf = String.valueOf(com.google.android.gms.ads.internal.client.zzay.zze().nextInt() & Integer.MAX_VALUE);
        zzhhl.zzb(valueOf);
        return valueOf;
    }
}
