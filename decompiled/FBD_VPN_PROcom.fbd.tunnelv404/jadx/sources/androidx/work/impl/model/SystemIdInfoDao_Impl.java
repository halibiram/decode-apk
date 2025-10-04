package androidx.work.impl.model;

import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import defpackage.AbstractC1220xce36e9ad;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<SystemIdInfo> __insertionAdapterOfSystemIdInfo;
    private final SharedSQLiteStatement __preparedStmtOfRemoveSystemIdInfo;
    private final SharedSQLiteStatement __preparedStmtOfRemoveSystemIdInfo_1;

    public SystemIdInfoDao_Impl(@NonNull RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfSystemIdInfo = new EntityInsertionAdapter<SystemIdInfo>(roomDatabase) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            @NonNull
            public String createQuery() {
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(@NonNull SupportSQLiteStatement supportSQLiteStatement, @NonNull SystemIdInfo systemIdInfo) {
                supportSQLiteStatement.bindString(1, systemIdInfo.workSpecId);
                supportSQLiteStatement.bindLong(2, systemIdInfo.getGeneration());
                supportSQLiteStatement.bindLong(3, systemIdInfo.systemId);
            }
        };
        this.__preparedStmtOfRemoveSystemIdInfo = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            @NonNull
            public String createQuery() {
                return "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?";
            }
        };
        this.__preparedStmtOfRemoveSystemIdInfo_1 = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            @NonNull
            public String createQuery() {
                return "DELETE FROM SystemIdInfo where work_spec_id=?";
            }
        };
    }

    @NonNull
    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final /* synthetic */ SystemIdInfo getSystemIdInfo(WorkGenerationalId workGenerationalId) {
        return AbstractC1220xce36e9ad.m3961xfbe0c504(this, workGenerationalId);
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public List<String> getWorkSpecIds() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void insertSystemIdInfo(SystemIdInfo systemIdInfo) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfSystemIdInfo.insert((EntityInsertionAdapter<SystemIdInfo>) systemIdInfo);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final /* synthetic */ void removeSystemIdInfo(WorkGenerationalId workGenerationalId) {
        AbstractC1220xce36e9ad.m3962x3271d0aa(this, workGenerationalId);
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo getSystemIdInfo(String str, int i) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?", 2);
        acquire.bindString(1, str);
        acquire.bindLong(2, i);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            return query.moveToFirst() ? new SystemIdInfo(query.getString(CursorUtil.getColumnIndexOrThrow(query, "work_spec_id")), query.getInt(CursorUtil.getColumnIndexOrThrow(query, "generation")), query.getInt(CursorUtil.getColumnIndexOrThrow(query, "system_id"))) : null;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(String str, int i) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveSystemIdInfo.acquire();
        acquire.bindString(1, str);
        acquire.bindLong(2, i);
        try {
            this.__db.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfRemoveSystemIdInfo.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveSystemIdInfo_1.acquire();
        acquire.bindString(1, str);
        try {
            this.__db.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfRemoveSystemIdInfo_1.release(acquire);
        }
    }
}
