package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzaeg {
    public static int zza(int i) {
        int i2 = 0;
        while (i > 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    @Nullable
    public static zzby zzb(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            int i2 = zzfy.zza;
            String[] split = str.split(new ObfuscatedString(new long[]{5108583229963645849L, -5382399139361276528L}).toString(), 2);
            if (split.length != 2) {
                zzff.zzf(new ObfuscatedString(new long[]{6946521897380803542L, 8758635512917709568L, 5718202068629410297L}).toString(), new ObfuscatedString(new long[]{-4510055769643521193L, 2482629606901684476L, -9059174827230476413L, 2852271027918705116L, -7882845928632868853L}).toString().concat(str));
            } else if (split[0].equals(new ObfuscatedString(new long[]{7551457687075672580L, 168330542312912977L, -9111430392719889501L, 5359843654770928304L}).toString())) {
                try {
                    arrayList.add(zzafw.zzb(new zzfp(Base64.decode(split[1], 0))));
                } catch (RuntimeException e) {
                    zzff.zzg(new ObfuscatedString(new long[]{-4551206087749943185L, -9162990513572656792L, -1678131309166995858L}).toString(), new ObfuscatedString(new long[]{-6679873033623523462L, -6138137918338165396L, 5717178450833131662L, 5838970566382402534L, -2744367349137042487L}).toString(), e);
                }
            } else {
                arrayList.add(new zzaho(split[0], split[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzby(arrayList);
    }

    public static zzaed zzc(zzfp zzfpVar, boolean z, boolean z2) {
        if (z) {
            zzd(3, zzfpVar, false);
        }
        String zzA = zzfpVar.zzA((int) zzfpVar.zzs(), zzfwq.zzc);
        int length = zzA.length();
        long zzs = zzfpVar.zzs();
        String[] strArr = new String[(int) zzs];
        int i = length + 15;
        for (int i2 = 0; i2 < zzs; i2++) {
            String zzA2 = zzfpVar.zzA((int) zzfpVar.zzs(), zzfwq.zzc);
            strArr[i2] = zzA2;
            i = i + 4 + zzA2.length();
        }
        if (z2 && (zzfpVar.zzm() & 1) == 0) {
            throw zzcc.zza(new ObfuscatedString(new long[]{2692886596942481685L, -8927026434012544204L, -6805532703835263159L, -8358696197473629896L, -5468025575010592872L}).toString(), null);
        }
        return new zzaed(zzA, strArr, i + 1);
    }

    public static boolean zzd(int i, zzfp zzfpVar, boolean z) {
        if (zzfpVar.zzb() < 7) {
            if (z) {
                return false;
            }
            throw zzcc.zza(new ObfuscatedString(new long[]{7913163496354919814L, -730027467282466991L, -4637971297658404604L, -3661348390174648077L}).toString() + zzfpVar.zzb(), null);
        }
        if (zzfpVar.zzm() != i) {
            if (z) {
                return false;
            }
            throw zzcc.zza(new ObfuscatedString(new long[]{3040191825695875110L, -5991209980659270691L, -6753206399809562859L, 1779446360227987348L}).toString().concat(String.valueOf(Integer.toHexString(i))), null);
        }
        if (zzfpVar.zzm() == 118 && zzfpVar.zzm() == 111 && zzfpVar.zzm() == 114 && zzfpVar.zzm() == 98 && zzfpVar.zzm() == 105 && zzfpVar.zzm() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{5195064804988754350L, 3444057258198528328L, 6692233068544698052L, -4615033117646921032L, 4164072994487136279L}).toString(), null);
    }
}
