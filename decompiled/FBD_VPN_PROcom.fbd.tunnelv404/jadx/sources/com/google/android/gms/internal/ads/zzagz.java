package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzagz extends zzagr {
    public static final Parcelable.Creator<zzagz> CREATOR = new zzagy();

    @Nullable
    public final String zza;

    @Deprecated
    public final String zzb;
    public final zzgaa zzc;

    /* JADX WARN: Multi-variable type inference failed */
    public zzagz(String str, @Nullable String str2, List list) {
        super(str);
        zzek.zzd(!list.isEmpty());
        this.zza = str2;
        zzgaa zzj = zzgaa.zzj(list);
        this.zzc = zzj;
        this.zzb = (String) zzj.get(0);
    }

    private static List zzb(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagz.class == obj.getClass()) {
            zzagz zzagzVar = (zzagz) obj;
            if (zzfy.zzF(this.zzf, zzagzVar.zzf) && zzfy.zzF(this.zza, zzagzVar.zza) && this.zzc.equals(zzagzVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.zzf.hashCode() + 527;
        String str = this.zza;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return this.zzc.hashCode() + (((hashCode * 31) + i) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        StringBuilder sb = new StringBuilder();
        sb.append(this.zzf);
        sb.append(new ObfuscatedString(new long[]{6033220759938657345L, -136361614727367968L, -4218176647075173786L}).toString());
        sb.append(this.zza);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{1831860456229254173L, 3815245007682934123L, -4332935833408263558L}), sb, valueOf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeString(this.zza);
        parcel.writeStringArray((String[]) this.zzc.toArray(new String[0]));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzagr, com.google.android.gms.internal.ads.zzbx
    public final void zza(zzbt zzbtVar) {
        char c;
        Integer num;
        String str = this.zzf;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals(new ObfuscatedString(new long[]{7385134819784437289L, 1171201180013894964L}).toString())) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 82878:
                if (str.equals(new ObfuscatedString(new long[]{-8753414365284625893L, -5278195885642569446L}).toString())) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 82897:
                if (str.equals(new ObfuscatedString(new long[]{-359430638697822258L, -2122534202335301490L}).toString())) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 83253:
                if (str.equals(new ObfuscatedString(new long[]{8232907009814359016L, 373989265856360152L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 83254:
                if (str.equals(new ObfuscatedString(new long[]{-8201888030625291102L, -4867877753876337322L}).toString())) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 83255:
                if (str.equals(new ObfuscatedString(new long[]{3576575702612381223L, -5707079193083521983L}).toString())) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 83341:
                if (str.equals(new ObfuscatedString(new long[]{-5629809075754596533L, -553874493282837095L}).toString())) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 83378:
                if (str.equals(new ObfuscatedString(new long[]{3463674203181892754L, -7412479232978671243L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 83536:
                if (str.equals(new ObfuscatedString(new long[]{6896945209039228975L, 6244286950614304961L}).toString())) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 83552:
                if (str.equals(new ObfuscatedString(new long[]{3747382200309014593L, -7205745926739518420L}).toString())) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 2567331:
                if (str.equals(new ObfuscatedString(new long[]{-881789857484837550L, 4293846175531827492L}).toString())) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 2569357:
                if (str.equals(new ObfuscatedString(new long[]{5058264448074685699L, -7425356757528565844L}).toString())) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 2569891:
                if (str.equals(new ObfuscatedString(new long[]{-4321525192989744606L, 7014046413011808395L}).toString())) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 2570401:
                if (str.equals(new ObfuscatedString(new long[]{2730277390651516805L, -2563911473247141498L}).toString())) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 2570410:
                if (str.equals(new ObfuscatedString(new long[]{6706977589278402024L, -2595384421032834109L}).toString())) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 2571565:
                if (str.equals(new ObfuscatedString(new long[]{8286750111269386083L, -7413028265703470L}).toString())) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 2575251:
                if (str.equals(new ObfuscatedString(new long[]{-6178540365289255875L, -7698549355348006715L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 2581512:
                if (str.equals(new ObfuscatedString(new long[]{-4766305191179776429L, 5427953535930773536L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 2581513:
                if (str.equals(new ObfuscatedString(new long[]{1283849944925092244L, -230942029163343477L}).toString())) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 2581514:
                if (str.equals(new ObfuscatedString(new long[]{-1887553839718390035L, -444985390092032614L}).toString())) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 2583398:
                if (str.equals(new ObfuscatedString(new long[]{-6319268116287395881L, 3052828758351783707L}).toString())) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 2590194:
                if (str.equals(new ObfuscatedString(new long[]{-653679268222007230L, 9162885796022449316L}).toString())) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
                zzbtVar.zzq((CharSequence) this.zzc.get(0));
                return;
            case 2:
            case 3:
                zzbtVar.zze((CharSequence) this.zzc.get(0));
                return;
            case 4:
            case 5:
                zzbtVar.zzc((CharSequence) this.zzc.get(0));
                return;
            case 6:
            case 7:
                zzbtVar.zzd((CharSequence) this.zzc.get(0));
                return;
            case '\b':
            case '\t':
                String str2 = (String) this.zzc.get(0);
                int i = zzfy.zza;
                String[] split = str2.split(new ObfuscatedString(new long[]{2995821428203439753L, 517072843004954726L}).toString(), -1);
                try {
                    int parseInt = Integer.parseInt(split[0]);
                    if (split.length > 1) {
                        num = Integer.valueOf(Integer.parseInt(split[1]));
                    } else {
                        num = null;
                    }
                    zzbtVar.zzs(Integer.valueOf(parseInt));
                    zzbtVar.zzr(num);
                    return;
                } catch (NumberFormatException unused) {
                    return;
                }
            case '\n':
            case 11:
                try {
                    zzbtVar.zzl(Integer.valueOf(Integer.parseInt((String) this.zzc.get(0))));
                    return;
                } catch (NumberFormatException unused2) {
                    return;
                }
            case '\f':
            case '\r':
                try {
                    String str3 = (String) this.zzc.get(0);
                    int parseInt2 = Integer.parseInt(str3.substring(2, 4));
                    int parseInt3 = Integer.parseInt(str3.substring(0, 2));
                    zzbtVar.zzk(Integer.valueOf(parseInt2));
                    zzbtVar.zzj(Integer.valueOf(parseInt3));
                    return;
                } catch (NumberFormatException | StringIndexOutOfBoundsException unused3) {
                    return;
                }
            case 14:
                List zzb = zzb((String) this.zzc.get(0));
                int size = zzb.size();
                if (size != 1) {
                    if (size != 2) {
                        if (size != 3) {
                            return;
                        } else {
                            zzbtVar.zzj((Integer) zzb.get(2));
                        }
                    }
                    zzbtVar.zzk((Integer) zzb.get(1));
                }
                zzbtVar.zzl((Integer) zzb.get(0));
                return;
            case 15:
                List zzb2 = zzb((String) this.zzc.get(0));
                int size2 = zzb2.size();
                if (size2 != 1) {
                    if (size2 != 2) {
                        if (size2 == 3) {
                            zzbtVar.zzm((Integer) zzb2.get(2));
                        } else {
                            return;
                        }
                    }
                    zzbtVar.zzn((Integer) zzb2.get(1));
                }
                zzbtVar.zzo((Integer) zzb2.get(0));
                return;
            case 16:
            case 17:
                zzbtVar.zzf((CharSequence) this.zzc.get(0));
                return;
            case 18:
            case 19:
                zzbtVar.zzg((CharSequence) this.zzc.get(0));
                return;
            case 20:
            case 21:
                zzbtVar.zzt((CharSequence) this.zzc.get(0));
                return;
            default:
                return;
        }
    }
}
