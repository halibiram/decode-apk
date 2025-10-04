package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzefu extends SQLiteOpenHelper {
    public zzefu(Context context) {
        super(context, new ObfuscatedString(new long[]{-2372629680514469118L, -18443769167604316L, 6516919657363461708L}).toString(), (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(new ObfuscatedString(new long[]{-2567283640331149189L, -2243166512658305769L, 8281391638717891087L, 9037420336157348015L, 7102565510498623598L, 7309343286734203496L, -6220804152563381143L, -3388169815316853210L, 4599402255141777926L, 7856374966088326306L, -6069185476392374139L, -3796486583494207948L, 3743402612454528022L}).toString());
        sQLiteDatabase.execSQL(new ObfuscatedString(new long[]{-605497494331140079L, 8559212440148783175L, -7012470598229360203L, 3056263202231211043L, 3832460197603409063L, -8705306511853426082L, 434210058165214348L, 3399080038762204241L, 9042736376749159151L, -9111492647766089835L, -7818778286106152958L, -2075617993642519453L}).toString());
        zzegn.zze(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(new ObfuscatedString(new long[]{-1726583200394000046L, -5705795036528446580L, 3739285329371501575L, 8352121399085235991L, 6805142351375802311L, 2966590413254042435L, 3947679502428282491L}).toString());
        sQLiteDatabase.execSQL(new ObfuscatedString(new long[]{-168196264705424884L, -2189924334551316647L, 7322594464285454438L, 7060408902392899664L, -6721731535000201788L, -5071178397417266122L, 8696615599655730150L}).toString());
    }
}
