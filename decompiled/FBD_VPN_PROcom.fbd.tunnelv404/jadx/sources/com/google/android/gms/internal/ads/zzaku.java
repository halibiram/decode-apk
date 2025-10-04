package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzaku implements zzaea {
    private final zzaea zza;
    private final zzakp zzb;

    @Nullable
    private zzakr zzh;
    private zzam zzi;
    private final zzaki zzc = new zzaki();
    private int zze = 0;
    private int zzf = 0;
    private byte[] zzg = zzfy.zzf;
    private final zzfp zzd = new zzfp();

    public zzaku(zzaea zzaeaVar, zzakp zzakpVar) {
        this.zza = zzaeaVar;
        this.zzb = zzakpVar;
    }

    private final void zzb(int i) {
        byte[] bArr;
        int length = this.zzg.length;
        int i2 = this.zzf;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.zze;
        int max = Math.max(i3 + i3, i + i3);
        byte[] bArr2 = this.zzg;
        if (max <= bArr2.length) {
            bArr = bArr2;
        } else {
            bArr = new byte[max];
        }
        System.arraycopy(bArr2, this.zze, bArr, 0, i3);
        this.zze = 0;
        this.zzf = i3;
        this.zzg = bArr;
    }

    public final /* synthetic */ void zza(long j, int i, zzakj zzakjVar) {
        boolean z;
        zzek.zzb(this.zzi);
        zzgaa zzgaaVar = zzakjVar.zza;
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(zzgaaVar.size());
        Iterator<E> it = zzgaaVar.iterator();
        while (it.hasNext()) {
            arrayList.add(((zzec) it.next()).zza());
        }
        long j2 = zzakjVar.zzc;
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(new ObfuscatedString(new long[]{5047110965592931246L, 8527430602111497888L}).toString(), arrayList);
        bundle.putLong(new ObfuscatedString(new long[]{-1694470466843904062L, -6761176438670950763L}).toString(), j2);
        Parcel obtain = Parcel.obtain();
        obtain.writeBundle(bundle);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        zzfp zzfpVar = this.zzd;
        int length = marshall.length;
        zzfpVar.zzI(marshall, length);
        this.zza.zzr(this.zzd, length);
        int i2 = i & Integer.MAX_VALUE;
        long j3 = zzakjVar.zzb;
        if (j3 == -9223372036854775807L) {
            if (this.zzi.zzq == Long.MAX_VALUE) {
                z = true;
            } else {
                z = false;
            }
            zzek.zzf(z);
        } else {
            long j4 = this.zzi.zzq;
            if (j4 == Long.MAX_VALUE) {
                j += j3;
            } else {
                j = j3 + j4;
            }
        }
        this.zza.zzt(j, i2, length, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final /* synthetic */ int zzf(zzu zzuVar, int i, boolean z) {
        return zzady.zza(this, zzuVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final int zzg(zzu zzuVar, int i, boolean z, int i2) {
        if (this.zzh == null) {
            return this.zza.zzg(zzuVar, i, z, 0);
        }
        zzb(i);
        int zza = zzuVar.zza(this.zzg, this.zzf, i);
        if (zza == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        this.zzf += zza;
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzl(zzam zzamVar) {
        boolean z;
        zzakr zzakrVar;
        String str = zzamVar.zzm;
        str.getClass();
        if (zzcb.zzb(str) == 3) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        if (!zzamVar.equals(this.zzi)) {
            this.zzi = zzamVar;
            if (this.zzb.zzc(zzamVar)) {
                zzakrVar = this.zzb.zzb(zzamVar);
            } else {
                zzakrVar = null;
            }
            this.zzh = zzakrVar;
        }
        if (this.zzh == null) {
            this.zza.zzl(zzamVar);
            return;
        }
        zzaea zzaeaVar = this.zza;
        zzak zzb = zzamVar.zzb();
        zzb.zzW(new ObfuscatedString(new long[]{8376622473508357605L, 6134570134553647774L, 1741847730401264757L, 3788048984868018808L, 5970418660862925513L}).toString());
        zzb.zzz(zzamVar.zzm);
        zzb.zzaa(Long.MAX_VALUE);
        zzb.zzD(this.zzb.zza(zzamVar));
        zzaeaVar.zzl(zzb.zzac());
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final /* synthetic */ void zzr(zzfp zzfpVar, int i) {
        zzady.zzb(this, zzfpVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzs(zzfp zzfpVar, int i, int i2) {
        if (this.zzh == null) {
            this.zza.zzs(zzfpVar, i, i2);
            return;
        }
        zzb(i);
        zzfpVar.zzG(this.zzg, this.zzf, i);
        this.zzf += i;
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzt(final long j, final int i, int i2, int i3, @Nullable zzadz zzadzVar) {
        boolean z;
        if (this.zzh == null) {
            this.zza.zzt(j, i, i2, i3, zzadzVar);
            return;
        }
        if (zzadzVar == null) {
            z = true;
        } else {
            z = false;
        }
        zzek.zze(z, new ObfuscatedString(new long[]{-5693427460580440249L, 7932239223309933611L, -6985089401130784527L, -2708100092037129159L, 1448296569160795486L, 6767234233443123994L}).toString());
        int i4 = (this.zzf - i3) - i2;
        this.zzh.zza(this.zzg, i4, i2, zzakq.zza(), new zzep() { // from class: com.google.android.gms.internal.ads.zzakt
            @Override // com.google.android.gms.internal.ads.zzep
            public final void zza(Object obj) {
                zzaku.this.zza(j, i, (zzakj) obj);
            }
        });
        int i5 = i4 + i2;
        this.zze = i5;
        if (i5 == this.zzf) {
            this.zze = 0;
            this.zzf = 0;
        }
    }
}
