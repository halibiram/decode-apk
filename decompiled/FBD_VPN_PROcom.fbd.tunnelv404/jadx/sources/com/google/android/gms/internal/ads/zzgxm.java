package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;

/* loaded from: classes2.dex */
public final class zzgxm implements zzgse {
    private final ThreadLocal zza;
    private final String zzb;
    private final Key zzc;
    private final int zzd;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzgxm(String str, Key key) {
        char c;
        int i;
        zzgxl zzgxlVar = new zzgxl(this);
        this.zza = zzgxlVar;
        if (zzgmv.zza(2)) {
            this.zzb = str;
            this.zzc = key;
            if (key.getEncoded().length >= 16) {
                switch (str.hashCode()) {
                    case -1823053428:
                        if (str.equals(new ObfuscatedString(new long[]{-6725781947009857257L, -3820081917202861308L}).toString())) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case 392315023:
                        if (str.equals(new ObfuscatedString(new long[]{-6138358979110267489L, 2600686200545695461L, -6621601324285723602L}).toString())) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 392315118:
                        if (str.equals(new ObfuscatedString(new long[]{-4948231632457123737L, 491616492361181278L, 3216063343760685211L}).toString())) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 392316170:
                        if (str.equals(new ObfuscatedString(new long[]{7057349519703052040L, 360196074750232287L, -1102778844455443780L}).toString())) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 392317873:
                        if (str.equals(new ObfuscatedString(new long[]{7889109147564874633L, 161900545310123963L, 9047919171657888130L}).toString())) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c != 0) {
                    if (c != 1) {
                        if (c != 2) {
                            if (c != 3) {
                                if (c == 4) {
                                    i = 64;
                                } else {
                                    throw new NoSuchAlgorithmException(new ObfuscatedString(new long[]{6054928516073139445L, -2101031389720782561L, -7851521510781573528L, 2109214935534811073L}).toString().concat(str));
                                }
                            } else {
                                i = 48;
                            }
                        } else {
                            i = 32;
                        }
                    } else {
                        i = 28;
                    }
                } else {
                    i = 20;
                }
                this.zzd = i;
                zzgxlVar.get();
                return;
            }
            throw new InvalidAlgorithmParameterException(new ObfuscatedString(new long[]{-2910812300112557344L, 887281067237824751L, 2829924861399927120L, -8324629833471245241L, 4853823017573550653L, 1503216910699437942L, 3140712656631425495L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{4547826720318038580L, 647231741081669840L, 5084536081990963297L, -538318115829920664L, 7892818230223551251L, 4466680131355361661L, 8455347764337013793L, 6039591794748147189L, 1459407058974668585L, -8256844613754604684L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgse
    public final byte[] zza(byte[] bArr, int i) {
        if (i <= this.zzd) {
            ((Mac) this.zza.get()).update(bArr);
            return Arrays.copyOf(((Mac) this.zza.get()).doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException(new ObfuscatedString(new long[]{3923714274064270881L, -9151982332031296753L, -4161161120388849210L}).toString());
    }
}
