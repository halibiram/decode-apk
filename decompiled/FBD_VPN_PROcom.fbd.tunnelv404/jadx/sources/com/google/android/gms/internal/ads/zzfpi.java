package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class zzfpi {
    private zzfql zza;
    private long zzb;
    private int zzc;

    public zzfpi() {
        zzb();
        this.zza = new zzfql(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WebView zza() {
        return (WebView) this.zza.get();
    }

    public final void zzb() {
        this.zzb = System.nanoTime();
        this.zzc = 1;
    }

    public void zzc() {
        this.zza.clear();
    }

    public final void zzd(String str, long j) {
        if (j >= this.zzb && this.zzc != 3) {
            this.zzc = 3;
            zzfpb.zza().zzg(zza(), str);
        }
    }

    public final void zze(@NonNull Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        zzfpo.zze(jSONObject, new ObfuscatedString(new long[]{299149007977099661L, -2539221511673311350L, 3225549272489600804L}).toString(), Long.valueOf(date.getTime()));
        zzfpb.zza().zzf(zza(), jSONObject);
    }

    public final void zzf(String str, long j) {
        if (j >= this.zzb) {
            this.zzc = 2;
            zzfpb.zza().zzg(zza(), str);
        }
    }

    public void zzg(zzfoh zzfohVar, zzfof zzfofVar) {
        zzh(zzfohVar, zzfofVar, null);
    }

    public final void zzh(zzfoh zzfohVar, zzfof zzfofVar, JSONObject jSONObject) {
        String zzh = zzfohVar.zzh();
        JSONObject jSONObject2 = new JSONObject();
        zzfpo.zze(jSONObject2, new ObfuscatedString(new long[]{3171622624096255651L, 8846775496808687876L, -1044499501346722283L}).toString(), new ObfuscatedString(new long[]{-3923493161176308595L, -7394772129879861908L}).toString());
        zzfpo.zze(jSONObject2, new ObfuscatedString(new long[]{5890974126167502949L, -4819478451683360912L, -5448077421503671160L}).toString(), zzfofVar.zzd());
        JSONObject jSONObject3 = new JSONObject();
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        zzfpo.zze(jSONObject3, new ObfuscatedString(new long[]{-615688170844301372L, -1071256782674579751L, 3691978803222810560L}).toString(), AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-6052092406103148654L, -6935966400875915163L}), AbstractC0749x8313616e.m3341xc20437a5(str), str2));
        zzfpo.zze(jSONObject3, new ObfuscatedString(new long[]{8745385452251523585L, 7443781699647946372L, 8534773119807396786L}).toString(), Integer.toString(Build.VERSION.SDK_INT));
        zzfpo.zze(jSONObject3, new ObfuscatedString(new long[]{-8427943868113562419L, 3729596790761764303L}).toString(), new ObfuscatedString(new long[]{5844202566157628026L, 2084766224725317662L}).toString());
        zzfpo.zze(jSONObject2, new ObfuscatedString(new long[]{1235526859470884639L, 7808026491166136768L, 8376731366574599602L}).toString(), jSONObject3);
        zzfpo.zze(jSONObject2, new ObfuscatedString(new long[]{7767464175139634913L, 5841854868861731625L, -9167070080800196980L}).toString(), zzfpn.zza().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(new ObfuscatedString(new long[]{1273274611573676602L, 2263960346996927874L}).toString());
        jSONArray.put(new ObfuscatedString(new long[]{7671821395866132096L, -9077754420301472163L}).toString());
        zzfpo.zze(jSONObject2, new ObfuscatedString(new long[]{-8585116676161818373L, 6835953482937023893L}).toString(), jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        zzfpo.zze(jSONObject4, new ObfuscatedString(new long[]{-8376124393686670451L, 7506624304084428157L, -1132348808238445960L}).toString(), zzfofVar.zze().zzb());
        zzfpo.zze(jSONObject4, new ObfuscatedString(new long[]{5995288146845193969L, 358101789261078929L, 5067362481308862802L}).toString(), zzfofVar.zze().zzc());
        zzfpo.zze(jSONObject2, new ObfuscatedString(new long[]{-8327812620352928835L, -1268304399913093946L, 1682555333154129386L}).toString(), jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        zzfpo.zze(jSONObject5, new ObfuscatedString(new long[]{4496715189545172473L, -6844316175616557942L, 4359471583130608525L}).toString(), new ObfuscatedString(new long[]{-8242054965740827844L, -3123470567941125025L, -3370792740320322060L, -7368206068740871134L}).toString());
        zzfpo.zze(jSONObject5, new ObfuscatedString(new long[]{-7450347545359872124L, -4947018197275554470L}).toString(), zzfoz.zzb().zza().getApplicationContext().getPackageName());
        zzfpo.zze(jSONObject2, new ObfuscatedString(new long[]{-3089018896788044560L, -1610679253068387427L}).toString(), jSONObject5);
        if (zzfofVar.zzf() != null) {
            zzfpo.zze(jSONObject2, new ObfuscatedString(new long[]{-6220709969617048855L, -353917821692626545L, 2329628445833563810L}).toString(), zzfofVar.zzf());
        }
        zzfpo.zze(jSONObject2, new ObfuscatedString(new long[]{1539171063137781281L, 6479896830252374586L, -3168613953841919172L, 5893352137563935673L}).toString(), zzfofVar.zzg());
        JSONObject jSONObject6 = new JSONObject();
        Iterator it = zzfofVar.zzh().iterator();
        if (!it.hasNext()) {
            zzfpb.zza().zzh(zza(), zzh, jSONObject2, jSONObject6, jSONObject);
        } else {
            throw null;
        }
    }

    public final void zzi(float f) {
        zzfpb.zza().zze(zza(), f);
    }

    public final void zzj(WebView webView) {
        this.zza = new zzfql(webView);
    }

    public void zzk() {
    }

    public final boolean zzl() {
        if (this.zza.get() != 0) {
            return true;
        }
        return false;
    }
}
