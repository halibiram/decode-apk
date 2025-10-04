package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.sqlite.CursorWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@KeepForSdk
@KeepName
@SafeParcelable.Class(creator = "DataHolderCreator", validate = true)
/* loaded from: classes2.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new zaf();
    private static final Builder zaf = new zab(new String[0], null);

    @SafeParcelable.VersionField(id = 1000)
    final int zaa;
    Bundle zab;
    int[] zac;
    int zad;
    boolean zae;

    @SafeParcelable.Field(getter = "getColumns", id = 1)
    private final String[] zag;

    @SafeParcelable.Field(getter = "getWindows", id = 2)
    private final CursorWindow[] zah;

    @SafeParcelable.Field(getter = "getStatusCode", id = 3)
    private final int zai;

    @Nullable
    @SafeParcelable.Field(getter = "getMetadata", id = 4)
    private final Bundle zaj;
    private boolean zak;

    @KeepForSdk
    /* loaded from: classes2.dex */
    public static class Builder {
        private final String[] zaa;
        private final ArrayList<HashMap<String, Object>> zab = new ArrayList<>();
        private final HashMap<Object, Integer> zac = new HashMap<>();

        public /* synthetic */ Builder(String[] strArr, String str, zac zacVar) {
            this.zaa = (String[]) Preconditions.checkNotNull(strArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NonNull
        @KeepForSdk
        public DataHolder build(int i) {
            return new DataHolder(this, i);
        }

        @NonNull
        @KeepForSdk
        public Builder withRow(@NonNull ContentValues contentValues) {
            Asserts.checkNotNull(contentValues);
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return zaa(hashMap);
        }

        @NonNull
        public Builder zaa(@NonNull HashMap<String, Object> hashMap) {
            Asserts.checkNotNull(hashMap);
            this.zab.add(hashMap);
            return this;
        }

        @NonNull
        @KeepForSdk
        public DataHolder build(int i, @NonNull Bundle bundle) {
            return new DataHolder(this, i, bundle);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    @KeepForSdk
    public static Builder builder(@NonNull String[] strArr) {
        return new Builder(strArr, null, 0 == true ? 1 : 0);
    }

    @NonNull
    @KeepForSdk
    public static DataHolder empty(int i) {
        return new DataHolder(zaf, i, (Bundle) null);
    }

    private final void zae(String str, int i) {
        String str2;
        Bundle bundle = this.zab;
        if (bundle != null && bundle.containsKey(str)) {
            if (!isClosed()) {
                if (i >= 0 && i < this.zad) {
                    return;
                } else {
                    throw new CursorIndexOutOfBoundsException(i, this.zad);
                }
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8553772569750860485L, -6072976874923910574L, 1116428531417123225L, -7812602890769786281L}).toString());
        }
        String valueOf = String.valueOf(str);
        String obfuscatedString = new ObfuscatedString(new long[]{2401915695533489986L, 3092480273349046215L, 3070948793884356551L}).toString();
        if (valueOf.length() != 0) {
            str2 = obfuscatedString.concat(valueOf);
        } else {
            str2 = new String(obfuscatedString);
        }
        throw new IllegalArgumentException(str2);
    }

    private static CursorWindow[] zaf(Builder builder, int i) {
        CursorWindow cursorWindow;
        boolean putDouble;
        long j;
        boolean z = false;
        if (builder.zaa.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList arrayList = builder.zab;
        int size = arrayList.size();
        CursorWindow cursorWindow2 = new CursorWindow(false);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow2);
        cursorWindow2.setNumColumns(builder.zaa.length);
        int i2 = 0;
        boolean z2 = false;
        while (i2 < size) {
            try {
                if (!cursorWindow2.allocRow()) {
                    new ObfuscatedString(new long[]{-65506804595007274L, 133143100428527659L, -326788632814264819L, 12237745413414285L, -6787107699376940415L, 6755436756428145445L, -3152961124046400926L, 3704670732245236304L, -6483589366606709556L}).toString();
                    new ObfuscatedString(new long[]{-8721931161466417698L, -1514215505942170706L}).toString();
                    new ObfuscatedString(new long[]{-1497629937730991156L, 8846326972812395381L, -5397309909288935242L}).toString();
                    cursorWindow2 = new CursorWindow(z);
                    cursorWindow2.setStartPosition(i2);
                    cursorWindow2.setNumColumns(builder.zaa.length);
                    arrayList2.add(cursorWindow2);
                    if (!cursorWindow2.allocRow()) {
                        new ObfuscatedString(new long[]{-2371757249601317755L, -8158892594270923678L, -2384703695327457421L}).toString();
                        new ObfuscatedString(new long[]{-8874977028213810085L, -4780071537352748663L, 7865808632059778304L, -7740556378343080468L, 3518054973080438091L, 116028613378424749L}).toString();
                        arrayList2.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                Map map = (Map) arrayList.get(i2);
                int i3 = 0;
                boolean z3 = true;
                while (true) {
                    if (i3 < builder.zaa.length) {
                        if (!z3) {
                            break;
                        }
                        String str = builder.zaa[i3];
                        Object obj = map.get(str);
                        if (obj == null) {
                            z3 = cursorWindow2.putNull(i2, i3);
                        } else {
                            if (obj instanceof String) {
                                putDouble = cursorWindow2.putString((String) obj, i2, i3);
                            } else if (obj instanceof Long) {
                                putDouble = cursorWindow2.putLong(((Long) obj).longValue(), i2, i3);
                            } else if (obj instanceof Integer) {
                                putDouble = cursorWindow2.putLong(((Integer) obj).intValue(), i2, i3);
                            } else if (obj instanceof Boolean) {
                                if (true != ((Boolean) obj).booleanValue()) {
                                    j = 0;
                                } else {
                                    j = 1;
                                }
                                putDouble = cursorWindow2.putLong(j, i2, i3);
                            } else if (obj instanceof byte[]) {
                                putDouble = cursorWindow2.putBlob((byte[]) obj, i2, i3);
                            } else if (obj instanceof Double) {
                                putDouble = cursorWindow2.putDouble(((Double) obj).doubleValue(), i2, i3);
                            } else if (obj instanceof Float) {
                                putDouble = cursorWindow2.putDouble(((Float) obj).floatValue(), i2, i3);
                            } else {
                                String obj2 = obj.toString();
                                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 32 + obj2.length());
                                sb.append(new ObfuscatedString(new long[]{-8135397315135488698L, -8012543939519345855L, -493271855562086639L, 2979047323293515213L, -8407979398463132784L}).toString());
                                sb.append(str);
                                sb.append(new ObfuscatedString(new long[]{3485871462598485866L, -8848557351108767326L}).toString());
                                sb.append(obj2);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            z3 = putDouble;
                        }
                        i3++;
                    } else if (z3) {
                        cursorWindow = cursorWindow2;
                        z2 = false;
                    }
                }
                if (!z2) {
                    new ObfuscatedString(new long[]{-4543219310753221044L, -2409991779218431097L, 2615022013693167157L, -1726450328188203648L, 1975790576498413917L, -5745966823072517450L}).toString();
                    new ObfuscatedString(new long[]{3131261019994794363L, 4567481022937729534L, 3222800586068564705L, -2136036137831160940L, 2105360864777424241L}).toString();
                    new ObfuscatedString(new long[]{-3842599750976308256L, -8472429923895851525L, -3612098059509822442L}).toString();
                    cursorWindow2.freeLastRow();
                    try {
                        cursorWindow = new CursorWindow(false);
                        cursorWindow.setStartPosition(i2);
                        cursorWindow.setNumColumns(builder.zaa.length);
                        arrayList2.add(cursorWindow);
                        i2--;
                        z2 = true;
                        i2++;
                        cursorWindow2 = cursorWindow;
                        z = false;
                    } catch (RuntimeException e) {
                        e = e;
                    }
                } else {
                    throw new zad(new ObfuscatedString(new long[]{5850906147318021327L, -6364330143423621020L, -5490597844644461721L, -5801672788395099231L, -5141175107347197467L, 6854002313195480464L, 8305779377671934031L, 6482131181806817425L, 5845442827749796051L, 1834111719954698177L, -5591277829295364124L, 4575752139266866674L, -2284248111216449970L, 8607223369788029986L, -5986886725930450240L, -2039665817981388287L}).toString());
                }
                e = e;
            } catch (RuntimeException e2) {
                e = e2;
            }
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                ((CursorWindow) arrayList2.get(i4)).close();
            }
            throw e;
        }
        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    public void close() {
        synchronized (this) {
            try {
                if (!this.zae) {
                    this.zae = true;
                    int i = 0;
                    while (true) {
                        CursorWindow[] cursorWindowArr = this.zah;
                        if (i >= cursorWindowArr.length) {
                            break;
                        }
                        cursorWindowArr[i].close();
                        i++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void finalize() {
        try {
            if (this.zak && this.zah.length > 0 && !isClosed()) {
                close();
                new ObfuscatedString(new long[]{-2325691955636103827L, 4695229761089052534L, -57884106575721651L}).toString();
                new StringBuilder(String.valueOf(toString()).length() + 178);
                new ObfuscatedString(new long[]{7747665746848745865L, 6706950136993633606L, 7809067487793798654L, -8843215452489598822L, -5947660390638899162L, -3651479862797500760L, -7815050310880167716L, 6189485464167660130L, 6636500913618239290L, 6801636889588702300L, 2381801728547118093L, -8733875120041357345L, -6364130213492072654L, 7057344785226106987L, 3269981170035019378L, -6707470468827467559L, 6610475660483573551L, -8160693906097502734L, -5086494806076363971L, 6145005533430044627L, -262489150483983118L, -3878828054758224635L, -1815383752146602419L, 1862965420151431150L}).toString();
                new ObfuscatedString(new long[]{-5513537568088604703L, -5897218921227068691L}).toString();
            }
        } finally {
            super.finalize();
        }
    }

    @KeepForSdk
    public boolean getBoolean(@NonNull String str, int i, int i2) {
        zae(str, i);
        if (this.zah[i2].getLong(i, this.zab.getInt(str)) == 1) {
            return true;
        }
        return false;
    }

    @NonNull
    @KeepForSdk
    public byte[] getByteArray(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getBlob(i, this.zab.getInt(str));
    }

    @KeepForSdk
    public int getCount() {
        return this.zad;
    }

    @KeepForSdk
    public int getInteger(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getInt(i, this.zab.getInt(str));
    }

    @KeepForSdk
    public long getLong(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getLong(i, this.zab.getInt(str));
    }

    @Nullable
    @KeepForSdk
    public Bundle getMetadata() {
        return this.zaj;
    }

    @KeepForSdk
    public int getStatusCode() {
        return this.zai;
    }

    @NonNull
    @KeepForSdk
    public String getString(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getString(i, this.zab.getInt(str));
    }

    @KeepForSdk
    public int getWindowIndex(int i) {
        boolean z;
        int length;
        int i2 = 0;
        if (i >= 0 && i < this.zad) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        while (true) {
            int[] iArr = this.zac;
            length = iArr.length;
            if (i2 >= length) {
                break;
            }
            if (i < iArr[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        if (i2 == length) {
            return i2 - 1;
        }
        return i2;
    }

    @KeepForSdk
    public boolean hasColumn(@NonNull String str) {
        return this.zab.containsKey(str);
    }

    @KeepForSdk
    public boolean hasNull(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].isNull(i, this.zab.getInt(str));
    }

    @KeepForSdk
    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.zae;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.zag, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zah, i, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.zaa);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final double zaa(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getDouble(i, this.zab.getInt(str));
    }

    public final float zab(@NonNull String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getFloat(i, this.zab.getInt(str));
    }

    public final void zac(@NonNull String str, int i, int i2, @NonNull CharArrayBuffer charArrayBuffer) {
        zae(str, i);
        this.zah[i2].copyStringToBuffer(i, this.zab.getInt(str), charArrayBuffer);
    }

    public final void zad() {
        this.zab = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.zag;
            if (i2 >= strArr.length) {
                break;
            }
            this.zab.putInt(strArr[i2], i2);
            i2++;
        }
        this.zac = new int[this.zah.length];
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zah;
            if (i < cursorWindowArr.length) {
                this.zac[i] = i3;
                i3 += this.zah[i].getNumRows() - (i3 - cursorWindowArr[i].getStartPosition());
                i++;
            } else {
                this.zad = i3;
                return;
            }
        }
    }

    @SafeParcelable.Constructor
    public DataHolder(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) String[] strArr, @SafeParcelable.Param(id = 2) CursorWindow[] cursorWindowArr, @SafeParcelable.Param(id = 3) int i2, @Nullable @SafeParcelable.Param(id = 4) Bundle bundle) {
        this.zae = false;
        this.zak = true;
        this.zaa = i;
        this.zag = strArr;
        this.zah = cursorWindowArr;
        this.zai = i2;
        this.zaj = bundle;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    @KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DataHolder(@NonNull Cursor cursor, int i, @Nullable Bundle bundle) {
        this(r8, (CursorWindow[]) r1.toArray(new CursorWindow[r1.size()]), i, bundle);
        int i2;
        CursorWrapper cursorWrapper = new CursorWrapper(cursor);
        String[] columnNames = cursorWrapper.getColumnNames();
        ArrayList arrayList = new ArrayList();
        try {
            int count = cursorWrapper.getCount();
            CursorWindow window = cursorWrapper.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                i2 = 0;
            } else {
                window.acquireReference();
                cursorWrapper.setWindow(null);
                arrayList.add(window);
                i2 = window.getNumRows();
            }
            while (i2 < count) {
                if (!cursorWrapper.moveToPosition(i2)) {
                    break;
                }
                CursorWindow window2 = cursorWrapper.getWindow();
                if (window2 != null) {
                    window2.acquireReference();
                    cursorWrapper.setWindow(null);
                } else {
                    window2 = new CursorWindow(false);
                    window2.setStartPosition(i2);
                    cursorWrapper.fillWindow(i2, window2);
                }
                if (window2.getNumRows() == 0) {
                    break;
                }
                arrayList.add(window2);
                i2 = window2.getStartPosition() + window2.getNumRows();
            }
            cursorWrapper.close();
        } catch (Throwable th) {
            cursorWrapper.close();
            throw th;
        }
    }

    private DataHolder(Builder builder, int i, @Nullable Bundle bundle) {
        this(builder.zaa, zaf(builder, -1), i, (Bundle) null);
    }

    @KeepForSdk
    public DataHolder(@NonNull String[] strArr, @NonNull CursorWindow[] cursorWindowArr, int i, @Nullable Bundle bundle) {
        this.zae = false;
        this.zak = true;
        this.zaa = 1;
        this.zag = (String[]) Preconditions.checkNotNull(strArr);
        this.zah = (CursorWindow[]) Preconditions.checkNotNull(cursorWindowArr);
        this.zai = i;
        this.zaj = bundle;
        zad();
    }
}
