package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbru {
    private static final Charset zzc = Charset.forName(new ObfuscatedString(new long[]{-1810126125584631970L, 4661987479081478355L}).toString());
    public static final zzbrr zza = new zzbrt();
    public static final zzbrp zzb = new zzbrp() { // from class: com.google.android.gms.internal.ads.zzbrs
        @Override // com.google.android.gms.internal.ads.zzbrp
        public final Object zza(JSONObject jSONObject) {
            return zzbru.zza(jSONObject);
        }
    };

    public static /* synthetic */ InputStream zza(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(zzc));
    }
}
