package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzehh extends SQLiteOpenHelper {
    private final Context zza;
    private final zzgey zzb;

    public zzehh(Context context, zzgey zzgeyVar) {
        super(context, new ObfuscatedString(new long[]{8571076043864091753L, -2981591945065992968L, 7976903134787440570L, 867098563052237403L, -4275864182879645027L}).toString(), (SQLiteDatabase.CursorFactory) null, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzik)).intValue());
        this.zza = context;
        this.zzb = zzgeyVar;
    }

    public static /* synthetic */ Void zzb(zzceh zzcehVar, SQLiteDatabase sQLiteDatabase) {
        zzj(sQLiteDatabase, zzcehVar);
        return null;
    }

    public static /* synthetic */ void zzf(SQLiteDatabase sQLiteDatabase, String str, zzceh zzcehVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(new ObfuscatedString(new long[]{8814037955733214734L, -4830198121429567337L, 3307074804200015828L}).toString(), (Integer) 1);
        sQLiteDatabase.update(new ObfuscatedString(new long[]{8778341912167891525L, -721191667751400179L, 1691512691319684684L, 1320039307628410714L}).toString(), contentValues, new ObfuscatedString(new long[]{1339340390123059136L, 4763800914549186353L, -8515120630829428586L}).toString(), new String[]{str});
        zzj(sQLiteDatabase, zzcehVar);
    }

    public static final void zzi(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete(new ObfuscatedString(new long[]{-562436622616161757L, 6756266413628326323L, 6036010150507699870L, 9033051722220522302L}).toString(), new ObfuscatedString(new long[]{3757912630624931176L, -7254968629315101233L, -7639182804413078720L, -7426008678519908815L, -6085694800071673226L, 1633483222959469644L}).toString(), new String[]{str, Integer.toString(0)});
    }

    private static void zzj(SQLiteDatabase sQLiteDatabase, zzceh zzcehVar) {
        sQLiteDatabase.beginTransaction();
        try {
            Cursor query = sQLiteDatabase.query(new ObfuscatedString(new long[]{4428487506997174477L, -5098943961423099526L, -2528287734982142461L, -2703022560575979532L}).toString(), new String[]{new ObfuscatedString(new long[]{-5842888760289960646L, -2321786556905661922L}).toString()}, new ObfuscatedString(new long[]{-6341387413976835378L, 753201252996440403L, 9063799978884804116L}).toString() + 1, null, null, null, new ObfuscatedString(new long[]{2821399966543686548L, 6073599002105656131L, -6248049776624365757L}).toString(), null);
            int count = query.getCount();
            String[] strArr = new String[count];
            int i = 0;
            while (query.moveToNext()) {
                int columnIndex = query.getColumnIndex(new ObfuscatedString(new long[]{8653383338064931479L, -3234524830995697271L}).toString());
                if (columnIndex != -1) {
                    strArr[i] = query.getString(columnIndex);
                }
                i++;
            }
            query.close();
            sQLiteDatabase.delete(new ObfuscatedString(new long[]{9097647589469357272L, 8774781613922044864L, 1450983819073110324L, -372935755438722024L}).toString(), new ObfuscatedString(new long[]{-264057628780420857L, -4888899209638225963L, 5654630738975832117L}).toString(), new String[]{Integer.toString(1)});
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            for (int i2 = 0; i2 < count; i2++) {
                zzcehVar.zza(strArr[i2]);
            }
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(new ObfuscatedString(new long[]{-2190818786867915217L, 8012900557909943403L, 8511695548633496929L, 6664006750696139164L, 8673965098358314530L, 2322620888749750876L, -4299128045207840417L, 8667470305801451848L, -1694704842791316396L, 1383156763912363282L, 3415765177394733289L, 7667827966266759553L, -4142517901398112420L, -7294460498954054692L, 3189110505189130627L, 7515308568752892959L}).toString());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(new ObfuscatedString(new long[]{7847869288476143249L, -2501781249735658880L, 4369285826610508748L, -6544786273073559117L, -6219842924330446874L, -561501679803235219L, 2939858742279549688L}).toString());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(new ObfuscatedString(new long[]{-7208212721124764806L, -3760542370676479187L, -6760490055873297332L, 4695841723072798946L, 2662925190601075366L, 2752336028388717732L, -2815718785319429266L}).toString());
    }

    public final /* synthetic */ Void zza(zzehj zzehjVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(new ObfuscatedString(new long[]{-5368154454092358155L, -5069300728825986026L, 9040743361162262398L}).toString(), Long.valueOf(zzehjVar.zza));
        contentValues.put(new ObfuscatedString(new long[]{-847674862882001492L, 526359940419402824L, 5367864674154916660L}).toString(), zzehjVar.zzb);
        contentValues.put(new ObfuscatedString(new long[]{3271674970550751607L, 8838226729929722336L}).toString(), zzehjVar.zzc);
        contentValues.put(new ObfuscatedString(new long[]{6960519815068529569L, 2179374890223314496L, 3095667131679939854L}).toString(), Integer.valueOf(zzehjVar.zzd - 1));
        sQLiteDatabase.insert(new ObfuscatedString(new long[]{-7555392472547960320L, -8679744585245090154L, 6816338875529393129L, -5966482537157765666L}).toString(), null, contentValues);
        com.google.android.gms.ads.internal.zzt.zzp();
        com.google.android.gms.ads.internal.util.zzbt zzy = com.google.android.gms.ads.internal.util.zzt.zzy(this.zza);
        if (zzy != null) {
            try {
                zzy.zze(ObjectWrapper.wrap(this.zza));
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{17024649487203823L, -2322737010299775475L, -6569973586441968385L, -3977466520530785635L, -6015921899051581528L, -3179147779789879915L}).toString(), e);
            }
        }
        return null;
    }

    public final void zzc(final String str) {
        zze(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzehf
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj) {
                zzehh.zzi((SQLiteDatabase) obj, str);
                return null;
            }
        });
    }

    public final void zzd(final zzehj zzehjVar) {
        zze(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzehb
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj) {
                zzehh.this.zza(zzehjVar, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    public final void zze(zzfkp zzfkpVar) {
        zzgen.zzr(this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzehd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzehh.this.getWritableDatabase();
            }
        }), new zzehg(this, zzfkpVar), this.zzb);
    }

    public final void zzg(final SQLiteDatabase sQLiteDatabase, final zzceh zzcehVar, final String str) {
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehe
            @Override // java.lang.Runnable
            public final void run() {
                zzehh.zzf(sQLiteDatabase, str, zzcehVar);
            }
        });
    }

    public final void zzh(final zzceh zzcehVar, final String str) {
        zze(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzehc
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj) {
                zzehh.this.zzg((SQLiteDatabase) obj, zzcehVar, str);
                return null;
            }
        });
    }
}
