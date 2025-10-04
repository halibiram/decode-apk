package androidx.work.impl.model;

import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.LiveData;
import androidx.room.CoroutinesRoom;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import defpackage.C1063xd10824aa;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlinx.coroutines.flow.Flow;

/* loaded from: classes.dex */
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {
    private final RoomDatabase __db;

    /* renamed from: androidx.work.impl.model.RawWorkInfoDao_Impl$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Callable<List<WorkSpec.WorkInfoPojo>> {
        final /* synthetic */ SupportSQLiteQuery val$query;

        public AnonymousClass1(SupportSQLiteQuery supportSQLiteQuery) {
            r2 = supportSQLiteQuery;
        }

        @Override // java.util.concurrent.Callable
        @Nullable
        public List<WorkSpec.WorkInfoPojo> call() {
            long j;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            long j2;
            int i6;
            int i7;
            int i8;
            NetworkType intToNetworkType;
            int i9;
            NetworkRequestCompat networkRequest$work_runtime_release;
            int i10;
            boolean z;
            int i11;
            boolean z2;
            int i12;
            boolean z3;
            int i13;
            int i14;
            boolean z4;
            long j3;
            int i15;
            int i16;
            Cursor query = DBUtil.query(RawWorkInfoDao_Impl.this.__db, r2, true, null);
            try {
                int columnIndex = CursorUtil.getColumnIndex(query, "id");
                int columnIndex2 = CursorUtil.getColumnIndex(query, "state");
                int columnIndex3 = CursorUtil.getColumnIndex(query, "output");
                int columnIndex4 = CursorUtil.getColumnIndex(query, "initial_delay");
                int columnIndex5 = CursorUtil.getColumnIndex(query, "interval_duration");
                int columnIndex6 = CursorUtil.getColumnIndex(query, "flex_duration");
                int columnIndex7 = CursorUtil.getColumnIndex(query, "run_attempt_count");
                int columnIndex8 = CursorUtil.getColumnIndex(query, "backoff_policy");
                int columnIndex9 = CursorUtil.getColumnIndex(query, "backoff_delay_duration");
                int columnIndex10 = CursorUtil.getColumnIndex(query, "last_enqueue_time");
                int columnIndex11 = CursorUtil.getColumnIndex(query, "period_count");
                int columnIndex12 = CursorUtil.getColumnIndex(query, "generation");
                int columnIndex13 = CursorUtil.getColumnIndex(query, "next_schedule_time_override");
                int columnIndex14 = CursorUtil.getColumnIndex(query, "stop_reason");
                int columnIndex15 = CursorUtil.getColumnIndex(query, "required_network_type");
                int columnIndex16 = CursorUtil.getColumnIndex(query, "required_network_request");
                int columnIndex17 = CursorUtil.getColumnIndex(query, "requires_charging");
                int columnIndex18 = CursorUtil.getColumnIndex(query, "requires_device_idle");
                int columnIndex19 = CursorUtil.getColumnIndex(query, "requires_battery_not_low");
                int columnIndex20 = CursorUtil.getColumnIndex(query, "requires_storage_not_low");
                int columnIndex21 = CursorUtil.getColumnIndex(query, "trigger_content_update_delay");
                int columnIndex22 = CursorUtil.getColumnIndex(query, "trigger_max_content_delay");
                int columnIndex23 = CursorUtil.getColumnIndex(query, "content_uri_triggers");
                HashMap hashMap = new HashMap();
                int i17 = columnIndex13;
                HashMap hashMap2 = new HashMap();
                while (query.moveToNext()) {
                    int i18 = columnIndex12;
                    String string = query.getString(columnIndex);
                    if (hashMap.containsKey(string)) {
                        i16 = columnIndex11;
                    } else {
                        i16 = columnIndex11;
                        hashMap.put(string, new ArrayList());
                    }
                    String string2 = query.getString(columnIndex);
                    if (!hashMap2.containsKey(string2)) {
                        hashMap2.put(string2, new ArrayList());
                    }
                    columnIndex12 = i18;
                    columnIndex11 = i16;
                }
                int i19 = columnIndex11;
                int i20 = columnIndex12;
                query.moveToPosition(-1);
                RawWorkInfoDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                RawWorkInfoDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string3 = columnIndex == -1 ? null : query.getString(columnIndex);
                    WorkInfo.State intToState = columnIndex2 == -1 ? null : WorkTypeConverters.intToState(query.getInt(columnIndex2));
                    Data fromByteArray = columnIndex3 == -1 ? null : Data.fromByteArray(query.getBlob(columnIndex3));
                    long j4 = columnIndex4 == -1 ? 0L : query.getLong(columnIndex4);
                    long j5 = columnIndex5 == -1 ? 0L : query.getLong(columnIndex5);
                    long j6 = columnIndex6 == -1 ? 0L : query.getLong(columnIndex6);
                    int i21 = columnIndex7 == -1 ? 0 : query.getInt(columnIndex7);
                    BackoffPolicy intToBackoffPolicy = columnIndex8 == -1 ? null : WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndex8));
                    long j7 = columnIndex9 == -1 ? 0L : query.getLong(columnIndex9);
                    if (columnIndex10 == -1) {
                        i = i19;
                        j = 0;
                    } else {
                        j = query.getLong(columnIndex10);
                        i = i19;
                    }
                    if (i == -1) {
                        i19 = i;
                        i3 = i20;
                        i2 = 0;
                    } else {
                        i2 = query.getInt(i);
                        i19 = i;
                        i3 = i20;
                    }
                    if (i3 == -1) {
                        i20 = i3;
                        i5 = i17;
                        i4 = 0;
                    } else {
                        i4 = query.getInt(i3);
                        i20 = i3;
                        i5 = i17;
                    }
                    if (i5 == -1) {
                        i17 = i5;
                        i6 = columnIndex14;
                        j2 = 0;
                    } else {
                        j2 = query.getLong(i5);
                        i17 = i5;
                        i6 = columnIndex14;
                    }
                    if (i6 == -1) {
                        columnIndex14 = i6;
                        i8 = columnIndex15;
                        i7 = 0;
                    } else {
                        i7 = query.getInt(i6);
                        columnIndex14 = i6;
                        i8 = columnIndex15;
                    }
                    if (i8 == -1) {
                        columnIndex15 = i8;
                        i9 = columnIndex16;
                        intToNetworkType = null;
                    } else {
                        intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i8));
                        columnIndex15 = i8;
                        i9 = columnIndex16;
                    }
                    if (i9 == -1) {
                        columnIndex16 = i9;
                        i10 = columnIndex17;
                        networkRequest$work_runtime_release = null;
                    } else {
                        networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i9));
                        columnIndex16 = i9;
                        i10 = columnIndex17;
                    }
                    if (i10 == -1) {
                        columnIndex17 = i10;
                        i11 = columnIndex18;
                        z = false;
                    } else {
                        z = query.getInt(i10) != 0;
                        columnIndex17 = i10;
                        i11 = columnIndex18;
                    }
                    if (i11 == -1) {
                        columnIndex18 = i11;
                        i12 = columnIndex19;
                        z2 = false;
                    } else {
                        z2 = query.getInt(i11) != 0;
                        columnIndex18 = i11;
                        i12 = columnIndex19;
                    }
                    if (i12 == -1) {
                        columnIndex19 = i12;
                        i13 = columnIndex20;
                        z3 = false;
                    } else {
                        z3 = query.getInt(i12) != 0;
                        columnIndex19 = i12;
                        i13 = columnIndex20;
                    }
                    if (i13 == -1) {
                        columnIndex20 = i13;
                        i14 = columnIndex21;
                        z4 = false;
                    } else {
                        boolean z5 = query.getInt(i13) != 0;
                        columnIndex20 = i13;
                        i14 = columnIndex21;
                        z4 = z5;
                    }
                    if (i14 == -1) {
                        columnIndex21 = i14;
                        i15 = columnIndex22;
                        j3 = 0;
                    } else {
                        j3 = query.getLong(i14);
                        columnIndex21 = i14;
                        i15 = columnIndex22;
                    }
                    long j8 = i15 != -1 ? query.getLong(i15) : 0L;
                    columnIndex22 = i15;
                    int i22 = columnIndex23;
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j4, j5, j6, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, j3, j8, i22 == -1 ? null : WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i22))), i21, intToBackoffPolicy, j7, j, i2, i4, j2, i7, (ArrayList) hashMap.get(query.getString(columnIndex)), (ArrayList) hashMap2.get(query.getString(columnIndex))));
                    columnIndex23 = i22;
                }
                query.close();
                return arrayList;
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
    }

    /* renamed from: androidx.work.impl.model.RawWorkInfoDao_Impl$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Callable<List<WorkSpec.WorkInfoPojo>> {
        final /* synthetic */ SupportSQLiteQuery val$query;

        public AnonymousClass2(SupportSQLiteQuery supportSQLiteQuery) {
            r2 = supportSQLiteQuery;
        }

        @Override // java.util.concurrent.Callable
        @NonNull
        public List<WorkSpec.WorkInfoPojo> call() {
            long j;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            long j2;
            int i6;
            int i7;
            int i8;
            NetworkType intToNetworkType;
            int i9;
            NetworkRequestCompat networkRequest$work_runtime_release;
            int i10;
            boolean z;
            int i11;
            boolean z2;
            int i12;
            boolean z3;
            int i13;
            int i14;
            boolean z4;
            long j3;
            int i15;
            int i16;
            Cursor query = DBUtil.query(RawWorkInfoDao_Impl.this.__db, r2, true, null);
            try {
                int columnIndex = CursorUtil.getColumnIndex(query, "id");
                int columnIndex2 = CursorUtil.getColumnIndex(query, "state");
                int columnIndex3 = CursorUtil.getColumnIndex(query, "output");
                int columnIndex4 = CursorUtil.getColumnIndex(query, "initial_delay");
                int columnIndex5 = CursorUtil.getColumnIndex(query, "interval_duration");
                int columnIndex6 = CursorUtil.getColumnIndex(query, "flex_duration");
                int columnIndex7 = CursorUtil.getColumnIndex(query, "run_attempt_count");
                int columnIndex8 = CursorUtil.getColumnIndex(query, "backoff_policy");
                int columnIndex9 = CursorUtil.getColumnIndex(query, "backoff_delay_duration");
                int columnIndex10 = CursorUtil.getColumnIndex(query, "last_enqueue_time");
                int columnIndex11 = CursorUtil.getColumnIndex(query, "period_count");
                int columnIndex12 = CursorUtil.getColumnIndex(query, "generation");
                int columnIndex13 = CursorUtil.getColumnIndex(query, "next_schedule_time_override");
                int columnIndex14 = CursorUtil.getColumnIndex(query, "stop_reason");
                int columnIndex15 = CursorUtil.getColumnIndex(query, "required_network_type");
                int columnIndex16 = CursorUtil.getColumnIndex(query, "required_network_request");
                int columnIndex17 = CursorUtil.getColumnIndex(query, "requires_charging");
                int columnIndex18 = CursorUtil.getColumnIndex(query, "requires_device_idle");
                int columnIndex19 = CursorUtil.getColumnIndex(query, "requires_battery_not_low");
                int columnIndex20 = CursorUtil.getColumnIndex(query, "requires_storage_not_low");
                int columnIndex21 = CursorUtil.getColumnIndex(query, "trigger_content_update_delay");
                int columnIndex22 = CursorUtil.getColumnIndex(query, "trigger_max_content_delay");
                int columnIndex23 = CursorUtil.getColumnIndex(query, "content_uri_triggers");
                HashMap hashMap = new HashMap();
                int i17 = columnIndex13;
                HashMap hashMap2 = new HashMap();
                while (query.moveToNext()) {
                    int i18 = columnIndex12;
                    String string = query.getString(columnIndex);
                    if (hashMap.containsKey(string)) {
                        i16 = columnIndex11;
                    } else {
                        i16 = columnIndex11;
                        hashMap.put(string, new ArrayList());
                    }
                    String string2 = query.getString(columnIndex);
                    if (!hashMap2.containsKey(string2)) {
                        hashMap2.put(string2, new ArrayList());
                    }
                    columnIndex12 = i18;
                    columnIndex11 = i16;
                }
                int i19 = columnIndex11;
                int i20 = columnIndex12;
                query.moveToPosition(-1);
                RawWorkInfoDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                RawWorkInfoDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string3 = columnIndex == -1 ? null : query.getString(columnIndex);
                    WorkInfo.State intToState = columnIndex2 == -1 ? null : WorkTypeConverters.intToState(query.getInt(columnIndex2));
                    Data fromByteArray = columnIndex3 == -1 ? null : Data.fromByteArray(query.getBlob(columnIndex3));
                    long j4 = columnIndex4 == -1 ? 0L : query.getLong(columnIndex4);
                    long j5 = columnIndex5 == -1 ? 0L : query.getLong(columnIndex5);
                    long j6 = columnIndex6 == -1 ? 0L : query.getLong(columnIndex6);
                    int i21 = columnIndex7 == -1 ? 0 : query.getInt(columnIndex7);
                    BackoffPolicy intToBackoffPolicy = columnIndex8 == -1 ? null : WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndex8));
                    long j7 = columnIndex9 == -1 ? 0L : query.getLong(columnIndex9);
                    if (columnIndex10 == -1) {
                        i = i19;
                        j = 0;
                    } else {
                        j = query.getLong(columnIndex10);
                        i = i19;
                    }
                    if (i == -1) {
                        i19 = i;
                        i3 = i20;
                        i2 = 0;
                    } else {
                        i2 = query.getInt(i);
                        i19 = i;
                        i3 = i20;
                    }
                    if (i3 == -1) {
                        i20 = i3;
                        i5 = i17;
                        i4 = 0;
                    } else {
                        i4 = query.getInt(i3);
                        i20 = i3;
                        i5 = i17;
                    }
                    if (i5 == -1) {
                        i17 = i5;
                        i6 = columnIndex14;
                        j2 = 0;
                    } else {
                        j2 = query.getLong(i5);
                        i17 = i5;
                        i6 = columnIndex14;
                    }
                    if (i6 == -1) {
                        columnIndex14 = i6;
                        i8 = columnIndex15;
                        i7 = 0;
                    } else {
                        i7 = query.getInt(i6);
                        columnIndex14 = i6;
                        i8 = columnIndex15;
                    }
                    if (i8 == -1) {
                        columnIndex15 = i8;
                        i9 = columnIndex16;
                        intToNetworkType = null;
                    } else {
                        intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i8));
                        columnIndex15 = i8;
                        i9 = columnIndex16;
                    }
                    if (i9 == -1) {
                        columnIndex16 = i9;
                        i10 = columnIndex17;
                        networkRequest$work_runtime_release = null;
                    } else {
                        networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i9));
                        columnIndex16 = i9;
                        i10 = columnIndex17;
                    }
                    if (i10 == -1) {
                        columnIndex17 = i10;
                        i11 = columnIndex18;
                        z = false;
                    } else {
                        z = query.getInt(i10) != 0;
                        columnIndex17 = i10;
                        i11 = columnIndex18;
                    }
                    if (i11 == -1) {
                        columnIndex18 = i11;
                        i12 = columnIndex19;
                        z2 = false;
                    } else {
                        z2 = query.getInt(i11) != 0;
                        columnIndex18 = i11;
                        i12 = columnIndex19;
                    }
                    if (i12 == -1) {
                        columnIndex19 = i12;
                        i13 = columnIndex20;
                        z3 = false;
                    } else {
                        z3 = query.getInt(i12) != 0;
                        columnIndex19 = i12;
                        i13 = columnIndex20;
                    }
                    if (i13 == -1) {
                        columnIndex20 = i13;
                        i14 = columnIndex21;
                        z4 = false;
                    } else {
                        boolean z5 = query.getInt(i13) != 0;
                        columnIndex20 = i13;
                        i14 = columnIndex21;
                        z4 = z5;
                    }
                    if (i14 == -1) {
                        columnIndex21 = i14;
                        i15 = columnIndex22;
                        j3 = 0;
                    } else {
                        j3 = query.getLong(i14);
                        columnIndex21 = i14;
                        i15 = columnIndex22;
                    }
                    long j8 = i15 != -1 ? query.getLong(i15) : 0L;
                    columnIndex22 = i15;
                    int i22 = columnIndex23;
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j4, j5, j6, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, j3, j8, i22 == -1 ? null : WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i22))), i21, intToBackoffPolicy, j7, j, i2, i4, j2, i7, (ArrayList) hashMap.get(query.getString(columnIndex)), (ArrayList) hashMap2.get(query.getString(columnIndex))));
                    columnIndex23 = i22;
                }
                query.close();
                return arrayList;
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
    }

    public RawWorkInfoDao_Impl(@NonNull RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public void __fetchRelationshipWorkProgressAsandroidxWorkData(@NonNull HashMap<String, ArrayList<Data>> hashMap) {
        Set<String> keySet = hashMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (hashMap.size() > 999) {
            RelationUtil.recursiveFetchHashMap(hashMap, true, new C1063xd10824aa(this, 1));
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        Iterator<String> it = keySet.iterator();
        int i = 1;
        while (it.hasNext()) {
            acquire.bindString(i, it.next());
            i++;
        }
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList<Data> arrayList = hashMap.get(query.getString(columnIndex));
                if (arrayList != null) {
                    arrayList.add(Data.fromByteArray(query.getBlob(0)));
                }
            }
        } finally {
            query.close();
        }
    }

    public void __fetchRelationshipWorkTagAsjavaLangString(@NonNull HashMap<String, ArrayList<String>> hashMap) {
        Set<String> keySet = hashMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (hashMap.size() > 999) {
            RelationUtil.recursiveFetchHashMap(hashMap, true, new C1063xd10824aa(this, 0));
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        Iterator<String> it = keySet.iterator();
        int i = 1;
        while (it.hasNext()) {
            acquire.bindString(i, it.next());
            i++;
        }
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList<String> arrayList = hashMap.get(query.getString(columnIndex));
                if (arrayList != null) {
                    arrayList.add(query.getString(0));
                }
            }
        } finally {
            query.close();
        }
    }

    @NonNull
    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    public /* synthetic */ Unit lambda$__fetchRelationshipWorkProgressAsandroidxWorkData$1(HashMap hashMap) {
        __fetchRelationshipWorkProgressAsandroidxWorkData(hashMap);
        return Unit.INSTANCE;
    }

    public /* synthetic */ Unit lambda$__fetchRelationshipWorkTagAsjavaLangString$0(HashMap hashMap) {
        __fetchRelationshipWorkTagAsjavaLangString(hashMap);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(SupportSQLiteQuery supportSQLiteQuery) {
        String string;
        WorkInfo.State intToState;
        Data fromByteArray;
        long j;
        long j2;
        long j3;
        int i;
        BackoffPolicy intToBackoffPolicy;
        long j4;
        long j5;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        long j6;
        int i7;
        int i8;
        NetworkType intToNetworkType;
        int i9;
        NetworkRequestCompat networkRequest$work_runtime_release;
        int i10;
        boolean z;
        boolean z2;
        int i11;
        boolean z3;
        boolean z4;
        int i12;
        boolean z5;
        boolean z6;
        int i13;
        int i14;
        boolean z7;
        long j7;
        int i15;
        Set<Constraints.ContentUriTrigger> byteArrayToSetOfTriggers;
        int i16;
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, supportSQLiteQuery, true, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "id");
            int columnIndex2 = CursorUtil.getColumnIndex(query, "state");
            int columnIndex3 = CursorUtil.getColumnIndex(query, "output");
            int columnIndex4 = CursorUtil.getColumnIndex(query, "initial_delay");
            int columnIndex5 = CursorUtil.getColumnIndex(query, "interval_duration");
            int columnIndex6 = CursorUtil.getColumnIndex(query, "flex_duration");
            int columnIndex7 = CursorUtil.getColumnIndex(query, "run_attempt_count");
            int columnIndex8 = CursorUtil.getColumnIndex(query, "backoff_policy");
            int columnIndex9 = CursorUtil.getColumnIndex(query, "backoff_delay_duration");
            int columnIndex10 = CursorUtil.getColumnIndex(query, "last_enqueue_time");
            int columnIndex11 = CursorUtil.getColumnIndex(query, "period_count");
            int columnIndex12 = CursorUtil.getColumnIndex(query, "generation");
            int columnIndex13 = CursorUtil.getColumnIndex(query, "next_schedule_time_override");
            int columnIndex14 = CursorUtil.getColumnIndex(query, "stop_reason");
            int columnIndex15 = CursorUtil.getColumnIndex(query, "required_network_type");
            int columnIndex16 = CursorUtil.getColumnIndex(query, "required_network_request");
            int columnIndex17 = CursorUtil.getColumnIndex(query, "requires_charging");
            int columnIndex18 = CursorUtil.getColumnIndex(query, "requires_device_idle");
            int columnIndex19 = CursorUtil.getColumnIndex(query, "requires_battery_not_low");
            int columnIndex20 = CursorUtil.getColumnIndex(query, "requires_storage_not_low");
            int columnIndex21 = CursorUtil.getColumnIndex(query, "trigger_content_update_delay");
            int columnIndex22 = CursorUtil.getColumnIndex(query, "trigger_max_content_delay");
            int columnIndex23 = CursorUtil.getColumnIndex(query, "content_uri_triggers");
            HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
            int i17 = columnIndex13;
            HashMap<String, ArrayList<Data>> hashMap2 = new HashMap<>();
            while (query.moveToNext()) {
                int i18 = columnIndex12;
                String string2 = query.getString(columnIndex);
                if (!hashMap.containsKey(string2)) {
                    i16 = columnIndex11;
                    hashMap.put(string2, new ArrayList<>());
                } else {
                    i16 = columnIndex11;
                }
                String string3 = query.getString(columnIndex);
                if (!hashMap2.containsKey(string3)) {
                    hashMap2.put(string3, new ArrayList<>());
                }
                columnIndex12 = i18;
                columnIndex11 = i16;
            }
            int i19 = columnIndex11;
            int i20 = columnIndex12;
            query.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(hashMap);
            __fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                if (columnIndex == -1) {
                    string = null;
                } else {
                    string = query.getString(columnIndex);
                }
                if (columnIndex2 == -1) {
                    intToState = null;
                } else {
                    intToState = WorkTypeConverters.intToState(query.getInt(columnIndex2));
                }
                if (columnIndex3 == -1) {
                    fromByteArray = null;
                } else {
                    fromByteArray = Data.fromByteArray(query.getBlob(columnIndex3));
                }
                long j8 = 0;
                if (columnIndex4 == -1) {
                    j = 0;
                } else {
                    j = query.getLong(columnIndex4);
                }
                if (columnIndex5 == -1) {
                    j2 = 0;
                } else {
                    j2 = query.getLong(columnIndex5);
                }
                if (columnIndex6 == -1) {
                    j3 = 0;
                } else {
                    j3 = query.getLong(columnIndex6);
                }
                boolean z8 = false;
                if (columnIndex7 == -1) {
                    i = 0;
                } else {
                    i = query.getInt(columnIndex7);
                }
                if (columnIndex8 == -1) {
                    intToBackoffPolicy = null;
                } else {
                    intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndex8));
                }
                if (columnIndex9 == -1) {
                    j4 = 0;
                } else {
                    j4 = query.getLong(columnIndex9);
                }
                if (columnIndex10 == -1) {
                    i2 = i19;
                    j5 = 0;
                } else {
                    j5 = query.getLong(columnIndex10);
                    i2 = i19;
                }
                if (i2 == -1) {
                    i19 = i2;
                    i4 = i20;
                    i3 = 0;
                } else {
                    i3 = query.getInt(i2);
                    i19 = i2;
                    i4 = i20;
                }
                if (i4 == -1) {
                    i20 = i4;
                    i6 = i17;
                    i5 = 0;
                } else {
                    i5 = query.getInt(i4);
                    i20 = i4;
                    i6 = i17;
                }
                if (i6 == -1) {
                    i17 = i6;
                    j6 = 0;
                } else {
                    j6 = query.getLong(i6);
                    i17 = i6;
                }
                int i21 = columnIndex14;
                if (i21 == -1) {
                    columnIndex14 = i21;
                    i8 = columnIndex15;
                    i7 = 0;
                } else {
                    i7 = query.getInt(i21);
                    columnIndex14 = i21;
                    i8 = columnIndex15;
                }
                if (i8 == -1) {
                    columnIndex15 = i8;
                    i9 = columnIndex16;
                    intToNetworkType = null;
                } else {
                    intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i8));
                    columnIndex15 = i8;
                    i9 = columnIndex16;
                }
                if (i9 == -1) {
                    columnIndex16 = i9;
                    i10 = columnIndex17;
                    networkRequest$work_runtime_release = null;
                } else {
                    networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i9));
                    columnIndex16 = i9;
                    i10 = columnIndex17;
                }
                if (i10 == -1) {
                    columnIndex17 = i10;
                    i11 = columnIndex18;
                    z2 = false;
                } else {
                    if (query.getInt(i10) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    z2 = z;
                    columnIndex17 = i10;
                    i11 = columnIndex18;
                }
                if (i11 == -1) {
                    columnIndex18 = i11;
                    i12 = columnIndex19;
                    z4 = false;
                } else {
                    if (query.getInt(i11) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    z4 = z3;
                    columnIndex18 = i11;
                    i12 = columnIndex19;
                }
                if (i12 == -1) {
                    columnIndex19 = i12;
                    i13 = columnIndex20;
                    z6 = false;
                } else {
                    if (query.getInt(i12) != 0) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z5;
                    columnIndex19 = i12;
                    i13 = columnIndex20;
                }
                if (i13 == -1) {
                    columnIndex20 = i13;
                    i14 = columnIndex21;
                    z7 = false;
                } else {
                    if (query.getInt(i13) != 0) {
                        z8 = true;
                    }
                    columnIndex20 = i13;
                    i14 = columnIndex21;
                    z7 = z8;
                }
                if (i14 == -1) {
                    columnIndex21 = i14;
                    i15 = columnIndex22;
                    j7 = 0;
                } else {
                    j7 = query.getLong(i14);
                    columnIndex21 = i14;
                    i15 = columnIndex22;
                }
                if (i15 != -1) {
                    j8 = query.getLong(i15);
                }
                columnIndex22 = i15;
                int i22 = columnIndex23;
                long j9 = j8;
                if (i22 == -1) {
                    byteArrayToSetOfTriggers = null;
                } else {
                    byteArrayToSetOfTriggers = WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i22));
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(string, intToState, fromByteArray, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z4, z6, z7, j7, j9, byteArrayToSetOfTriggers), i, intToBackoffPolicy, j4, j5, i3, i5, j6, i7, hashMap.get(query.getString(columnIndex)), hashMap2.get(query.getString(columnIndex))));
                columnIndex23 = i22;
            }
            query.close();
            return arrayList;
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosFlow(SupportSQLiteQuery supportSQLiteQuery) {
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl.2
            final /* synthetic */ SupportSQLiteQuery val$query;

            public AnonymousClass2(SupportSQLiteQuery supportSQLiteQuery2) {
                r2 = supportSQLiteQuery2;
            }

            @Override // java.util.concurrent.Callable
            @NonNull
            public List<WorkSpec.WorkInfoPojo> call() {
                long j;
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                long j2;
                int i6;
                int i7;
                int i8;
                NetworkType intToNetworkType;
                int i9;
                NetworkRequestCompat networkRequest$work_runtime_release;
                int i10;
                boolean z;
                int i11;
                boolean z2;
                int i12;
                boolean z3;
                int i13;
                int i14;
                boolean z4;
                long j3;
                int i15;
                int i16;
                Cursor query = DBUtil.query(RawWorkInfoDao_Impl.this.__db, r2, true, null);
                try {
                    int columnIndex = CursorUtil.getColumnIndex(query, "id");
                    int columnIndex2 = CursorUtil.getColumnIndex(query, "state");
                    int columnIndex3 = CursorUtil.getColumnIndex(query, "output");
                    int columnIndex4 = CursorUtil.getColumnIndex(query, "initial_delay");
                    int columnIndex5 = CursorUtil.getColumnIndex(query, "interval_duration");
                    int columnIndex6 = CursorUtil.getColumnIndex(query, "flex_duration");
                    int columnIndex7 = CursorUtil.getColumnIndex(query, "run_attempt_count");
                    int columnIndex8 = CursorUtil.getColumnIndex(query, "backoff_policy");
                    int columnIndex9 = CursorUtil.getColumnIndex(query, "backoff_delay_duration");
                    int columnIndex10 = CursorUtil.getColumnIndex(query, "last_enqueue_time");
                    int columnIndex11 = CursorUtil.getColumnIndex(query, "period_count");
                    int columnIndex12 = CursorUtil.getColumnIndex(query, "generation");
                    int columnIndex13 = CursorUtil.getColumnIndex(query, "next_schedule_time_override");
                    int columnIndex14 = CursorUtil.getColumnIndex(query, "stop_reason");
                    int columnIndex15 = CursorUtil.getColumnIndex(query, "required_network_type");
                    int columnIndex16 = CursorUtil.getColumnIndex(query, "required_network_request");
                    int columnIndex17 = CursorUtil.getColumnIndex(query, "requires_charging");
                    int columnIndex18 = CursorUtil.getColumnIndex(query, "requires_device_idle");
                    int columnIndex19 = CursorUtil.getColumnIndex(query, "requires_battery_not_low");
                    int columnIndex20 = CursorUtil.getColumnIndex(query, "requires_storage_not_low");
                    int columnIndex21 = CursorUtil.getColumnIndex(query, "trigger_content_update_delay");
                    int columnIndex22 = CursorUtil.getColumnIndex(query, "trigger_max_content_delay");
                    int columnIndex23 = CursorUtil.getColumnIndex(query, "content_uri_triggers");
                    HashMap hashMap = new HashMap();
                    int i17 = columnIndex13;
                    HashMap hashMap2 = new HashMap();
                    while (query.moveToNext()) {
                        int i18 = columnIndex12;
                        String string = query.getString(columnIndex);
                        if (hashMap.containsKey(string)) {
                            i16 = columnIndex11;
                        } else {
                            i16 = columnIndex11;
                            hashMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(columnIndex);
                        if (!hashMap2.containsKey(string2)) {
                            hashMap2.put(string2, new ArrayList());
                        }
                        columnIndex12 = i18;
                        columnIndex11 = i16;
                    }
                    int i19 = columnIndex11;
                    int i20 = columnIndex12;
                    query.moveToPosition(-1);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = columnIndex == -1 ? null : query.getString(columnIndex);
                        WorkInfo.State intToState = columnIndex2 == -1 ? null : WorkTypeConverters.intToState(query.getInt(columnIndex2));
                        Data fromByteArray = columnIndex3 == -1 ? null : Data.fromByteArray(query.getBlob(columnIndex3));
                        long j4 = columnIndex4 == -1 ? 0L : query.getLong(columnIndex4);
                        long j5 = columnIndex5 == -1 ? 0L : query.getLong(columnIndex5);
                        long j6 = columnIndex6 == -1 ? 0L : query.getLong(columnIndex6);
                        int i21 = columnIndex7 == -1 ? 0 : query.getInt(columnIndex7);
                        BackoffPolicy intToBackoffPolicy = columnIndex8 == -1 ? null : WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndex8));
                        long j7 = columnIndex9 == -1 ? 0L : query.getLong(columnIndex9);
                        if (columnIndex10 == -1) {
                            i = i19;
                            j = 0;
                        } else {
                            j = query.getLong(columnIndex10);
                            i = i19;
                        }
                        if (i == -1) {
                            i19 = i;
                            i3 = i20;
                            i2 = 0;
                        } else {
                            i2 = query.getInt(i);
                            i19 = i;
                            i3 = i20;
                        }
                        if (i3 == -1) {
                            i20 = i3;
                            i5 = i17;
                            i4 = 0;
                        } else {
                            i4 = query.getInt(i3);
                            i20 = i3;
                            i5 = i17;
                        }
                        if (i5 == -1) {
                            i17 = i5;
                            i6 = columnIndex14;
                            j2 = 0;
                        } else {
                            j2 = query.getLong(i5);
                            i17 = i5;
                            i6 = columnIndex14;
                        }
                        if (i6 == -1) {
                            columnIndex14 = i6;
                            i8 = columnIndex15;
                            i7 = 0;
                        } else {
                            i7 = query.getInt(i6);
                            columnIndex14 = i6;
                            i8 = columnIndex15;
                        }
                        if (i8 == -1) {
                            columnIndex15 = i8;
                            i9 = columnIndex16;
                            intToNetworkType = null;
                        } else {
                            intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i8));
                            columnIndex15 = i8;
                            i9 = columnIndex16;
                        }
                        if (i9 == -1) {
                            columnIndex16 = i9;
                            i10 = columnIndex17;
                            networkRequest$work_runtime_release = null;
                        } else {
                            networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i9));
                            columnIndex16 = i9;
                            i10 = columnIndex17;
                        }
                        if (i10 == -1) {
                            columnIndex17 = i10;
                            i11 = columnIndex18;
                            z = false;
                        } else {
                            z = query.getInt(i10) != 0;
                            columnIndex17 = i10;
                            i11 = columnIndex18;
                        }
                        if (i11 == -1) {
                            columnIndex18 = i11;
                            i12 = columnIndex19;
                            z2 = false;
                        } else {
                            z2 = query.getInt(i11) != 0;
                            columnIndex18 = i11;
                            i12 = columnIndex19;
                        }
                        if (i12 == -1) {
                            columnIndex19 = i12;
                            i13 = columnIndex20;
                            z3 = false;
                        } else {
                            z3 = query.getInt(i12) != 0;
                            columnIndex19 = i12;
                            i13 = columnIndex20;
                        }
                        if (i13 == -1) {
                            columnIndex20 = i13;
                            i14 = columnIndex21;
                            z4 = false;
                        } else {
                            boolean z5 = query.getInt(i13) != 0;
                            columnIndex20 = i13;
                            i14 = columnIndex21;
                            z4 = z5;
                        }
                        if (i14 == -1) {
                            columnIndex21 = i14;
                            i15 = columnIndex22;
                            j3 = 0;
                        } else {
                            j3 = query.getLong(i14);
                            columnIndex21 = i14;
                            i15 = columnIndex22;
                        }
                        long j8 = i15 != -1 ? query.getLong(i15) : 0L;
                        columnIndex22 = i15;
                        int i22 = columnIndex23;
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j4, j5, j6, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, j3, j8, i22 == -1 ? null : WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i22))), i21, intToBackoffPolicy, j7, j, i2, i4, j2, i7, (ArrayList) hashMap.get(query.getString(columnIndex)), (ArrayList) hashMap2.get(query.getString(columnIndex))));
                        columnIndex23 = i22;
                    }
                    query.close();
                    return arrayList;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
        });
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(SupportSQLiteQuery supportSQLiteQuery) {
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, false, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl.1
            final /* synthetic */ SupportSQLiteQuery val$query;

            public AnonymousClass1(SupportSQLiteQuery supportSQLiteQuery2) {
                r2 = supportSQLiteQuery2;
            }

            @Override // java.util.concurrent.Callable
            @Nullable
            public List<WorkSpec.WorkInfoPojo> call() {
                long j;
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                long j2;
                int i6;
                int i7;
                int i8;
                NetworkType intToNetworkType;
                int i9;
                NetworkRequestCompat networkRequest$work_runtime_release;
                int i10;
                boolean z;
                int i11;
                boolean z2;
                int i12;
                boolean z3;
                int i13;
                int i14;
                boolean z4;
                long j3;
                int i15;
                int i16;
                Cursor query = DBUtil.query(RawWorkInfoDao_Impl.this.__db, r2, true, null);
                try {
                    int columnIndex = CursorUtil.getColumnIndex(query, "id");
                    int columnIndex2 = CursorUtil.getColumnIndex(query, "state");
                    int columnIndex3 = CursorUtil.getColumnIndex(query, "output");
                    int columnIndex4 = CursorUtil.getColumnIndex(query, "initial_delay");
                    int columnIndex5 = CursorUtil.getColumnIndex(query, "interval_duration");
                    int columnIndex6 = CursorUtil.getColumnIndex(query, "flex_duration");
                    int columnIndex7 = CursorUtil.getColumnIndex(query, "run_attempt_count");
                    int columnIndex8 = CursorUtil.getColumnIndex(query, "backoff_policy");
                    int columnIndex9 = CursorUtil.getColumnIndex(query, "backoff_delay_duration");
                    int columnIndex10 = CursorUtil.getColumnIndex(query, "last_enqueue_time");
                    int columnIndex11 = CursorUtil.getColumnIndex(query, "period_count");
                    int columnIndex12 = CursorUtil.getColumnIndex(query, "generation");
                    int columnIndex13 = CursorUtil.getColumnIndex(query, "next_schedule_time_override");
                    int columnIndex14 = CursorUtil.getColumnIndex(query, "stop_reason");
                    int columnIndex15 = CursorUtil.getColumnIndex(query, "required_network_type");
                    int columnIndex16 = CursorUtil.getColumnIndex(query, "required_network_request");
                    int columnIndex17 = CursorUtil.getColumnIndex(query, "requires_charging");
                    int columnIndex18 = CursorUtil.getColumnIndex(query, "requires_device_idle");
                    int columnIndex19 = CursorUtil.getColumnIndex(query, "requires_battery_not_low");
                    int columnIndex20 = CursorUtil.getColumnIndex(query, "requires_storage_not_low");
                    int columnIndex21 = CursorUtil.getColumnIndex(query, "trigger_content_update_delay");
                    int columnIndex22 = CursorUtil.getColumnIndex(query, "trigger_max_content_delay");
                    int columnIndex23 = CursorUtil.getColumnIndex(query, "content_uri_triggers");
                    HashMap hashMap = new HashMap();
                    int i17 = columnIndex13;
                    HashMap hashMap2 = new HashMap();
                    while (query.moveToNext()) {
                        int i18 = columnIndex12;
                        String string = query.getString(columnIndex);
                        if (hashMap.containsKey(string)) {
                            i16 = columnIndex11;
                        } else {
                            i16 = columnIndex11;
                            hashMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(columnIndex);
                        if (!hashMap2.containsKey(string2)) {
                            hashMap2.put(string2, new ArrayList());
                        }
                        columnIndex12 = i18;
                        columnIndex11 = i16;
                    }
                    int i19 = columnIndex11;
                    int i20 = columnIndex12;
                    query.moveToPosition(-1);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = columnIndex == -1 ? null : query.getString(columnIndex);
                        WorkInfo.State intToState = columnIndex2 == -1 ? null : WorkTypeConverters.intToState(query.getInt(columnIndex2));
                        Data fromByteArray = columnIndex3 == -1 ? null : Data.fromByteArray(query.getBlob(columnIndex3));
                        long j4 = columnIndex4 == -1 ? 0L : query.getLong(columnIndex4);
                        long j5 = columnIndex5 == -1 ? 0L : query.getLong(columnIndex5);
                        long j6 = columnIndex6 == -1 ? 0L : query.getLong(columnIndex6);
                        int i21 = columnIndex7 == -1 ? 0 : query.getInt(columnIndex7);
                        BackoffPolicy intToBackoffPolicy = columnIndex8 == -1 ? null : WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndex8));
                        long j7 = columnIndex9 == -1 ? 0L : query.getLong(columnIndex9);
                        if (columnIndex10 == -1) {
                            i = i19;
                            j = 0;
                        } else {
                            j = query.getLong(columnIndex10);
                            i = i19;
                        }
                        if (i == -1) {
                            i19 = i;
                            i3 = i20;
                            i2 = 0;
                        } else {
                            i2 = query.getInt(i);
                            i19 = i;
                            i3 = i20;
                        }
                        if (i3 == -1) {
                            i20 = i3;
                            i5 = i17;
                            i4 = 0;
                        } else {
                            i4 = query.getInt(i3);
                            i20 = i3;
                            i5 = i17;
                        }
                        if (i5 == -1) {
                            i17 = i5;
                            i6 = columnIndex14;
                            j2 = 0;
                        } else {
                            j2 = query.getLong(i5);
                            i17 = i5;
                            i6 = columnIndex14;
                        }
                        if (i6 == -1) {
                            columnIndex14 = i6;
                            i8 = columnIndex15;
                            i7 = 0;
                        } else {
                            i7 = query.getInt(i6);
                            columnIndex14 = i6;
                            i8 = columnIndex15;
                        }
                        if (i8 == -1) {
                            columnIndex15 = i8;
                            i9 = columnIndex16;
                            intToNetworkType = null;
                        } else {
                            intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i8));
                            columnIndex15 = i8;
                            i9 = columnIndex16;
                        }
                        if (i9 == -1) {
                            columnIndex16 = i9;
                            i10 = columnIndex17;
                            networkRequest$work_runtime_release = null;
                        } else {
                            networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i9));
                            columnIndex16 = i9;
                            i10 = columnIndex17;
                        }
                        if (i10 == -1) {
                            columnIndex17 = i10;
                            i11 = columnIndex18;
                            z = false;
                        } else {
                            z = query.getInt(i10) != 0;
                            columnIndex17 = i10;
                            i11 = columnIndex18;
                        }
                        if (i11 == -1) {
                            columnIndex18 = i11;
                            i12 = columnIndex19;
                            z2 = false;
                        } else {
                            z2 = query.getInt(i11) != 0;
                            columnIndex18 = i11;
                            i12 = columnIndex19;
                        }
                        if (i12 == -1) {
                            columnIndex19 = i12;
                            i13 = columnIndex20;
                            z3 = false;
                        } else {
                            z3 = query.getInt(i12) != 0;
                            columnIndex19 = i12;
                            i13 = columnIndex20;
                        }
                        if (i13 == -1) {
                            columnIndex20 = i13;
                            i14 = columnIndex21;
                            z4 = false;
                        } else {
                            boolean z5 = query.getInt(i13) != 0;
                            columnIndex20 = i13;
                            i14 = columnIndex21;
                            z4 = z5;
                        }
                        if (i14 == -1) {
                            columnIndex21 = i14;
                            i15 = columnIndex22;
                            j3 = 0;
                        } else {
                            j3 = query.getLong(i14);
                            columnIndex21 = i14;
                            i15 = columnIndex22;
                        }
                        long j8 = i15 != -1 ? query.getLong(i15) : 0L;
                        columnIndex22 = i15;
                        int i22 = columnIndex23;
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j4, j5, j6, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z, z2, z3, z4, j3, j8, i22 == -1 ? null : WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i22))), i21, intToBackoffPolicy, j7, j, i2, i4, j2, i7, (ArrayList) hashMap.get(query.getString(columnIndex)), (ArrayList) hashMap2.get(query.getString(columnIndex))));
                        columnIndex23 = i22;
                    }
                    query.close();
                    return arrayList;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
        });
    }
}
