package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdrh extends zzbkf {
    private final Context zza;
    private final zzdna zzb;
    private zzdoa zzc;
    private zzdmv zzd;

    public zzdrh(Context context, zzdna zzdnaVar, zzdoa zzdoaVar, zzdmv zzdmvVar) {
        this.zza = context;
        this.zzb = zzdnaVar;
        this.zzc = zzdoaVar;
        this.zzd = zzdmvVar;
    }

    private final zzbja zzd(String str) {
        return new zzdrg(this, new ObfuscatedString(new long[]{4439098087961914338L, -1236225547891793373L, -4292750463401983346L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final com.google.android.gms.ads.internal.client.zzdq zze() {
        return this.zzb.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final zzbjj zzf() {
        try {
            return this.zzd.zzc().zza();
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-4028139060002729586L, -8288876923851127460L, -4613663802278230295L, 4579256655111348379L, -1426793602456929552L, 9101382955593611290L, -650235687515838673L, -5782882679217343656L}).toString());
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final zzbjm zzg(String str) {
        return (zzbjm) this.zzb.zzh().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final IObjectWrapper zzh() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final String zzi() {
        return this.zzb.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final String zzj(String str) {
        return (String) this.zzb.zzi().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final List zzk() {
        try {
            SimpleArrayMap zzh = this.zzb.zzh();
            SimpleArrayMap zzi = this.zzb.zzi();
            String[] strArr = new String[zzh.getSize() + zzi.getSize()];
            int i = 0;
            for (int i2 = 0; i2 < zzh.getSize(); i2++) {
                strArr[i] = (String) zzh.keyAt(i2);
                i++;
            }
            for (int i3 = 0; i3 < zzi.getSize(); i3++) {
                strArr[i] = (String) zzi.keyAt(i3);
                i++;
            }
            return Arrays.asList(strArr);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{9000192058130585423L, -1555841494142406626L, 1899735971237995716L, 3034432895694955930L, 1062184768605763145L, -7152906951103211107L, 6416507114245476647L, 7955653842881384131L, 4810961425259728461L}).toString());
            return new ArrayList();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzl() {
        zzdmv zzdmvVar = this.zzd;
        if (zzdmvVar != null) {
            zzdmvVar.zzb();
        }
        this.zzd = null;
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzm() {
        try {
            String zzC = this.zzb.zzC();
            if (Objects.equals(zzC, new ObfuscatedString(new long[]{7988384376772994989L, 2871685911682691964L}).toString())) {
                zzcec.zzj(new ObfuscatedString(new long[]{-4401404803658249834L, -7777035898883295186L, 5842273380549005707L, 6166136531521837024L, 4685746690923714508L, -148597414295071892L, -7445456955368611162L, -8075998095665605741L}).toString());
                return;
            }
            if (TextUtils.isEmpty(zzC)) {
                zzcec.zzj(new ObfuscatedString(new long[]{5204660502520306673L, 5915001533881028033L, -9065772334741188348L, -8813099392683090383L, 9099617468809623742L, 4903805866183678788L, -6782017443826347150L, -6178984715222624703L, 5097998876077988929L, -7122449846670360172L}).toString());
                return;
            }
            zzdmv zzdmvVar = this.zzd;
            if (zzdmvVar != null) {
                zzdmvVar.zzf(zzC, false);
            }
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{4559893346319876535L, 5879440701116274004L, 5916031719752340483L, 4608835647781009059L, 2320828549986355586L, 538437761713261870L, -999539370179549903L, 5106208114636381337L, -5570535229141201806L, -273855932624923360L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzn(String str) {
        zzdmv zzdmvVar = this.zzd;
        if (zzdmvVar != null) {
            zzdmvVar.zzE(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzo() {
        zzdmv zzdmvVar = this.zzd;
        if (zzdmvVar != null) {
            zzdmvVar.zzH();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzp(IObjectWrapper iObjectWrapper) {
        zzdmv zzdmvVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof View) && this.zzb.zzu() != null && (zzdmvVar = this.zzd) != null) {
            zzdmvVar.zzI((View) unwrap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final boolean zzq() {
        zzdmv zzdmvVar = this.zzd;
        if ((zzdmvVar != null && !zzdmvVar.zzV()) || this.zzb.zzr() == null || this.zzb.zzs() != null) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final boolean zzr(IObjectWrapper iObjectWrapper) {
        zzdoa zzdoaVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof ViewGroup) && (zzdoaVar = this.zzc) != null && zzdoaVar.zzf((ViewGroup) unwrap)) {
            this.zzb.zzq().zzap(zzd(new ObfuscatedString(new long[]{-5305902959831889145L, 1650350308877055775L, 5880904105413658752L}).toString()));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final boolean zzs(IObjectWrapper iObjectWrapper) {
        zzdoa zzdoaVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof ViewGroup) && (zzdoaVar = this.zzc) != null && zzdoaVar.zzg((ViewGroup) unwrap)) {
            this.zzb.zzs().zzap(zzd(new ObfuscatedString(new long[]{-230718779430155743L, 581445795828301211L, -7669399222767511716L}).toString()));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final boolean zzt() {
        zzfod zzu = this.zzb.zzu();
        if (zzu != null) {
            com.google.android.gms.ads.internal.zzt.zzA().zzi(zzu);
            if (this.zzb.zzr() != null) {
                this.zzb.zzr().zzd(new ObfuscatedString(new long[]{-1362408898652576127L, -3600338668275718859L, 1049086756657099231L}).toString(), new ArrayMap());
                return true;
            }
            return true;
        }
        zzcec.zzj(new ObfuscatedString(new long[]{1814699990343589356L, 8911312723097232672L, 4381294815592184441L, -649423412487207580L, 7513873732765775278L, -1648695863506422895L, -5459180871877715840L}).toString());
        return false;
    }
}
