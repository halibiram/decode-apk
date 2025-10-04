package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzfhw {
    @VisibleForTesting
    public zzfhw() {
        try {
            zzghg.zza();
        } catch (GeneralSecurityException e) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-3681271868882163579L, 1974487073486253174L, 7755684281718135299L, -6034909151250016677L, -6503386028400526405L}).toString().concat(e.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-9070828736227377974L, -2071219377224438654L, 1915845853241582597L, 1452946709248890929L}).toString());
        }
    }

    public static final String zza() {
        zzgyi zzt = zzgyl.zzt();
        try {
            zzgfv.zzb(zzggm.zzc(zzggf.zza(zzgoa.zzb().zza(new ObfuscatedString(new long[]{2956333118901380165L, -1696552266622922929L, -4348344704037153528L}).toString()))), zzgfu.zzb(zzt));
        } catch (IOException | GeneralSecurityException e) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{1846846798363203249L, -5121692102238946753L, 3985986114647002965L, 3020313936640244162L}).toString().concat(e.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-541173379127177759L, 4098929071711354180L, 9007032633154181354L, -3614829208200388747L}).toString());
        }
        String encodeToString = Base64.encodeToString(zzt.zzb().zzA(), 11);
        zzt.zzc();
        return encodeToString;
    }

    @Nullable
    public static final String zzb(byte[] bArr, byte[] bArr2, String str, zzdwa zzdwaVar) {
        zzggm zzc = zzc(str);
        if (zzc == null) {
            return null;
        }
        try {
            byte[] zza = ((zzgfs) zzc.zze(zzgpb.zza(), zzgfs.class)).zza(bArr, bArr2);
            zzdwaVar.zza().put(new ObfuscatedString(new long[]{-2208294605996146256L, -2425418746910616711L}).toString(), new ObfuscatedString(new long[]{-4682820905933816336L, 3661589360914873900L}).toString());
            return new String(zza, new ObfuscatedString(new long[]{4735230500848761699L, -9118343439877196002L}).toString());
        } catch (UnsupportedEncodingException | UnsupportedOperationException | GeneralSecurityException e) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{239669876826906714L, -978426247034276300L, -455101804539258722L, -4020071397299873410L}).toString().concat(e.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{4745347373530751840L, -1993670239372884788L, -3559188704631827790L, -1333361944138733121L}).toString());
            zzdwaVar.zza().put(new ObfuscatedString(new long[]{-2411013961251720780L, -4952829577054031937L}).toString(), e.toString());
            return null;
        }
    }

    @Nullable
    private static final zzggm zzc(String str) {
        try {
            return zzgfv.zza(zzgft.zzb(Base64.decode(str, 11)));
        } catch (IOException | GeneralSecurityException e) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1648724260722746261L, 1511040832966973441L, -4673168529172107587L, -4627398347878874244L, -3931024797472218249L}).toString().concat(e.toString()));
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{4677543310357361481L, -2590970835480853396L, -117875588988184435L, -5365143356423138064L}).toString());
            return null;
        }
    }
}
