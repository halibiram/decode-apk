package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbfv {
    private final List zza = new ArrayList();
    private final List zzb = new ArrayList();
    private final List zzc = new ArrayList();

    public final List zza() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.zzb.iterator();
        while (it.hasNext()) {
            String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza((zzbfu) it.next());
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(zzbgg.zza());
        return arrayList;
    }

    public final List zzb() {
        List zza = zza();
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza((zzbfu) it.next());
            if (!TextUtils.isEmpty(str)) {
                zza.add(str);
            }
        }
        zza.addAll(zzbgg.zzb());
        return zza;
    }

    public final void zzc(zzbfu zzbfuVar) {
        this.zzb.add(zzbfuVar);
    }

    public final void zzd(zzbfu zzbfuVar) {
        this.zza.add(zzbfuVar);
    }

    public final void zze(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzbfu zzbfuVar : this.zza) {
            if (zzbfuVar.zze() == 1) {
                zzbfuVar.zzd(editor, zzbfuVar.zza(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString(new ObfuscatedString(new long[]{-7873876231306311213L, -6932221523893151509L, -423951980177093127L, 6989132558380504532L}).toString(), jSONObject.toString());
        } else {
            zzcec.zzg(new ObfuscatedString(new long[]{7634447048446803187L, -6327530102161489816L, -1358728282749036728L, -6520375973022809924L}).toString());
        }
    }
}
