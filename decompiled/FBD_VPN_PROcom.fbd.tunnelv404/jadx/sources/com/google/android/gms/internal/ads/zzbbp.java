package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzbbp {
    private final zzbbv zza;
    private final zzbde zzb;
    private final boolean zzc;

    private zzbbp() {
        this.zzb = zzbdf.zzd();
        this.zzc = false;
        this.zza = new zzbbv();
    }

    public static zzbbp zza() {
        return new zzbbp();
    }

    private final synchronized String zzd(int i) {
        return String.format(new ObfuscatedString(new long[]{-1000615339752976193L, -4645495198646137092L, 7227070994957667818L, 4017875112601921382L, -5499593444501995466L, -7736912047155191529L}).toString(), this.zzb.zzk(), Long.valueOf(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime()), Integer.valueOf(i - 1), Base64.encodeToString(((zzbdf) this.zzb.zzal()).zzax(), 3));
    }

    private final synchronized void zze(int i) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, new ObfuscatedString(new long[]{6646485366234269210L, 5383338598946588703L, 356263830397040179L, -7114132096830570331L}).toString()), true);
            try {
                try {
                    fileOutputStream.write(zzd(i).getBytes());
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{262915491249620825L, -4890709553298423115L, 6024558844968529886L, 5846448732945529835L, 2024420347287588375L, -3458941256998962242L}).toString());
                    }
                } catch (IOException unused2) {
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-991929217115903607L, -2297270200079628727L, 2566364148764771056L, 7706526053684139655L, -5764204515852065460L, -6191645115487589809L}).toString());
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{2002524379021033220L, 4051412915948619708L, 8029016885989542303L, 75597170660159873L, 5566251036723204498L, -7520977807807620022L}).toString());
                    }
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{1446839370831248552L, 1976300338842237314L, 829929662931932456L, -1315404839135658867L, 2051366273851616334L, -83275670695656039L}).toString());
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3510517058644110151L, 4682773041179109822L, -7729230026674789250L, -716086753035034342L, 7326930434739050605L}).toString());
        }
    }

    private final synchronized void zzf(int i) {
        zzbde zzbdeVar = this.zzb;
        zzbdeVar.zzd();
        zzbdeVar.zzc(com.google.android.gms.ads.internal.util.zzt.zzd());
        zzbbu zzbbuVar = new zzbbu(this.zza, ((zzbdf) this.zzb.zzal()).zzax(), null);
        int i2 = i - 1;
        zzbbuVar.zza(i2);
        zzbbuVar.zzc();
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-2355743313497440026L, 4892994928616739842L, -5822682727105099462L, 2855037223293078208L, -6416084066895182146L}).toString().concat(String.valueOf(Integer.toString(i2, 10))));
    }

    public final synchronized void zzb(zzbbo zzbboVar) {
        if (this.zzc) {
            try {
                zzbboVar.zza(this.zzb);
            } catch (NullPointerException e) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{1370002730515269694L, -4506791374116985038L, 6069071302913997872L, -2305541941550579512L, 8929477372345408488L}).toString());
            }
        }
    }

    public final synchronized void zzc(int i) {
        if (!this.zzc) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeP)).booleanValue()) {
            zze(i);
        } else {
            zzf(i);
        }
    }

    public zzbbp(zzbbv zzbbvVar) {
        this.zzb = zzbdf.zzd();
        this.zza = zzbbvVar;
        this.zzc = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeO)).booleanValue();
    }
}
