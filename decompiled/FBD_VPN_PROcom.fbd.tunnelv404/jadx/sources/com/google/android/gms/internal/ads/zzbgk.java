package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes2.dex */
public final class zzbgk {

    @VisibleForTesting
    String zzd;

    @VisibleForTesting
    Context zze;

    @VisibleForTesting
    String zzf;
    private AtomicBoolean zzh;
    private File zzi;

    @VisibleForTesting
    final BlockingQueue zza = new ArrayBlockingQueue(100);

    @VisibleForTesting
    final LinkedHashMap zzb = new LinkedHashMap();

    @VisibleForTesting
    final Map zzc = new HashMap();
    private final HashSet zzg = new HashSet(Arrays.asList(new ObfuscatedString(new long[]{4817197074049537449L, 8212308401431082687L}).toString(), new ObfuscatedString(new long[]{-1836950318890516930L, -8377750641052178535L, 2072244573614986591L, 1320564418198232160L}).toString(), new ObfuscatedString(new long[]{-3447049467063106185L, -299396278133423447L, 1129219930118425254L, 8099540831327638972L}).toString(), new ObfuscatedString(new long[]{1898818307397066983L, 8453035426863214331L, -74499430293782664L, 6000042296879247872L}).toString()));

    public static /* synthetic */ void zzc(zzbgk zzbgkVar) {
        while (true) {
            try {
                zzbgu zzbguVar = (zzbgu) zzbgkVar.zza.take();
                zzbgt zza = zzbguVar.zza();
                if (!TextUtils.isEmpty(zza.zzb())) {
                    zzbgkVar.zzg(zzbgkVar.zzb(zzbgkVar.zzb, zzbguVar.zzb()), zza);
                }
            } catch (InterruptedException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-2893548461180597977L, 7134490838850475986L, 384362882164126319L, -5329353013684542014L, 7146250228100335829L}).toString(), e);
                return;
            }
        }
    }

    private final void zzg(Map map, zzbgt zzbgtVar) {
        FileOutputStream fileOutputStream;
        Uri.Builder buildUpon = Uri.parse(this.zzd).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        String uri = buildUpon.build().toString();
        if (zzbgtVar != null) {
            StringBuilder sb = new StringBuilder(uri);
            if (!TextUtils.isEmpty(zzbgtVar.zzb())) {
                sb.append(new ObfuscatedString(new long[]{655376091295190596L, -6335323282724654049L}).toString());
                sb.append(zzbgtVar.zzb());
            }
            if (!TextUtils.isEmpty(zzbgtVar.zza())) {
                sb.append(new ObfuscatedString(new long[]{3162436790445533805L, -8886516439438564967L}).toString());
                sb.append(zzbgtVar.zza());
            }
            uri = sb.toString();
        }
        if (this.zzh.get()) {
            File file = this.zzi;
            if (file != null) {
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        fileOutputStream = new FileOutputStream(file, true);
                    } catch (IOException e) {
                        e = e;
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    fileOutputStream.write(uri.getBytes());
                    fileOutputStream.write(10);
                    try {
                        fileOutputStream.close();
                        return;
                    } catch (IOException e2) {
                        zzcec.zzk(new ObfuscatedString(new long[]{-221039850310311089L, -541890003909045644L, -7224210933581391975L, 1498794280035655994L, -2185612600518316221L, 1138696448475976748L, -4890280513786126829L, 6065314467662487776L}).toString(), e2);
                        return;
                    }
                } catch (IOException e3) {
                    e = e3;
                    fileOutputStream2 = fileOutputStream;
                    zzcec.zzk(new ObfuscatedString(new long[]{-3799099127288048959L, -6481700303612005026L, -36627697771591213L, 4615419942591281808L, -7842832322808302782L, 6013484895052893290L, 354242098641664520L, 6762659799546983207L}).toString(), e);
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            return;
                        } catch (IOException e4) {
                            zzcec.zzk(new ObfuscatedString(new long[]{3350358707267863086L, 2216761499945098344L, 3333476091265293354L, 4944335087710293208L, -4168350101277564557L, 5442291044257332883L, 1506543301346144842L, -7721746433874621842L}).toString(), e4);
                            return;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e5) {
                            zzcec.zzk(new ObfuscatedString(new long[]{-4723745874967335620L, 8055201670800662506L, 6592924571578128526L, 3313139910149971101L, 4783480594650416555L, -8461377977628334706L, -861244752355795008L, -2734671342131464539L}).toString(), e5);
                        }
                    }
                    throw th;
                }
            }
            zzcec.zzj(new ObfuscatedString(new long[]{-481170004257279390L, -2434455666463420930L, -975565190857595658L, 6452182002466925186L, 1290800856317499152L, 6333303059413704202L, -6772452100350930330L, 7979111276588714568L, -1556011677282208146L}).toString());
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        com.google.android.gms.ads.internal.util.zzt.zzK(this.zze, this.zzf, uri);
    }

    public final zzbgq zza(String str) {
        zzbgq zzbgqVar = (zzbgq) this.zzc.get(str);
        if (zzbgqVar != null) {
            return zzbgqVar;
        }
        return zzbgq.zza;
    }

    public final Map zzb(Map map, @Nullable Map map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : map2.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            linkedHashMap.put(str, zza(str).zza((String) linkedHashMap.get(str), str2));
        }
        return linkedHashMap;
    }

    public final void zzd(Context context, String str, String str2, Map map) {
        File externalStorageDirectory;
        this.zze = context;
        this.zzf = str;
        this.zzd = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.zzh = atomicBoolean;
        atomicBoolean.set(((Boolean) zzbhv.zzc.zze()).booleanValue());
        if (this.zzh.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzi = new File(externalStorageDirectory, new ObfuscatedString(new long[]{-3387806711219482429L, 3640152509279720798L, -1972020475905240357L}).toString());
        }
        for (Map.Entry entry : map.entrySet()) {
            this.zzb.put((String) entry.getKey(), (String) entry.getValue());
        }
        zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbgj
            @Override // java.lang.Runnable
            public final void run() {
                zzbgk.zzc(zzbgk.this);
            }
        });
        Map map2 = this.zzc;
        String obfuscatedString = new ObfuscatedString(new long[]{8762029323004264129L, -2211627507370250300L}).toString();
        zzbgq zzbgqVar = zzbgq.zzb;
        map2.put(obfuscatedString, zzbgqVar);
        this.zzc.put(new ObfuscatedString(new long[]{-8830617627640682090L, 3085507039492732719L, 4598526312445195560L}).toString(), zzbgqVar);
        this.zzc.put(new ObfuscatedString(new long[]{6574773880419121423L, -5867765437612795520L}).toString(), zzbgq.zzc);
    }

    public final void zze(String str) {
        if (this.zzg.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(new ObfuscatedString(new long[]{6141297844243966431L, 1465748521958086620L, 802878450002032502L}).toString(), this.zzf);
        linkedHashMap.put(new ObfuscatedString(new long[]{2174872669176288362L, 2161877728013769785L}).toString(), str);
        zzg(zzb(this.zzb, linkedHashMap), null);
    }

    public final boolean zzf(zzbgu zzbguVar) {
        return this.zza.offer(zzbguVar);
    }
}
