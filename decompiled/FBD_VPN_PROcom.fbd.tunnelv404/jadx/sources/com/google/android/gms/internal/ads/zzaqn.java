package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes2.dex */
final class zzaqn implements zzapz {
    private final Map zza = new HashMap();

    @Nullable
    private final zzapm zzb;

    @Nullable
    private final BlockingQueue zzc;
    private final zzapr zzd;

    public zzaqn(@NonNull zzapm zzapmVar, @NonNull BlockingQueue blockingQueue, zzapr zzaprVar) {
        this.zzd = zzaprVar;
        this.zzb = zzapmVar;
        this.zzc = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final synchronized void zza(zzaqa zzaqaVar) {
        try {
            Map map = this.zza;
            String zzj = zzaqaVar.zzj();
            List list = (List) map.remove(zzj);
            if (list != null && !list.isEmpty()) {
                if (zzaqm.zzb) {
                    zzaqm.zzd(new ObfuscatedString(new long[]{-2056366843314596951L, -7447182272057780465L, 2923623187944638453L, 7514535441701305351L, 4612320722013815646L, 1566114258335976208L, -111903547810236362L, -802462557369783782L}).toString(), Integer.valueOf(list.size()), zzj);
                }
                zzaqa zzaqaVar2 = (zzaqa) list.remove(0);
                this.zza.put(zzj, list);
                zzaqaVar2.zzu(this);
                try {
                    this.zzc.put(zzaqaVar2);
                } catch (InterruptedException e) {
                    zzaqm.zzb(new ObfuscatedString(new long[]{-682376004832147756L, 8276999265440474987L, -1159744684607956659L, 1071194316525233970L, 324306350085999796L, -1800397606888154909L}).toString(), e.toString());
                    Thread.currentThread().interrupt();
                    this.zzb.zzb();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapz
    public final void zzb(zzaqa zzaqaVar, zzaqg zzaqgVar) {
        List list;
        zzapj zzapjVar = zzaqgVar.zzb;
        if (zzapjVar != null && !zzapjVar.zza(System.currentTimeMillis())) {
            String zzj = zzaqaVar.zzj();
            synchronized (this) {
                list = (List) this.zza.remove(zzj);
            }
            if (list != null) {
                if (zzaqm.zzb) {
                    zzaqm.zzd(new ObfuscatedString(new long[]{1765445975812401198L, 7906685304443934860L, -273356125946979433L, -3999878609922375186L, 7628962180158507830L, -9061228728302206206L, 8427979283535482010L}).toString(), Integer.valueOf(list.size()), zzj);
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.zzd.zzb((zzaqa) it.next(), zzaqgVar, null);
                }
                return;
            }
            return;
        }
        zza(zzaqaVar);
    }

    public final synchronized boolean zzc(zzaqa zzaqaVar) {
        try {
            Map map = this.zza;
            String zzj = zzaqaVar.zzj();
            if (map.containsKey(zzj)) {
                List list = (List) this.zza.get(zzj);
                if (list == null) {
                    list = new ArrayList();
                }
                zzaqaVar.zzm(new ObfuscatedString(new long[]{6257103579656754279L, -3799394373221256742L, 5360690959581838816L, 1896910652157986325L}).toString());
                list.add(zzaqaVar);
                this.zza.put(zzj, list);
                if (zzaqm.zzb) {
                    zzaqm.zza(new ObfuscatedString(new long[]{-5953392183367799390L, -7183913309514334491L, -2060602574657068181L, -7927373022162322080L, -226489484965264194L, -1375173940493252488L, -5933589698782191725L, 9207469355880280020L}).toString(), zzj);
                }
                return true;
            }
            this.zza.put(zzj, null);
            zzaqaVar.zzu(this);
            if (zzaqm.zzb) {
                zzaqm.zza(new ObfuscatedString(new long[]{8070173677337467526L, 4275827622092271694L, -4984676814142660495L, 7956369266164282784L, -2180785559127245718L, -934342510338783430L}).toString(), zzj);
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }
}
