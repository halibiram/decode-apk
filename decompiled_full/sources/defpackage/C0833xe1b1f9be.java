package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import kotlin.jvm.functions.Function4;

/* renamed from: 든땲됴땪땟땫뒬뒹딤딝땵땐뒤딹듌뎻돳딄뒛땱돼땮듸땍될둬딟뎬땝둔땁뒵뒼돵뒉둥땩뎠뒾뒋될됐땳뒙되땃딃뒷뎡땫돴땳땸둡땱됨뎰돵땭땯딌뎹들뒉땁뒋딁뒋뎬든땦뎻뒻뒨땅땥딄되돷되땰돝돵뒷된득뎸딀뒉땳돶땥땍딜뒨딐땰둑되딄땵듨뒵뎠땍뒾딝둬둬땄뒝딅땝돸땫딠듼뒀땵돰땤뒼둠땱됴됫됐땳됩됨, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0833xe1b1f9be implements SQLiteDatabase.CursorFactory {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4915xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4916x3271d0aa;

    public /* synthetic */ C0833xe1b1f9be(Object obj, int i) {
        this.f4915xfbe0c504 = i;
        this.f4916x3271d0aa = obj;
    }

    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        switch (this.f4915xfbe0c504) {
            case 0:
                return FrameworkSQLiteDatabase.m816xfbe0c504((SupportSQLiteQuery) this.f4916x3271d0aa, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            default:
                return FrameworkSQLiteDatabase.m817x3271d0aa((Function4) this.f4916x3271d0aa, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
        }
    }
}
