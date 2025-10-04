package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.R;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbvn extends zzbvw {
    private final Map zza;
    private final Context zzb;
    private final String zzc;
    private final long zzd;
    private final long zze;
    private final String zzf;
    private final String zzg;

    public zzbvn(zzcjk zzcjkVar, Map map) {
        super(zzcjkVar, new ObfuscatedString(new long[]{394622630334482198L, -6083829938079819837L, 23129280092756305L, 5043784611713843629L}).toString());
        this.zza = map;
        this.zzb = zzcjkVar.zzi();
        this.zzc = zze(new ObfuscatedString(new long[]{319928485452576955L, -2842844470552222861L, 3667804834760170616L}).toString());
        this.zzf = zze(new ObfuscatedString(new long[]{-8522910263959416520L, 6374768130892096200L}).toString());
        this.zzd = zzd(new ObfuscatedString(new long[]{8663149227312332105L, -286090387468610481L, -8036118761952192428L}).toString());
        this.zze = zzd(new ObfuscatedString(new long[]{1310424488459685210L, -2117807565760184550L, -2971504009354334522L}).toString());
        this.zzg = zze(new ObfuscatedString(new long[]{2876156609719595345L, 8254626952379920758L}).toString());
    }

    private final long zzd(String str) {
        String str2 = (String) this.zza.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    private final String zze(String str) {
        if (TextUtils.isEmpty((CharSequence) this.zza.get(str))) {
            return new ObfuscatedString(new long[]{-3110358837782546712L}).toString();
        }
        return (String) this.zza.get(str);
    }

    public final Intent zzb() {
        Intent data = new Intent(new ObfuscatedString(new long[]{5048736362460696062L, 8270031423299406188L, 4342922140931608293L, 8218768767244801944L, 7203358789514786644L}).toString()).setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra(new ObfuscatedString(new long[]{570923804522641871L, -7884643914577750783L}).toString(), this.zzc);
        data.putExtra(new ObfuscatedString(new long[]{6995321785356636058L, 2627320350664233300L, -8204643882309180172L}).toString(), this.zzg);
        data.putExtra(new ObfuscatedString(new long[]{6881998309537441598L, 801576506866389233L, 2015705030913638261L}).toString(), this.zzf);
        long j = this.zzd;
        if (j > -1) {
            data.putExtra(new ObfuscatedString(new long[]{-7385510792360394L, -4993969115855600578L, -6624019229073324516L}).toString(), j);
        }
        long j2 = this.zze;
        if (j2 > -1) {
            data.putExtra(new ObfuscatedString(new long[]{560657141290610792L, 2482190119859762559L}).toString(), j2);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void zzc() {
        String obfuscatedString;
        String obfuscatedString2;
        String obfuscatedString3;
        String obfuscatedString4;
        if (this.zzb == null) {
            zzh(new ObfuscatedString(new long[]{8461120325222764373L, 3690527992591073263L, 4097941340129063928L, 9146757079263354899L, -3024049273632942358L, -6755870651752864802L}).toString());
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        if (!new zzbfm(this.zzb).zzb()) {
            zzh(new ObfuscatedString(new long[]{-173475941015105866L, 7662355012120665886L, 2832815530832115179L, -267807577819809214L, -786472905708496370L, 1169460774909707854L, 7887719638837544710L}).toString());
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        AlertDialog.Builder zzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(this.zzb);
        Resources zze = com.google.android.gms.ads.internal.zzt.zzo().zze();
        if (zze != null) {
            obfuscatedString = zze.getString(R.string.s5);
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-3378148279695529921L, 1119000939623397044L, 7947430464275346493L, -7871145269900581694L}).toString();
        }
        zzJ.setTitle(obfuscatedString);
        if (zze != null) {
            obfuscatedString2 = zze.getString(R.string.s6);
        } else {
            obfuscatedString2 = new ObfuscatedString(new long[]{4835475241029730184L, -6271620193241990995L, 167352546517206103L, 2546998617701231847L, 8140553483991442288L, -8475613134927808529L}).toString();
        }
        zzJ.setMessage(obfuscatedString2);
        if (zze != null) {
            obfuscatedString3 = zze.getString(R.string.s3);
        } else {
            obfuscatedString3 = new ObfuscatedString(new long[]{8963428720301061293L, -2814392174951943114L}).toString();
        }
        zzJ.setPositiveButton(obfuscatedString3, new zzbvl(this));
        if (zze != null) {
            obfuscatedString4 = zze.getString(R.string.s4);
        } else {
            obfuscatedString4 = new ObfuscatedString(new long[]{-2805524910339994331L, 8829710580041037428L}).toString();
        }
        zzJ.setNegativeButton(obfuscatedString4, new zzbvm(this));
        zzJ.create().show();
    }
}
