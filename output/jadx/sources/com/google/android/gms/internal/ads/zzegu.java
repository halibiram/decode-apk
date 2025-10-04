package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzegu {
    private final zzbbp zza;
    private final Context zzb;
    private final zzefy zzc;
    private final zzcei zzd;
    private final String zze;
    private final zzflw zzf;
    private final com.google.android.gms.ads.internal.util.zzg zzg = com.google.android.gms.ads.internal.zzt.zzo().zzi();

    public zzegu(Context context, zzcei zzceiVar, zzbbp zzbbpVar, zzefy zzefyVar, String str, zzflw zzflwVar) {
        this.zzb = context;
        this.zzd = zzceiVar;
        this.zza = zzbbpVar;
        this.zzc = zzefyVar;
        this.zze = str;
        this.zzf = zzflwVar;
    }

    private static final void zzc(SQLiteDatabase sQLiteDatabase, ArrayList arrayList) {
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            zzbdy zzbdyVar = (zzbdy) arrayList.get(i);
            if (zzbdyVar.zzw() == 2 && zzbdyVar.zze() > j) {
                j = zzbdyVar.zze();
            }
        }
        if (j != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(new ObfuscatedString(new long[]{3163421529934267578L, 8857342964939120463L}).toString(), Long.valueOf(j));
            sQLiteDatabase.update(new ObfuscatedString(new long[]{6980524784803930361L, 8589834092394986857L, 5025253834558372221L, -1279711147600868163L, -7439110539403697419L}).toString(), contentValues, new ObfuscatedString(new long[]{-4216968604177957730L, 5893247066268361494L, 5050360541213936949L, -8524749386848217607L, 7382869341046990088L, -7615684586737204600L, 339403405979719620L}).toString(), null);
        }
    }

    public final /* synthetic */ Void zza(boolean z, SQLiteDatabase sQLiteDatabase) {
        String str;
        String str2;
        String obfuscatedString;
        int i = 2;
        char c = 0;
        int i2 = 1;
        if (z) {
            this.zzb.deleteDatabase(new ObfuscatedString(new long[]{-7964223239916058628L, 1631612093473262978L, 1795794941242658308L}).toString());
            return null;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue()) {
            zzflv zzb = zzflv.zzb(new ObfuscatedString(new long[]{6117859617577211141L, -8298426139202875777L, -2358385473770597891L}).toString());
            zzb.zza(new ObfuscatedString(new long[]{-4760056715043528638L, -7797595034229058192L, 7928311119199748327L}).toString(), String.valueOf(zzegn.zza(sQLiteDatabase, 0)));
            zzb.zza(new ObfuscatedString(new long[]{4269596270503585950L, -2531807962189281256L, -4523296496354371316L}).toString(), String.valueOf(zzegn.zza(sQLiteDatabase, 1)));
            zzb.zza(new ObfuscatedString(new long[]{-42263590019174160L, 9090916405895334821L, -3980227242579584400L}).toString(), String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            zzb.zza(new ObfuscatedString(new long[]{171717979685116450L, -5052476209552623739L, 8516060377007010684L, -3107700205586427697L}).toString(), String.valueOf(zzegn.zzb(sQLiteDatabase, 2)));
            if (this.zzg.zzQ()) {
                str = new ObfuscatedString(new long[]{-6631086790421007385L}).toString();
            } else {
                str = this.zze;
            }
            zzb.zza(new ObfuscatedString(new long[]{2666565489214276296L, -6973484730983753422L, 9209321608296760497L}).toString(), str);
            this.zzf.zzb(zzb);
            ArrayList zzc = zzegn.zzc(sQLiteDatabase);
            zzc(sQLiteDatabase, zzc);
            int size = zzc.size();
            int i3 = 0;
            while (i3 < size) {
                zzbdy zzbdyVar = (zzbdy) zzc.get(i3);
                com.google.android.gms.ads.internal.util.zzg zzgVar = this.zzg;
                zzflv zzb2 = zzflv.zzb(new ObfuscatedString(new long[]{-8905018712392788645L, 5651328970280623891L, 2610827307314215532L}).toString());
                if (zzgVar.zzQ()) {
                    long[] jArr = new long[i2];
                    jArr[c] = -4766040838018866799L;
                    str2 = new ObfuscatedString(jArr).toString();
                } else {
                    str2 = this.zze;
                }
                zzb2.zza(new ObfuscatedString(new long[]{2729481547501362634L, -2299036425312666729L, 6190752105606868790L}).toString(), str2);
                zzbdt zzf = zzbdyVar.zzf();
                if (zzf.zzf()) {
                    obfuscatedString = String.valueOf(zzf.zzh() - 1);
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{-4139271589445569467L, 7916897502379987613L}).toString();
                }
                String obj = zzgao.zzb(zzbdyVar.zzk(), new zzfws() { // from class: com.google.android.gms.internal.ads.zzegt
                    @Override // com.google.android.gms.internal.ads.zzfws
                    public final Object apply(Object obj2) {
                        return ((zzbcn) obj2).name();
                    }
                }).toString();
                zzb2.zza(new ObfuscatedString(new long[]{2240577970478786398L, 151357982963718510L, 1840393033907181996L}).toString(), String.valueOf(zzbdyVar.zze()));
                zzb2.zza(new ObfuscatedString(new long[]{-2605970651251666848L, 4668916870812498231L, -2523361017484250076L}).toString(), String.valueOf(zzbdyVar.zzw() - 1));
                zzb2.zza(new ObfuscatedString(new long[]{-6422188252132246380L, -4143987975371012768L, -6298119892545685740L}).toString(), String.valueOf(zzbdyVar.zzd()));
                zzb2.zza(new ObfuscatedString(new long[]{940176207758171080L, -6747539350953665222L, -3582229074478729787L, -6073750314767793347L}).toString(), String.valueOf(zzbdyVar.zzc()));
                zzb2.zza(new ObfuscatedString(new long[]{-4716985395614515177L, -4317775645883176675L, 6343326254735927535L}).toString(), obj);
                zzb2.zza(new ObfuscatedString(new long[]{-7571665680234560420L, -2219180541683035165L, 5136783317747804470L}).toString(), obfuscatedString);
                zzb2.zza(new ObfuscatedString(new long[]{-5623270675232026798L, 3307614265688677754L, 3737605757374020807L}).toString(), String.valueOf(zzbdyVar.zzx() - 1));
                zzb2.zza(new ObfuscatedString(new long[]{-8775993521474392728L, 8018618918524745134L, 2096398546033128082L}).toString(), String.valueOf(zzbdyVar.zzt() - 1));
                zzb2.zza(new ObfuscatedString(new long[]{-1633874584885453265L, 3738384341832564464L, -2500704191775795601L}).toString(), String.valueOf(zzbdyVar.zzu() - 1));
                zzb2.zza(new ObfuscatedString(new long[]{6707281673839395217L, 3090017328329134226L, -8084841033193635170L}).toString(), String.valueOf(zzbdyVar.zza()));
                zzb2.zza(new ObfuscatedString(new long[]{9210655551834315448L, 8752487998107346680L, -5113008300068064038L}).toString(), String.valueOf(zzbdyVar.zzv() - 1));
                zzb2.zza(new ObfuscatedString(new long[]{1222027156269740533L, -5116216444549656728L, -2779490149449896271L}).toString(), String.valueOf(zzbdyVar.zzj().zza()));
                if (zzf.zze() && zzf.zzf() && zzf.zzh() == 2) {
                    zzb2.zza(new ObfuscatedString(new long[]{1231060213917140847L, -6654953793207016871L, 8908132362624485202L}).toString(), String.valueOf(zzf.zzg() - 1));
                }
                this.zzf.zzb(zzb2);
                i3++;
                c = 0;
                i2 = 1;
            }
        } else {
            ArrayList zzc2 = zzegn.zzc(sQLiteDatabase);
            Context context = this.zzb;
            zzbdz zza = zzbed.zza();
            zza.zzb(context.getPackageName());
            zza.zzd(Build.MODEL);
            zza.zze(zzegn.zza(sQLiteDatabase, 0));
            zza.zza(zzc2);
            zza.zzg(zzegn.zza(sQLiteDatabase, 1));
            zza.zzc(zzegn.zza(sQLiteDatabase, 3));
            zza.zzh(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis());
            zza.zzf(zzegn.zzb(sQLiteDatabase, 2));
            final zzbed zzbedVar = (zzbed) zza.zzal();
            zzc(sQLiteDatabase, zzc2);
            this.zza.zzb(new zzbbo() { // from class: com.google.android.gms.internal.ads.zzegr
                @Override // com.google.android.gms.internal.ads.zzbbo
                public final void zza(zzbde zzbdeVar) {
                    zzbdeVar.zzi(zzbed.this);
                }
            });
            zzcei zzceiVar = this.zzd;
            zzbeo zza2 = zzbep.zza();
            zza2.zza(zzceiVar.zzb);
            zza2.zzc(this.zzd.zzc);
            if (true == this.zzd.zzd) {
                i = 0;
            }
            zza2.zzb(i);
            final zzbep zzbepVar = (zzbep) zza2.zzal();
            this.zza.zzb(new zzbbo() { // from class: com.google.android.gms.internal.ads.zzegs
                @Override // com.google.android.gms.internal.ads.zzbbo
                public final void zza(zzbde zzbdeVar) {
                    zzbcw zzbcwVar = (zzbcw) zzbdeVar.zzb().zzaB();
                    zzbcwVar.zzb(zzbep.this);
                    zzbdeVar.zzg(zzbcwVar);
                }
            });
            this.zza.zzc(10004);
        }
        zzegn.zzf(sQLiteDatabase);
        return null;
    }

    public final void zzb(final boolean z) {
        try {
            this.zzc.zza(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzegq
                @Override // com.google.android.gms.internal.ads.zzfkp
                public final Object zza(Object obj) {
                    zzegu.this.zza(z, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e) {
            zzcec.zzg(new ObfuscatedString(new long[]{-1543691178844436844L, 6640563342547201366L, 6057203645483061133L, 9131764352066300217L, 2540052202336448244L, -3061547326569534018L, 1226822751159565753L}).toString().concat(String.valueOf(e.getMessage())));
        }
    }
}
