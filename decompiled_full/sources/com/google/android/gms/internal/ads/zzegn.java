package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzegn {
    public static int zza(SQLiteDatabase sQLiteDatabase, int i) {
        int i2 = 0;
        if (i == 2) {
            return 0;
        }
        Cursor zzh = zzh(sQLiteDatabase, i);
        if (zzh.getCount() > 0) {
            zzh.moveToNext();
            i2 = zzh.getInt(zzh.getColumnIndexOrThrow(new ObfuscatedString(new long[]{6814332483505015692L, 5500812822873768873L}).toString()));
        }
        zzh.close();
        return i2;
    }

    public static long zzb(SQLiteDatabase sQLiteDatabase, int i) {
        long j;
        Cursor zzh = zzh(sQLiteDatabase, 2);
        if (zzh.getCount() > 0) {
            zzh.moveToNext();
            j = zzh.getLong(zzh.getColumnIndexOrThrow(new ObfuscatedString(new long[]{9065301434731773793L, -1384043577634414544L}).toString()));
        } else {
            j = 0;
        }
        zzh.close();
        return j;
    }

    public static ArrayList zzc(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        Cursor query = sQLiteDatabase.query(new ObfuscatedString(new long[]{5704364319801665596L, -8684674752796685263L, 403890638488971502L, 979123692856319886L}).toString(), new String[]{new ObfuscatedString(new long[]{-320827192905798201L, -7193588529146516732L, 1749781070920722803L, -7585201886892162690L}).toString()}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(zzbdy.zzi(query.getBlob(query.getColumnIndexOrThrow(new ObfuscatedString(new long[]{-4300331458296841622L, -1859126468634449734L, 3607970083490586785L, 725573788176402117L}).toString()))));
            } catch (zzhag e) {
                zzcec.zzg(new ObfuscatedString(new long[]{-8296471773463055211L, 4669022469374463945L, 3012165933930818478L, 2246182385991287722L, 3219232347738367217L, -4813519501714275387L, 3395495413711432736L, 7375643538260916829L, 4681238204163377768L}).toString());
                zzcec.zzg(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    public static void zzd(SQLiteDatabase sQLiteDatabase, long j, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(new ObfuscatedString(new long[]{5870357215738008821L, -6997893116888416982L, -6872828396490625674L}).toString(), Long.valueOf(j));
        contentValues.put(new ObfuscatedString(new long[]{-1958723520363890831L, -8576473279164275098L, -8247263093361216951L, 3914005051618738172L}).toString(), bArr);
        String[] strArr = {String.valueOf(j)};
        if (sQLiteDatabase.update(new ObfuscatedString(new long[]{4736686582045487454L, 6172311075010842319L, -4486268361536346074L, -6883153395690575177L}).toString(), contentValues, new ObfuscatedString(new long[]{4186346545001100174L, 2821165336742918391L, -2413223996460067034L}).toString(), strArr) == 0) {
            sQLiteDatabase.insert(new ObfuscatedString(new long[]{2605199609994664145L, 3175368607342236386L, 7805855610134396696L, -7192595787366685217L}).toString(), null, contentValues);
        }
    }

    public static void zze(SQLiteDatabase sQLiteDatabase) {
        zzi(sQLiteDatabase, new ObfuscatedString(new long[]{4224663448924669989L, -1383941894409059179L, -4890191240248372031L}).toString(), 0);
        zzi(sQLiteDatabase, new ObfuscatedString(new long[]{8634065017824967072L, -808342553350524966L, -5122993751511461744L}).toString(), 0);
        zzi(sQLiteDatabase, new ObfuscatedString(new long[]{1954854500806212336L, -8112839318494794979L, 2820952830431301845L, -3270225167238431447L}).toString(), 0);
        ContentValues contentValues = new ContentValues();
        contentValues.put(new ObfuscatedString(new long[]{-4918146106236634220L, 1548120885382623242L, -5591796111266903758L}).toString(), new ObfuscatedString(new long[]{4427958773178611199L, 1470478163825207549L, -8606428394620855504L, 4950993249347544719L, -509605634573964671L}).toString());
        contentValues.put(new ObfuscatedString(new long[]{-4799758396346054965L, -6489482691109574532L}).toString(), (Long) 0L);
        sQLiteDatabase.insert(new ObfuscatedString(new long[]{5528044764381483800L, 3219110337381451429L, 8257228682583354134L, 174737584075931736L, -4636963525945419073L}).toString(), null, contentValues);
    }

    public static void zzf(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete(new ObfuscatedString(new long[]{7764243482102042182L, 1521530869265861124L, -5790756441574642349L, 7097014007693395354L}).toString(), null, null);
        zzj(sQLiteDatabase, new ObfuscatedString(new long[]{-5319697555405069112L, -1479098352556496037L, -6506900182147642160L}).toString(), 0);
        zzj(sQLiteDatabase, new ObfuscatedString(new long[]{1037640173498198729L, -3036929388783254335L, -2264915974552610117L}).toString(), 0);
        zzj(sQLiteDatabase, new ObfuscatedString(new long[]{373684435401376294L, 7177363232667557208L, 2312924523317586808L, 434407935164419327L}).toString(), 0);
    }

    public static void zzg(SQLiteDatabase sQLiteDatabase, boolean z, boolean z2) {
        if (!z2) {
            sQLiteDatabase.execSQL(String.format(new ObfuscatedString(new long[]{-2341417419091579889L, -3516755163657747111L, 2506224000356359624L, -4246545271846645779L, 9186829316459763510L, -1133417188261786167L, -8061297243494870977L, -702227882222924013L, 1038593855950090429L, -6903741899464431003L, 7928996368394710736L}).toString(), new ObfuscatedString(new long[]{1135961313855080872L, -8311855956701266984L, 549526406329490000L}).toString()));
            return;
        }
        sQLiteDatabase.execSQL(String.format(new ObfuscatedString(new long[]{-6281087209304090646L, -8474156945459873689L, 4159114104274150125L, 1771693661638067322L, -570632530923000032L, 6600285857073156484L, 3748816375435214221L, -1182451120003512343L, 5040844206681704413L, -2199832318074056990L, 7563109479814057792L}).toString(), new ObfuscatedString(new long[]{-5176570844012665108L, -731606689771704397L, -5362477676192279408L, 1295039082458542251L}).toString()));
        if (!z) {
            sQLiteDatabase.execSQL(String.format(new ObfuscatedString(new long[]{-7431953766925133208L, -4793509696025415421L, -7712180624329166450L, 3695545758795369635L, 8943833980972683741L, -5467386440513315992L, -9014023794339458379L, 8576931410403265036L, 6845489969144028940L, -4778729450455573380L, -7654740156752138886L}).toString(), new ObfuscatedString(new long[]{8266660976655783820L, 4561489147663372809L, 8986954284210982917L}).toString()));
        }
    }

    private static Cursor zzh(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = {new ObfuscatedString(new long[]{-5749513246726145317L, 8166946583503927809L}).toString()};
        String[] strArr2 = new String[1];
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    strArr2[0] = new ObfuscatedString(new long[]{5082513221282259773L, 1590739936888464749L, 6710412772254456935L, 6646576725644866050L}).toString();
                } else {
                    strArr2[0] = new ObfuscatedString(new long[]{1097252249866713837L, 6623485053189765781L, -2366321285805774676L, 8319183820111437632L, -7072254462090358481L}).toString();
                }
            } else {
                strArr2[0] = new ObfuscatedString(new long[]{8981725545793210470L, -8407532859733496217L, -2706297010314293187L}).toString();
            }
        } else {
            strArr2[0] = new ObfuscatedString(new long[]{2050501147941859926L, 3410391173150415584L, 1880434152551288103L}).toString();
        }
        return sQLiteDatabase.query(new ObfuscatedString(new long[]{4809823326015163954L, 5764877249356348530L, 6662369846729404320L, 296823103899551087L, 4940334016207226316L}).toString(), strArr, new ObfuscatedString(new long[]{-4494123027962816961L, -533357085426436711L, 1800951884297488918L, 8881345227930870199L}).toString(), strArr2, null, null, null);
    }

    private static void zzi(SQLiteDatabase sQLiteDatabase, String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(new ObfuscatedString(new long[]{-3463358334428641739L, 8820205661265442396L, 4150465317651453573L}).toString(), str);
        contentValues.put(new ObfuscatedString(new long[]{4269325113671006393L, 3105889349717895654L}).toString(), (Integer) 0);
        sQLiteDatabase.insert(new ObfuscatedString(new long[]{501890378709507399L, 128986494821498185L, 8478112007605008300L, 5906496483749871548L, 688014217081281714L}).toString(), null, contentValues);
    }

    private static void zzj(SQLiteDatabase sQLiteDatabase, String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(new ObfuscatedString(new long[]{3253120107801477360L, -2982646706510999332L}).toString(), (Integer) 0);
        String obfuscatedString = new ObfuscatedString(new long[]{2554342101300416995L, 1096640825269355323L, -7330223599837550441L, -3438925468081441634L}).toString();
        sQLiteDatabase.update(new ObfuscatedString(new long[]{-3472626537011371192L, 3375179776430433919L, -516844173112742454L, -6063196578278030910L, -6907968755568730374L}).toString(), contentValues, obfuscatedString, new String[]{str});
    }
}
