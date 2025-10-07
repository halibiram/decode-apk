package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzebl {
    private final zzclg zza;
    private final Context zzb;
    private final zzcei zzc;
    private final zzfhh zzd;
    private final Executor zze;
    private final String zzf;
    private final zzfmz zzg;
    private final zzfhw zzh;
    private final zzdwa zzi;

    public zzebl(zzclg zzclgVar, Context context, zzcei zzceiVar, zzfhh zzfhhVar, Executor executor, String str, zzfmz zzfmzVar, zzdwa zzdwaVar) {
        this.zza = zzclgVar;
        this.zzb = context;
        this.zzc = zzceiVar;
        this.zzd = zzfhhVar;
        this.zze = executor;
        this.zzf = str;
        this.zzg = zzfmzVar;
        this.zzh = zzclgVar.zzw();
        this.zzi = zzdwaVar;
    }

    private final ListenableFuture zzc(final String str, final String str2) {
        zzfmo zza = zzfmn.zza(this.zzb, 11);
        zza.zzh();
        zzbrx zza2 = com.google.android.gms.ads.internal.zzt.zzf().zza(this.zzb, this.zzc, this.zza.zzz());
        String obfuscatedString = new ObfuscatedString(new long[]{-1053439615987996387L, -2970208429427795232L, 6313403216281425761L, 5558299534613474706L, -8242505973603002053L}).toString();
        zzbrr zzbrrVar = zzbru.zza;
        final zzbrn zza3 = zza2.zza(obfuscatedString, zzbrrVar, zzbrrVar);
        ListenableFuture zzn = zzgen.zzn(zzgen.zzn(zzgen.zzn(zzgen.zzh(new ObfuscatedString(new long[]{-5051068625193684838L}).toString()), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzebi
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                String str3 = str;
                String str4 = str2;
                try {
                    jSONObject3.put(new ObfuscatedString(new long[]{2682258651780018074L, -9007233763746903815L}).toString(), new JSONObject());
                    jSONObject3.put(new ObfuscatedString(new long[]{-1556874732742952704L, 6780669696686293720L}).toString(), str3);
                    jSONObject2.put(new ObfuscatedString(new long[]{9031124118746520862L, 438081247968686152L}).toString(), new ObfuscatedString(new long[]{3718594082723513292L}).toString());
                    jSONObject2.put(new ObfuscatedString(new long[]{-7853696569911988257L, 2192550831713240117L}).toString(), new JSONObject(str4));
                    jSONObject.put(new ObfuscatedString(new long[]{8726487203542791858L, 5044017647901831059L}).toString(), jSONObject2);
                    jSONObject.put(new ObfuscatedString(new long[]{82845569252772709L, -1081528673903839986L}).toString(), jSONObject3);
                    jSONObject.put(new ObfuscatedString(new long[]{8551523580871911631L, -6139620844127254087L}).toString(), new JSONObject());
                    return zzgen.zzh(jSONObject);
                } catch (JSONException e) {
                    throw new JSONException(new ObfuscatedString(new long[]{8290715033626817710L, -3816460255777785292L, -4820741525613961346L, 6790676882665808920L}).toString().concat(String.valueOf(e.getCause())));
                }
            }
        }, this.zze), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzebj
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzbrn.this.zzb((JSONObject) obj);
            }
        }, this.zze), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzebk
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzebl.this.zzb((JSONObject) obj);
            }
        }, this.zze);
        zzfmy.zza(zzn, this.zzg, zza);
        return zzn;
    }

    private final String zzd(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray(new ObfuscatedString(new long[]{7848026930953698225L, -5174446730022345662L}).toString());
            if (jSONArray != null && new ObfuscatedString(new long[]{5066763072632906979L, -6920176463671203152L}).toString().equals(jSONArray.getString(0))) {
                jSONObject.put(new ObfuscatedString(new long[]{4983295343607733313L, -5679999867477366018L}).toString(), new JSONArray().put(this.zzf));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            zzcec.zzj(new ObfuscatedString(new long[]{3188208133410284862L, -466121510582913743L, -2047034764199596928L, -1888682392329671152L, -5767571205909203447L, -1331259504532828426L, -7982596107659807664L}).toString().concat(e.toString()));
            return str;
        }
    }

    private static final String zze(String str) {
        try {
            return new JSONObject(str).optString(new ObfuscatedString(new long[]{-4273573925160634181L, 3020079121135193920L, -4615523597060903876L}).toString(), new ObfuscatedString(new long[]{5870060381319283932L}).toString());
        } catch (JSONException unused) {
            return new ObfuscatedString(new long[]{-2136907964072915587L}).toString();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ListenableFuture zza() {
        Boolean bool;
        String str;
        String str2 = this.zzd.zzd.zzx;
        if (!TextUtils.isEmpty(str2) && ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgX)).booleanValue()) {
            String zze = zze(str2);
            zzbfu zzbfuVar = zzbgc.zzhi;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue() && zze.isEmpty()) {
                int lastIndexOf = str2.lastIndexOf(new ObfuscatedString(new long[]{-8148510202887598213L, -1236041940713704057L, 8625864468250796963L}).toString());
                zze = lastIndexOf != -1 ? str2.substring(lastIndexOf + 12) : new ObfuscatedString(new long[]{5559200274839785977L}).toString();
            }
            if (TextUtils.isEmpty(zze)) {
                return zzgen.zzg(new zzeml(15, new ObfuscatedString(new long[]{-3044962016699858848L, -772299448700173337L, 6532840363171977195L, -6700026512492264298L}).toString()));
            }
            String zzb = this.zza.zzn().zzb(zze, this.zzi);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                zzdwa zzdwaVar = this.zzi;
                if (!TextUtils.isEmpty(zzb)) {
                    if (new JSONObject(zzb).optString(new ObfuscatedString(new long[]{-4957776653086392583L, -855065961718326124L}).toString()).equals(new ObfuscatedString(new long[]{6631949600355324990L, -8479458883328799439L}).toString())) {
                        bool = Boolean.TRUE;
                        if (bool.booleanValue()) {
                            int lastIndexOf2 = str2.lastIndexOf(new ObfuscatedString(new long[]{8128958107983549201L, -1402186094662955433L}).toString());
                            String str3 = null;
                            if (lastIndexOf2 != -1) {
                                str = str2.substring(0, lastIndexOf2);
                            } else {
                                str = null;
                            }
                            if (!TextUtils.isEmpty(str)) {
                                try {
                                    byte[] decode = Base64.decode(str, 11);
                                    byte[] bytes = zze.getBytes(new ObfuscatedString(new long[]{-740614651072334538L, -8516898782563056015L}).toString());
                                    try {
                                        str3 = new JSONObject(zzb).getString(new ObfuscatedString(new long[]{-7690250089257562972L, 6998088059068339232L}).toString());
                                    } catch (JSONException e) {
                                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1973696241023440803L, 5813196396477058060L, -8714076353157374321L, -9052280487877253947L, -4610729960942411798L, -7682215890486311903L}).toString().concat(e.toString()));
                                        com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-2377051621402244119L, -5614183355773176663L, -5746084779710525448L, 5190368906255759653L, -2351253333071997658L, 1697883287988054346L}).toString());
                                    }
                                    str2 = zzfhw.zzb(decode, bytes, str3, zzdwaVar);
                                } catch (UnsupportedEncodingException e2) {
                                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{1405427974332201677L, 6373723476357540803L, 8294019944547721626L, 7136077755976339633L, -8832948248333006804L, -3008875828753139590L}).toString().concat(e2.toString()));
                                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, new ObfuscatedString(new long[]{-4460049429580437191L, -8811186051919934729L, -271244924988175602L, 3158645990861790029L, -4859552274832208214L, -193815983490537695L, -865736186068638219L}).toString());
                                }
                            }
                        }
                    }
                    bool = Boolean.FALSE;
                    if (bool.booleanValue()) {
                    }
                }
            }
            if (!TextUtils.isEmpty(zzb)) {
                return zzc(str2, zzd(zzb));
            }
        }
        com.google.android.gms.ads.internal.client.zzc zzcVar = this.zzd.zzd.zzs;
        if (zzcVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgV)).booleanValue()) {
                String str4 = zzcVar.zza;
                String str5 = zzcVar.zzb;
                String zze2 = zze(str4);
                String zze3 = zze(str5);
                if (!TextUtils.isEmpty(zze3) && zze2.equals(zze3)) {
                    this.zza.zzn().zzf(zze2);
                    this.zzi.zza().put(new ObfuscatedString(new long[]{2340231326642614048L, 6510760363813086469L}).toString(), zze2);
                } else {
                    this.zzi.zza().put(new ObfuscatedString(new long[]{-8160058328265588654L, 452522400915546243L}).toString(), new ObfuscatedString(new long[]{5660581528278662658L, 4504866645008212915L}).toString());
                }
            }
            return zzc(zzcVar.zza, zzd(zzcVar.zzb));
        }
        return zzgen.zzg(new zzeml(14, new ObfuscatedString(new long[]{6364210952415289954L, 1882343876698779922L, -6776832376873932600L, 2002798381605807964L}).toString()));
    }

    public final /* synthetic */ ListenableFuture zzb(JSONObject jSONObject) {
        return zzgen.zzh(new zzfgy(new zzfgv(this.zzd), zzfgx.zza(new StringReader(jSONObject.toString()))));
    }
}
