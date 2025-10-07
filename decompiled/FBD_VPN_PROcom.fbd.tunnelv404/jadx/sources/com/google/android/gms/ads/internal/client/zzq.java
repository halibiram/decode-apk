package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzcdv;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

@SafeParcelable.Class(creator = "AdSizeParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes2.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();

    @SafeParcelable.Field(id = 2)
    public final String zza;

    @SafeParcelable.Field(id = 3)
    public final int zzb;

    @SafeParcelable.Field(id = 4)
    public final int zzc;

    @SafeParcelable.Field(id = 5)
    public final boolean zzd;

    @SafeParcelable.Field(id = 6)
    public final int zze;

    @SafeParcelable.Field(id = 7)
    public final int zzf;

    @SafeParcelable.Field(id = 8)
    public final zzq[] zzg;

    @SafeParcelable.Field(id = 9)
    public final boolean zzh;

    @SafeParcelable.Field(id = 10)
    public final boolean zzi;

    @SafeParcelable.Field(id = 11)
    public boolean zzj;

    @SafeParcelable.Field(id = 12)
    public boolean zzk;

    @SafeParcelable.Field(id = 13)
    public boolean zzl;

    @SafeParcelable.Field(id = 14)
    public boolean zzm;

    @SafeParcelable.Field(id = 15)
    public boolean zzn;

    @SafeParcelable.Field(id = 16)
    public boolean zzo;

    public zzq() {
        this(new ObfuscatedString(new long[]{-5504874829528444534L, 8012906174724465231L, -6261966103225335950L}).toString(), 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public static int zza(DisplayMetrics displayMetrics) {
        return (int) (zzf(displayMetrics) * displayMetrics.density);
    }

    public static zzq zzb() {
        return new zzq(new ObfuscatedString(new long[]{-5614036496688696003L, 970371343820852046L, -3265143748280975985L}).toString(), 0, 0, false, 0, 0, null, false, false, false, false, true, false, false, false);
    }

    public static zzq zzc() {
        return new zzq(new ObfuscatedString(new long[]{8340083731378798417L, -3620340923189782981L, -2150306307390322299L}).toString(), 0, 0, false, 0, 0, null, true, false, false, false, false, false, false, false);
    }

    public static zzq zzd() {
        return new zzq(new ObfuscatedString(new long[]{-3961336356328015448L, -1354209119014927839L, 5470039638716912457L}).toString(), 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public static zzq zze() {
        return new zzq(new ObfuscatedString(new long[]{-5298933082699016373L, -1518917222760271432L}).toString(), 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
    }

    private static int zzf(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        if (i <= 720) {
            return 50;
        }
        return 90;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, str, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.writeInt(parcel, 6, this.zze);
        SafeParcelWriter.writeInt(parcel, 7, this.zzf);
        SafeParcelWriter.writeTypedArray(parcel, 8, this.zzg, i, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzh);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzi);
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzj);
        SafeParcelWriter.writeBoolean(parcel, 12, this.zzk);
        SafeParcelWriter.writeBoolean(parcel, 13, this.zzl);
        SafeParcelWriter.writeBoolean(parcel, 14, this.zzm);
        SafeParcelWriter.writeBoolean(parcel, 15, this.zzn);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzo);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzq(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzq(Context context, AdSize[] adSizeArr) {
        int height;
        int i;
        int i2;
        String m3332x9d12c1f4;
        int i3;
        double d;
        AdSize adSize = adSizeArr[0];
        this.zzd = false;
        boolean isFluid = adSize.isFluid();
        this.zzi = isFluid;
        this.zzm = com.google.android.gms.ads.zzb.zzf(adSize);
        this.zzn = com.google.android.gms.ads.zzb.zzg(adSize);
        boolean zzh = com.google.android.gms.ads.zzb.zzh(adSize);
        this.zzo = zzh;
        if (isFluid) {
            AdSize adSize2 = AdSize.BANNER;
            this.zze = adSize2.getWidth();
            height = adSize2.getHeight();
            this.zzb = height;
        } else if (this.zzn) {
            this.zze = adSize.getWidth();
            height = com.google.android.gms.ads.zzb.zza(adSize);
            this.zzb = height;
        } else if (zzh) {
            this.zze = adSize.getWidth();
            height = com.google.android.gms.ads.zzb.zzb(adSize);
            this.zzb = height;
        } else {
            this.zze = adSize.getWidth();
            height = adSize.getHeight();
            this.zzb = height;
        }
        boolean z = this.zze == -1;
        boolean z2 = height == -2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (z) {
            zzay.zzb();
            if (context.getResources().getConfiguration().orientation == 2) {
                if (((int) (r11.heightPixels / context.getResources().getDisplayMetrics().density)) < 600) {
                    zzay.zzb();
                    DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
                    WindowManager windowManager = (WindowManager) context.getSystemService(new ObfuscatedString(new long[]{-2070319754608364836L, 2253228010094393663L}).toString());
                    if (windowManager != null) {
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        defaultDisplay.getRealMetrics(displayMetrics2);
                        int i4 = displayMetrics2.heightPixels;
                        int i5 = displayMetrics2.widthPixels;
                        defaultDisplay.getMetrics(displayMetrics2);
                        int i6 = displayMetrics2.heightPixels;
                        int i7 = displayMetrics2.widthPixels;
                        if (i6 == i4 && i7 == i5) {
                            int i8 = displayMetrics.widthPixels;
                            zzay.zzb();
                            int identifier = context.getResources().getIdentifier(new ObfuscatedString(new long[]{9182055725201451626L, 3154376304259200242L, -1818481294122478926L, 2143304555436554845L}).toString(), new ObfuscatedString(new long[]{6319598973764995339L, -7497918069852718700L}).toString(), new ObfuscatedString(new long[]{-8427390146875545462L, -2093462488630857049L}).toString());
                            i3 = i8 - (identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0);
                            this.zzf = i3;
                            d = i3 / displayMetrics.density;
                            i = (int) d;
                            if (d - i >= 0.01d) {
                                i++;
                            }
                        }
                    }
                }
            }
            i3 = displayMetrics.widthPixels;
            this.zzf = i3;
            d = i3 / displayMetrics.density;
            i = (int) d;
            if (d - i >= 0.01d) {
            }
        } else {
            i = this.zze;
            zzay.zzb();
            this.zzf = zzcdv.zzp(displayMetrics, this.zze);
        }
        if (z2) {
            i2 = zzf(displayMetrics);
        } else {
            i2 = this.zzb;
        }
        zzay.zzb();
        this.zzc = zzcdv.zzp(displayMetrics, i2);
        if (!z && !z2) {
            if (this.zzn || this.zzo) {
                int i9 = this.zze;
                int i10 = this.zzb;
                StringBuilder m3340x952a0a9e = AbstractC0749x8313616e.m3340x952a0a9e(i9);
                m3340x952a0a9e.append(new ObfuscatedString(new long[]{4135650139602622884L, -386420138929672521L}).toString());
                m3340x952a0a9e.append(i10);
                m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2639072520693201772L, -310300584472412228L}), m3340x952a0a9e);
            } else if (isFluid) {
                m3332x9d12c1f4 = new ObfuscatedString(new long[]{1635650952289688241L, 3407216584043112197L, -9144042649938837875L}).toString();
            } else {
                this.zza = adSize.toString();
            }
            this.zza = m3332x9d12c1f4;
        } else {
            StringBuilder m3340x952a0a9e2 = AbstractC0749x8313616e.m3340x952a0a9e(i);
            m3340x952a0a9e2.append(new ObfuscatedString(new long[]{-9060001431113305498L, 1168087974373148711L}).toString());
            m3340x952a0a9e2.append(i2);
            this.zza = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1172493733900618594L, 4993176502345436521L}), m3340x952a0a9e2);
        }
        int length = adSizeArr.length;
        if (length > 1) {
            this.zzg = new zzq[length];
            for (int i11 = 0; i11 < adSizeArr.length; i11++) {
                this.zzg[i11] = new zzq(context, adSizeArr[i11]);
            }
        } else {
            this.zzg = null;
        }
        this.zzh = false;
        this.zzj = false;
    }

    @SafeParcelable.Constructor
    public zzq(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) int i3, @SafeParcelable.Param(id = 7) int i4, @SafeParcelable.Param(id = 8) zzq[] zzqVarArr, @SafeParcelable.Param(id = 9) boolean z2, @SafeParcelable.Param(id = 10) boolean z3, @SafeParcelable.Param(id = 11) boolean z4, @SafeParcelable.Param(id = 12) boolean z5, @SafeParcelable.Param(id = 13) boolean z6, @SafeParcelable.Param(id = 14) boolean z7, @SafeParcelable.Param(id = 15) boolean z8, @SafeParcelable.Param(id = 16) boolean z9) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = z;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = zzqVarArr;
        this.zzh = z2;
        this.zzi = z3;
        this.zzj = z4;
        this.zzk = z5;
        this.zzl = z6;
        this.zzm = z7;
        this.zzn = z8;
        this.zzo = z9;
    }
}
