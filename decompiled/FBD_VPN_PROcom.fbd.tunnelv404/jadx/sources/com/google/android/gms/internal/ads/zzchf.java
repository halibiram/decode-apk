package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class zzchf implements zzgw {
    private final Context zza;
    private final zzgw zzb;
    private final String zzc;
    private final int zzd;
    private InputStream zzf;
    private boolean zzg;
    private Uri zzh;
    private volatile zzbbb zzi;
    private zzhb zzm;
    private boolean zzj = false;
    private boolean zzk = false;
    private final AtomicLong zzl = new AtomicLong(-1);
    private final boolean zze = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue();

    public zzchf(Context context, zzgw zzgwVar, String str, int i, zzhy zzhyVar, zzche zzcheVar) {
        this.zza = context;
        this.zzb = zzgwVar;
        this.zzc = str;
        this.zzd = i;
    }

    private final boolean zzg() {
        if (!this.zze) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzem)).booleanValue() && !this.zzj) {
            return true;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzen)).booleanValue() || this.zzk) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        if (this.zzg) {
            InputStream inputStream = this.zzf;
            if (inputStream != null) {
                return inputStream.read(bArr, i, i2);
            }
            return this.zzb.zza(bArr, i, i2);
        }
        throw new IOException(new ObfuscatedString(new long[]{-3690407486880238016L, -4538515580792763094L, 5727314617712983341L, -148263815383622208L, -2911525332113383596L, -5801290324298962202L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        Long l;
        if (!this.zzg) {
            this.zzg = true;
            Uri uri = zzhbVar.zza;
            this.zzh = uri;
            this.zzm = zzhbVar;
            this.zzi = zzbbb.zza(uri);
            zzbay zzbayVar = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzej)).booleanValue()) {
                if (this.zzi != null) {
                    this.zzi.zzh = zzhbVar.zzf;
                    this.zzi.zzi = zzfxt.zzc(this.zzc);
                    this.zzi.zzj = this.zzd;
                    if (this.zzi.zzg) {
                        l = (Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzel);
                    } else {
                        l = (Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzek);
                    }
                    long longValue = l.longValue();
                    com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                    com.google.android.gms.ads.internal.zzt.zzd();
                    Future zza = zzbbm.zza(this.zza, this.zzi);
                    try {
                        try {
                            zzbbn zzbbnVar = (zzbbn) zza.get(longValue, TimeUnit.MILLISECONDS);
                            zzbbnVar.zzd();
                            this.zzj = zzbbnVar.zzf();
                            this.zzk = zzbbnVar.zze();
                            zzbbnVar.zza();
                            if (!zzg()) {
                                this.zzf = zzbbnVar.zzc();
                            }
                        } catch (InterruptedException unused) {
                            zza.cancel(false);
                            Thread.currentThread().interrupt();
                        } catch (ExecutionException | TimeoutException unused2) {
                            zza.cancel(false);
                        }
                    } catch (Throwable unused3) {
                    }
                    com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                    throw null;
                }
            } else {
                if (this.zzi != null) {
                    this.zzi.zzh = zzhbVar.zzf;
                    this.zzi.zzi = zzfxt.zzc(this.zzc);
                    this.zzi.zzj = this.zzd;
                    zzbayVar = com.google.android.gms.ads.internal.zzt.zzc().zzb(this.zzi);
                }
                if (zzbayVar != null && zzbayVar.zze()) {
                    this.zzj = zzbayVar.zzg();
                    this.zzk = zzbayVar.zzf();
                    if (!zzg()) {
                        this.zzf = zzbayVar.zzc();
                        return -1L;
                    }
                }
            }
            if (this.zzi != null) {
                this.zzm = new zzhb(Uri.parse(this.zzi.zza), null, zzhbVar.zze, zzhbVar.zzf, zzhbVar.zzg, null, zzhbVar.zzi);
            }
            return this.zzb.zzb(this.zzm);
        }
        throw new IOException(new ObfuscatedString(new long[]{-1020360961608710278L, -1265455292162277859L, 1217960316571983866L, -5027466853484014818L, -2223184269540444573L, -8239412158327969663L, -6464820075782462346L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final Uri zzc() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        if (this.zzg) {
            this.zzg = false;
            this.zzh = null;
            InputStream inputStream = this.zzf;
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
                this.zzf = null;
                return;
            } else {
                this.zzb.zzd();
                return;
            }
        }
        throw new IOException(new ObfuscatedString(new long[]{-6935037478383800962L, -1586791725644272599L, -868224753869148598L, 7757938371265425618L, -2014314181027427384L, 2860187121925727464L, 2999577915904829257L, -3719867225035626249L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final /* synthetic */ Map zze() {
        return Collections.emptyMap();
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzf(zzhy zzhyVar) {
    }
}
