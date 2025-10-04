package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1015xc05dd705;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzawx extends zzaxx {
    private static final zzaxy zzi = new zzaxy();
    private final Context zzj;

    public zzawx(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, Context context, zzarz zzarzVar) {
        super(zzawjVar, new ObfuscatedString(new long[]{4575338616774431325L, 6580271535958620857L, 1016798504074143894L, -4508096242135851549L, 4568390566351603817L, 3190436058106659217L, -53220603241212850L, 274685281558684909L, -6199834306400013612L}).toString(), new ObfuscatedString(new long[]{6501963192031163575L, -2694159863769697997L, -7047350092903930355L, 2994619771991960647L, 2599112053395111248L, 8449063059645038624L, 8786693005583507104L}).toString(), zzasgVar, i, 27);
        this.zzj = context;
    }

    private final String zzc() {
        try {
            if (this.zzb.zzl() != null) {
                this.zzb.zzl().get();
            }
            zzatd zzc = this.zzb.zzc();
            if (zzc != null && zzc.zzaj()) {
                return zzc.zzh();
            }
            return null;
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        int i;
        boolean z;
        String str;
        zzatu zzatuVar;
        AtomicReference zza = zzi.zza(this.zzj.getPackageName());
        synchronized (zza) {
            try {
                zzatu zzatuVar2 = (zzatu) zza.get();
                if (zzatuVar2 != null) {
                    if (!zzawm.zzd(zzatuVar2.zza)) {
                        if (!zzatuVar2.zza.equals(new ObfuscatedString(new long[]{-630438448143628998L, 7068164456546044535L}).toString())) {
                            if (zzatuVar2.zza.equals(new ObfuscatedString(new long[]{220940120421951296L, -1422448488354168609L, -5828293884331005059L, 1033243909480608535L, -3329571131143551692L, 1293170886500316802L, 5529103350242741148L, 3809417656506324838L, 9101526172480738308L}).toString())) {
                            }
                            zzatuVar = (zzatu) zza.get();
                        }
                    }
                }
                if (!zzawm.zzd(null)) {
                    i = 5;
                } else {
                    zzawm.zzd(null);
                    i = 3;
                }
                if (i == 3) {
                    z = true;
                } else {
                    z = false;
                }
                Boolean valueOf = Boolean.valueOf(z);
                Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcm);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcl)).booleanValue()) {
                    str = zzb();
                } else {
                    str = null;
                }
                if (bool.booleanValue() && this.zzb.zzp() && zzawm.zzd(str)) {
                    str = zzc();
                }
                zzatu zzatuVar3 = new zzatu((String) this.zzf.invoke(null, this.zzj, valueOf, str));
                if (zzawm.zzd(zzatuVar3.zza) || zzatuVar3.zza.equals(new ObfuscatedString(new long[]{7906491477723241077L, 3836653306733861942L}).toString())) {
                    int i2 = i - 1;
                    if (i2 != 3) {
                        if (i2 == 4) {
                            throw null;
                        }
                    } else {
                        String zzc = zzc();
                        if (!zzawm.zzd(zzc)) {
                            zzatuVar3.zza = zzc;
                        }
                    }
                }
                zza.set(zzatuVar3);
                zzatuVar = (zzatu) zza.get();
            } finally {
            }
        }
        synchronized (this.zze) {
            if (zzatuVar != null) {
                try {
                    this.zze.zzx(zzatuVar.zza);
                    this.zze.zzX(zzatuVar.zzb);
                    this.zze.zzZ(zzatuVar.zzc);
                    this.zze.zzi(zzatuVar.zzd);
                    this.zze.zzw(zzatuVar.zze);
                } finally {
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [com.google.android.gms.internal.ads.zzaxz] */
    public final String zzb() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance(new ObfuscatedString(new long[]{-164606319476997662L, 3604176396899306902L}).toString());
            byte[] zzf = zzawm.zzf((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcn));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzf)));
            if (!Build.TYPE.equals(new ObfuscatedString(new long[]{-5278929756276400551L, 3313318042997543692L}).toString())) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzawm.zzf((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzco)))));
            }
            Context context = this.zzj;
            String packageName = context.getPackageName();
            this.zzb.zzk();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals(new ObfuscatedString(new long[]{3265111781630607060L, 6406640814085311040L}).toString())) {
                return null;
            }
            final zzgfg zze = zzgfg.zze();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzaxz
                @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                public final void onChecksumsReady(List list) {
                    int type;
                    byte[] value;
                    zzgfg zzgfgVar = zzgfg.this;
                    if (list == null) {
                        zzgfgVar.zzc(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            ApkChecksum m3596x1378447b = AbstractC1015xc05dd705.m3596x1378447b(list.get(i));
                            type = m3596x1378447b.getType();
                            if (type == 8) {
                                value = m3596x1378447b.getValue();
                                zzgfgVar.zzc(zzawm.zzb(value));
                                return;
                            }
                        }
                        zzgfgVar.zzc(null);
                    } catch (Throwable unused) {
                        zzgfgVar.zzc(null);
                    }
                }
            });
            return (String) zze.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }
}
