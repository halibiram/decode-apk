package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzbh;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzby;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.ads.internal.client.zzcf;
import com.google.android.gms.ads.internal.client.zzci;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.client.zzdn;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdu;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.ads.internal.client.zzw;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzavj;
import com.google.android.gms.internal.ads.zzbam;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbho;
import com.google.android.gms.internal.ads.zzbxc;
import com.google.android.gms.internal.ads.zzbxf;
import com.google.android.gms.internal.ads.zzcaa;
import com.google.android.gms.internal.ads.zzcdv;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzcep;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Map;
import java.util.concurrent.Future;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzs extends zzbt {
    private final zzcei zza;
    private final com.google.android.gms.ads.internal.client.zzq zzb;
    private final Future zzc = zzcep.zza.zzb(new zzo(this));
    private final Context zzd;
    private final zzr zze;

    @Nullable
    private WebView zzf;

    @Nullable
    private zzbh zzg;

    @Nullable
    private zzavi zzh;
    private AsyncTask zzi;

    public zzs(Context context, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, zzcei zzceiVar) {
        this.zzd = context;
        this.zza = zzceiVar;
        this.zzb = zzqVar;
        this.zzf = new WebView(context);
        this.zze = new zzr(context, str);
        zzV(0);
        this.zzf.setVerticalScrollBarEnabled(false);
        this.zzf.getSettings().setJavaScriptEnabled(true);
        this.zzf.setWebViewClient(new zzm(this));
        this.zzf.setOnTouchListener(new zzn(this));
    }

    public static /* bridge */ /* synthetic */ String zzo(zzs zzsVar, String str) {
        if (zzsVar.zzh != null) {
            Uri parse = Uri.parse(str);
            try {
                parse = zzsVar.zzh.zza(parse, zzsVar.zzd, null, null);
            } catch (zzavj e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-4632564521195848241L, 3084795389068985806L, 2148297118074579180L, 1952825109358843670L, -4591774294760587984L}).toString(), e);
            }
            return parse.toString();
        }
        return str;
    }

    public static /* bridge */ /* synthetic */ void zzw(zzs zzsVar, String str) {
        Intent intent = new Intent(new ObfuscatedString(new long[]{-3269018502510325023L, -1329022291289333429L, -3145890579013495452L, -7599646270643421149L, 9218685760141641803L}).toString());
        intent.setData(Uri.parse(str));
        zzsVar.zzd.startActivity(intent);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzA() {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-2193574972929690409L, 344166129634427840L, 5999749909248523946L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzB() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-9114566198357973582L, -8225509354456122683L, 2112207577144500213L, 373627366330468806L, 8659493745751908049L, 5918298665125679135L, 8809716315727761509L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzC(zzbe zzbeVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-3914562899876758244L, 3442661983325478959L, 4570365488609172171L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzD(zzbh zzbhVar) {
        this.zzg = zzbhVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzE(zzby zzbyVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{8820724263349689500L, 8818289230636068076L, -5969373359443291519L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzF(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{7444639609087384458L, 2655760492346787307L, -1586795123388335880L, -1981610861955054632L, -3759870016207938443L, 1631889415955137899L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzG(zzcb zzcbVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{2799004913301355027L, 8340675443985169072L, 2600914472083663702L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzH(zzbam zzbamVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-652432021481130408L, -6840809568725619867L, -723835297433352310L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzI(zzw zzwVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-8645901097817213621L, -6580514995950442801L, 6716101681102384051L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzJ(zzci zzciVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzK(zzdu zzduVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{88823762173637866L, 6584292918853437615L, -8003113874416466962L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzL(boolean z) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-5114064587703631110L, -4199042141992173627L, 1126588806346148533L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzM(zzbxc zzbxcVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{3636604190306799637L, -2662110227805252293L, -2880767626701349253L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzN(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzO(zzbha zzbhaVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{78162066023658281L, -3863822923535777613L, 3379507409792005238L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzP(zzdg zzdgVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzQ(zzbxf zzbxfVar, String str) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{1524656786367616709L, -2831201230103603729L, -3485053415044802729L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzR(String str) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-8985990860772029459L, -1852423435506242796L, -6898065945974825711L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzS(zzcaa zzcaaVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{8854089551446724874L, -1302525637594013247L, 2664686839911001188L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzT(String str) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{8096762655789293036L, -5393977867594451287L, 1245511207706833359L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzU(zzfk zzfkVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{5550837593248942154L, -6227689200159841557L, 45391680020570953L}).toString());
    }

    @VisibleForTesting
    public final void zzV(int i) {
        if (this.zzf == null) {
            return;
        }
        this.zzf.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzX() {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-4084634259181024418L, 378215847444763290L, 5003877084795917585L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean zzY() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean zzZ() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean zzaa(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        Preconditions.checkNotNull(this.zzf, new ObfuscatedString(new long[]{-4685140479877798005L, -9177381870743557497L, 6525252984434747727L, -7940983470934753006L, 3614135556428850339L, 1425938929464142824L, -2842165367911657172L}).toString());
        this.zze.zzf(zzlVar, this.zza);
        this.zzi = new zzq(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzab(zzcf zzcfVar) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{2563122015368336153L, -192543861272888000L, -654900626896755824L}).toString());
    }

    @VisibleForTesting
    public final int zzb(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter(new ObfuscatedString(new long[]{-2577466142370381240L, -3191333761040987628L}).toString());
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzay.zzb();
            return zzcdv.zzx(this.zzd, Integer.parseInt(queryParameter));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle zzd() {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-8052769340876836899L, -2929944263884277789L, 1373106627967136930L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzq zzg() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzbh zzi() {
        throw new IllegalStateException(new ObfuscatedString(new long[]{7018404814828690543L, -9061724945382580588L, -1885760871364770721L, -5753070993385698908L, -682822431726782148L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzcb zzj() {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-6143415074016594264L, 1645204301343865626L, 3385572621053222514L, 7124536789085650947L, 6536323306713527577L, 5965360501232647851L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final zzdn zzk() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final zzdq zzl() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper zzn() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{2644700745126528328L, -9110860427521292463L, -6309011605555504959L, -8628866602113918588L, 325198530628629206L, 5732785354409027753L, -370320077894165634L}).toString());
        return ObjectWrapper.wrap(this.zzf);
    }

    @VisibleForTesting
    public final String zzp() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(new ObfuscatedString(new long[]{-3694258990425406932L, 3294538812730404435L}).toString()).appendEncodedPath((String) zzbho.zzd.zze());
        builder.appendQueryParameter(new ObfuscatedString(new long[]{827292507335833574L, 6484248729478668950L}).toString(), this.zze.zzd());
        builder.appendQueryParameter(new ObfuscatedString(new long[]{324984912724912653L, -3971256407961130453L}).toString(), this.zze.zzc());
        builder.appendQueryParameter(new ObfuscatedString(new long[]{-361716136775247438L, 3169692755791244968L}).toString(), this.zze.zza());
        Map zze = this.zze.zze();
        for (String str : zze.keySet()) {
            builder.appendQueryParameter(str, (String) zze.get(str));
        }
        Uri build = builder.build();
        zzavi zzaviVar = this.zzh;
        if (zzaviVar != null) {
            try {
                build = zzaviVar.zzb(build, this.zzd);
            } catch (zzavj e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-7205425676308089894L, 6594970590191704152L, 141989404583085517L, -4829079030447756545L, -7276410751680231521L}).toString(), e);
            }
        }
        String zzq = zzq();
        String encodedQuery = build.getEncodedQuery();
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{5002052458331745386L, -3691990583482402980L}), AbstractC0749x8313616e.m3341xc20437a5(zzq), encodedQuery);
    }

    @VisibleForTesting
    public final String zzq() {
        String zzb = this.zze.zzb();
        if (true == TextUtils.isEmpty(zzb)) {
            zzb = new ObfuscatedString(new long[]{5432753680552842964L, 1146584032057386090L, 3111963561097309437L}).toString();
        }
        return new ObfuscatedString(new long[]{3276314429728546901L, -2406292728034714194L}).toString() + zzb + ((String) zzbho.zzd.zze());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final String zzr() {
        throw new IllegalStateException(new ObfuscatedString(new long[]{5170743724687918862L, 3518299004150835406L, 5174767918813788861L, -961623713710580442L, -9001532878746429476L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final String zzs() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final String zzt() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzx() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{8253809502342869022L, -513524803632466630L, -1353039735760501840L, -3969627770096653594L, -4394765545687152269L, 8715807731658913043L, 1342324300733242713L}).toString());
        this.zzi.cancel(true);
        this.zzc.cancel(true);
        this.zzf.destroy();
        this.zzf = null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzy(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbk zzbkVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzz() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-558621680361887557L, -3372792978355131456L, -5061363912529151774L, -5145252847942400902L, -6199481080112353453L, -3408033744238146634L, 8834698573486883628L}).toString());
    }
}
