package androidx.work;

import android.annotation.SuppressLint;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.exifinterface.media.ExifInterface;
import androidx.room.TypeConverter;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0413x7cc5182f;
import defpackage.AbstractC0414x61f1d1a0;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 A2\u00020\u0001:\u0002@AB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0000¢\u0006\u0002\u0010\u0003B\u0019\b\u0010\u0012\u0010\u0010\u0004\u001a\f\u0012\u0004\u0012\u00020\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0016\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\fJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u001bJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u001fJ\u0010\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\"\u001a\u00020#2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020#J\u0010\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u000e\u001a\u00020\u0006J*\u0010&\u001a\u0002H'\"\n\b\u0000\u0010'\u0018\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u0002H'H\u0082\b¢\u0006\u0002\u0010(J\u0010\u0010)\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u0006J\u001b\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010+2\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0002\u0010,J}\u0010-\u001a\u0004\u0018\u0001H.\"\n\b\u0000\u0010'\u0018\u0001*\u00020\u0001\"\u0004\b\u0001\u0010.2\u0006\u0010\u000e\u001a\u00020\u00062Q\u0010/\u001aM\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(3\u0012.\u0012,\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(5\u0012\u0004\u0012\u0002H'04¢\u0006\f\b1\u0012\b\b2\u0012\u0004\b\b(6\u0012\u0004\u0012\u0002H.00H\u0082\b¢\u0006\u0002\u00107J\u001e\u00108\u001a\u00020\f\"\u0006\b\u0000\u0010'\u0018\u00012\u0006\u0010\u000e\u001a\u00020\u0006H\u0080\b¢\u0006\u0002\b9J\"\u0010:\u001a\u00020\f\"\u0004\b\u0000\u0010'2\u0006\u0010\u000e\u001a\u00020\u00062\f\u0010;\u001a\b\u0012\u0004\u0012\u0002H'0<J\b\u0010=\u001a\u00020\u001fH\u0016J\b\u00103\u001a\u00020\u001fH\u0007J\u0006\u0010>\u001a\u00020\u0015J\b\u0010?\u001a\u00020\u0006H\u0016R\u001f\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006B"}, d2 = {"Landroidx/work/Data;", "", "other", "(Landroidx/work/Data;)V", "values", "", "", "(Ljava/util/Map;)V", "keyValueMap", "getKeyValueMap", "()Ljava/util/Map;", "equals", "", "getBoolean", "key", "defaultValue", "getBooleanArray", "", "getByte", "", "getByteArray", "", "getDouble", "", "getDoubleArray", "", "getFloat", "", "getFloatArray", "", "getInt", "", "getIntArray", "", "getLong", "", "getLongArray", "", "getOrDefault", ExifInterface.GPS_DIRECTION_TRUE, "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "getString", "getStringArray", "", "(Ljava/lang/String;)[Ljava/lang/String;", "getTypedArray", "TArray", "constructor", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "size", "Lkotlin/Function1;", "index", "init", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "hasKey", "hasKey$work_runtime_release", "hasKeyWithValueOfType", "klass", "Ljava/lang/Class;", "hashCode", "toByteArray", "toString", "Builder", "Companion", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nData_.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Data_.kt\nandroidx/work/Data\n*L\n1#1,841:1\n55#1,2:842\n63#1,4:844\n55#1,2:848\n63#1,4:850\n55#1,2:854\n63#1,4:856\n55#1,2:860\n63#1,4:862\n55#1,2:866\n63#1,4:868\n55#1,2:872\n63#1,4:874\n63#1,4:878\n*S KotlinDebug\n*F\n+ 1 Data_.kt\nandroidx/work/Data\n*L\n76#1:842,2\n84#1:844,4\n93#1:848,2\n101#1:850,4\n110#1:854,2\n118#1:856,4\n127#1:860,2\n135#1:862,4\n144#1:866,2\n152#1:868,4\n161#1:872,2\n169#1:874,4\n185#1:878,4\n*E\n"})
/* loaded from: classes.dex */
public final class Data {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    @NotNull
    public static final Data EMPTY = new Builder().build();

    @SuppressLint({"MinMaxConstant"})
    public static final int MAX_DATA_BYTES = 10240;

    @NotNull
    private static final String NULL_STRING_V1 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
    private static final short STREAM_MAGIC = -21521;
    private static final short STREAM_VERSION = 1;
    private static final byte TYPE_BOOLEAN = 1;
    private static final byte TYPE_BOOLEAN_ARRAY = 8;
    private static final byte TYPE_BYTE = 2;
    private static final byte TYPE_BYTE_ARRAY = 9;
    private static final byte TYPE_DOUBLE = 6;
    private static final byte TYPE_DOUBLE_ARRAY = 13;
    private static final byte TYPE_FLOAT = 5;
    private static final byte TYPE_FLOAT_ARRAY = 12;
    private static final byte TYPE_INTEGER = 3;
    private static final byte TYPE_INTEGER_ARRAY = 10;
    private static final byte TYPE_LONG = 4;
    private static final byte TYPE_LONG_ARRAY = 11;
    private static final byte TYPE_NULL = 0;
    private static final byte TYPE_STRING = 7;
    private static final byte TYPE_STRING_ARRAY = 14;

    @NotNull
    private final Map<String, Object> values;

    @Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0007J\u001c\u0010\u000b\u001a\u00020\u00002\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\rJ\u0016\u0010\u000e\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0015J\u001a\u0010\u0016\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0002J\u0016\u0010\u0017\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0018J\u0016\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u001eJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020 J\u0016\u0010!\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\"J\u0016\u0010#\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020$J\u0016\u0010%\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020&J\u0018\u0010'\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0005J#\u0010(\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00052\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050)¢\u0006\u0002\u0010*R\u001c\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Landroidx/work/Data$Builder;", "", "()V", "values", "", "", "build", "Landroidx/work/Data;", "put", "key", "value", "putAll", "data", "", "putBoolean", "", "putBooleanArray", "", "putByte", "", "putByteArray", "", "putDirect", "putDouble", "", "putDoubleArray", "", "putFloat", "", "putFloatArray", "", "putInt", "", "putIntArray", "", "putLong", "", "putLongArray", "", "putString", "putStringArray", "", "(Ljava/lang/String;[Ljava/lang/String;)Landroidx/work/Data$Builder;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nData_.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Data_.kt\nandroidx/work/Data$Builder\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,841:1\n215#2,2:842\n*S KotlinDebug\n*F\n+ 1 Data_.kt\nandroidx/work/Data$Builder\n*L\n469#1:842,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Builder {

        @NotNull
        private final Map<String, Object> values = new LinkedHashMap();

        private final Builder putDirect(String key, Object value) {
            this.values.put(key, value);
            return this;
        }

        @NotNull
        public final Data build() {
            Data data = new Data((Map<String, ?>) this.values);
            Data.INSTANCE.toByteArrayInternalV1(data);
            return data;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public final Builder put(@NotNull String key, @Nullable Object value) {
            boolean areEqual;
            boolean areEqual2;
            boolean areEqual3;
            boolean areEqual4;
            boolean areEqual5;
            boolean areEqual6;
            boolean areEqual7;
            boolean areEqual8;
            boolean areEqual9;
            boolean areEqual10;
            boolean areEqual11;
            boolean areEqual12;
            Intrinsics.checkNotNullParameter(key, "key");
            Map<String, Object> map = this.values;
            if (value == null) {
                value = null;
            } else {
                KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(value.getClass());
                boolean z = true;
                if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean.TYPE))) {
                    areEqual = true;
                } else {
                    areEqual = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte.TYPE));
                }
                if (areEqual) {
                    areEqual2 = true;
                } else {
                    areEqual2 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer.TYPE));
                }
                if (areEqual2) {
                    areEqual3 = true;
                } else {
                    areEqual3 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long.TYPE));
                }
                if (areEqual3) {
                    areEqual4 = true;
                } else {
                    areEqual4 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float.TYPE));
                }
                if (areEqual4) {
                    areEqual5 = true;
                } else {
                    areEqual5 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double.TYPE));
                }
                if (areEqual5) {
                    areEqual6 = true;
                } else {
                    areEqual6 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String.class));
                }
                if (areEqual6) {
                    areEqual7 = true;
                } else {
                    areEqual7 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean[].class));
                }
                if (areEqual7) {
                    areEqual8 = true;
                } else {
                    areEqual8 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte[].class));
                }
                if (areEqual8) {
                    areEqual9 = true;
                } else {
                    areEqual9 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer[].class));
                }
                if (areEqual9) {
                    areEqual10 = true;
                } else {
                    areEqual10 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long[].class));
                }
                if (areEqual10) {
                    areEqual11 = true;
                } else {
                    areEqual11 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float[].class));
                }
                if (areEqual11) {
                    areEqual12 = true;
                } else {
                    areEqual12 = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double[].class));
                }
                if (!areEqual12) {
                    z = Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String[].class));
                }
                if (!z) {
                    if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(boolean[].class))) {
                        value = Data_Kt.convertPrimitiveArray((boolean[]) value);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(byte[].class))) {
                        value = Data_Kt.convertPrimitiveArray((byte[]) value);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(int[].class))) {
                        value = Data_Kt.convertPrimitiveArray((int[]) value);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(long[].class))) {
                        value = Data_Kt.convertPrimitiveArray((long[]) value);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(float[].class))) {
                        value = Data_Kt.convertPrimitiveArray((float[]) value);
                    } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(double[].class))) {
                        value = Data_Kt.convertPrimitiveArray((double[]) value);
                    } else {
                        throw new IllegalArgumentException("Key " + key + " has invalid type " + orCreateKotlinClass);
                    }
                }
            }
            map.put(key, value);
            return this;
        }

        @NotNull
        public final Builder putAll(@NotNull Data data) {
            Intrinsics.checkNotNullParameter(data, "data");
            putAll(data.values);
            return this;
        }

        @NotNull
        public final Builder putBoolean(@NotNull String key, boolean value) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, Boolean.valueOf(value));
        }

        @NotNull
        public final Builder putBooleanArray(@NotNull String key, @NotNull boolean[] value) {
            Boolean[] convertPrimitiveArray;
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(value);
            map.put(key, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putByte(@NotNull String key, byte value) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, Byte.valueOf(value));
        }

        @NotNull
        public final Builder putByteArray(@NotNull String key, @NotNull byte[] value) {
            Byte[] convertPrimitiveArray;
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(value);
            map.put(key, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putDouble(@NotNull String key, double value) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, Double.valueOf(value));
        }

        @NotNull
        public final Builder putDoubleArray(@NotNull String key, @NotNull double[] value) {
            Double[] convertPrimitiveArray;
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(value);
            map.put(key, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putFloat(@NotNull String key, float value) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, Float.valueOf(value));
        }

        @NotNull
        public final Builder putFloatArray(@NotNull String key, @NotNull float[] value) {
            Float[] convertPrimitiveArray;
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(value);
            map.put(key, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putInt(@NotNull String key, int value) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, Integer.valueOf(value));
        }

        @NotNull
        public final Builder putIntArray(@NotNull String key, @NotNull int[] value) {
            Integer[] convertPrimitiveArray;
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(value);
            map.put(key, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putLong(@NotNull String key, long value) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, Long.valueOf(value));
        }

        @NotNull
        public final Builder putLongArray(@NotNull String key, @NotNull long[] value) {
            Long[] convertPrimitiveArray;
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Map<String, Object> map = this.values;
            convertPrimitiveArray = Data_Kt.convertPrimitiveArray(value);
            map.put(key, convertPrimitiveArray);
            return this;
        }

        @NotNull
        public final Builder putString(@NotNull String key, @Nullable String value) {
            Intrinsics.checkNotNullParameter(key, "key");
            return putDirect(key, value);
        }

        @NotNull
        public final Builder putStringArray(@NotNull String key, @NotNull String[] value) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            return putDirect(key, value);
        }

        @NotNull
        public final Builder putAll(@NotNull Map<String, ? extends Object> values) {
            Intrinsics.checkNotNullParameter(values, "values");
            for (Map.Entry<String, ? extends Object> entry : values.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0010\n\u0002\u0010\u0012\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u0004H\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Landroidx/work/Data$Companion;", "", "()V", "EMPTY", "Landroidx/work/Data;", "MAX_DATA_BYTES", "", "NULL_STRING_V1", "", "STREAM_MAGIC", "", "STREAM_VERSION", "TYPE_BOOLEAN", "", "TYPE_BOOLEAN_ARRAY", "TYPE_BYTE", "TYPE_BYTE_ARRAY", "TYPE_DOUBLE", "TYPE_DOUBLE_ARRAY", "TYPE_FLOAT", "TYPE_FLOAT_ARRAY", "TYPE_INTEGER", "TYPE_INTEGER_ARRAY", "TYPE_LONG", "TYPE_LONG_ARRAY", "TYPE_NULL", "TYPE_STRING", "TYPE_STRING_ARRAY", "fromByteArray", "bytes", "", "toByteArrayInternalV0", "data", "toByteArrayInternalV1", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nData_.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Data_.kt\nandroidx/work/Data$Companion\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,841:1\n32#2:842\n32#2:843\n32#2:845\n32#2:846\n1#3:844\n*S KotlinDebug\n*F\n+ 1 Data_.kt\nandroidx/work/Data$Companion\n*L\n599#1:842\n710#1:843\n814#1:845\n816#1:846\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static final boolean fromByteArray$isObjectStream(ByteArrayInputStream byteArrayInputStream) {
            byte[] bArr = new byte[2];
            byteArrayInputStream.read(bArr);
            byte b = (byte) (-21267);
            boolean z = false;
            if (bArr[0] == ((byte) 16777132) && bArr[1] == b) {
                z = true;
            }
            byteArrayInputStream.reset();
            return z;
        }

        private static final void fromByteArray$readHeader(DataInputStream dataInputStream) {
            short readShort = dataInputStream.readShort();
            if (readShort == -21521) {
                short readShort2 = dataInputStream.readShort();
                if (readShort2 == 1) {
                    return;
                } else {
                    throw new IllegalStateException(AbstractC0362x4440ab85.m2929x9738a56c(readShort2, "Unsupported version number: ").toString());
                }
            }
            throw new IllegalStateException(AbstractC0362x4440ab85.m2929x9738a56c(readShort, "Magic number doesn't match: ").toString());
        }

        private static final Object fromByteArray$readValue(DataInputStream dataInputStream, byte b) {
            if (b == 0) {
                return null;
            }
            if (b == 1) {
                return Boolean.valueOf(dataInputStream.readBoolean());
            }
            if (b == 2) {
                return Byte.valueOf(dataInputStream.readByte());
            }
            if (b == 3) {
                return Integer.valueOf(dataInputStream.readInt());
            }
            if (b == 4) {
                return Long.valueOf(dataInputStream.readLong());
            }
            if (b == 5) {
                return Float.valueOf(dataInputStream.readFloat());
            }
            if (b == 6) {
                return Double.valueOf(dataInputStream.readDouble());
            }
            if (b == 7) {
                return dataInputStream.readUTF();
            }
            int i = 0;
            if (b == 8) {
                int readInt = dataInputStream.readInt();
                Boolean[] boolArr = new Boolean[readInt];
                while (i < readInt) {
                    boolArr[i] = Boolean.valueOf(dataInputStream.readBoolean());
                    i++;
                }
                return boolArr;
            }
            if (b == 9) {
                int readInt2 = dataInputStream.readInt();
                Byte[] bArr = new Byte[readInt2];
                while (i < readInt2) {
                    bArr[i] = Byte.valueOf(dataInputStream.readByte());
                    i++;
                }
                return bArr;
            }
            if (b == 10) {
                int readInt3 = dataInputStream.readInt();
                Integer[] numArr = new Integer[readInt3];
                while (i < readInt3) {
                    numArr[i] = Integer.valueOf(dataInputStream.readInt());
                    i++;
                }
                return numArr;
            }
            if (b == 11) {
                int readInt4 = dataInputStream.readInt();
                Long[] lArr = new Long[readInt4];
                while (i < readInt4) {
                    lArr[i] = Long.valueOf(dataInputStream.readLong());
                    i++;
                }
                return lArr;
            }
            if (b == 12) {
                int readInt5 = dataInputStream.readInt();
                Float[] fArr = new Float[readInt5];
                while (i < readInt5) {
                    fArr[i] = Float.valueOf(dataInputStream.readFloat());
                    i++;
                }
                return fArr;
            }
            if (b == 13) {
                int readInt6 = dataInputStream.readInt();
                Double[] dArr = new Double[readInt6];
                while (i < readInt6) {
                    dArr[i] = Double.valueOf(dataInputStream.readDouble());
                    i++;
                }
                return dArr;
            }
            if (b == 14) {
                int readInt7 = dataInputStream.readInt();
                String[] strArr = new String[readInt7];
                while (i < readInt7) {
                    String readUTF = dataInputStream.readUTF();
                    if (Intrinsics.areEqual(readUTF, Data.NULL_STRING_V1)) {
                        readUTF = null;
                    }
                    strArr[i] = readUTF;
                    i++;
                }
                return strArr;
            }
            throw new IllegalStateException(AbstractC0362x4440ab85.m2929x9738a56c(b, "Unsupported type "));
        }

        private static final void toByteArrayInternalV1$writeArray(DataOutputStream dataOutputStream, Object[] objArr) {
            int i;
            double d;
            float f;
            long j;
            int i2;
            byte b;
            boolean z;
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(objArr.getClass());
            if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Boolean[].class))) {
                i = 8;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Byte[].class))) {
                i = 9;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Integer[].class))) {
                i = 10;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Long[].class))) {
                i = 11;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Float[].class))) {
                i = 12;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(Double[].class))) {
                i = 13;
            } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(String[].class))) {
                i = 14;
            } else {
                throw new IllegalArgumentException("Unsupported value type " + Reflection.getOrCreateKotlinClass(objArr.getClass()).getQualifiedName());
            }
            dataOutputStream.writeByte(i);
            dataOutputStream.writeInt(objArr.length);
            for (Object obj : objArr) {
                String str = null;
                Boolean bool = null;
                Byte b2 = null;
                Integer num = null;
                Long l = null;
                Float f2 = null;
                Double d2 = null;
                if (i == 8) {
                    if (obj instanceof Boolean) {
                        bool = (Boolean) obj;
                    }
                    if (bool != null) {
                        z = bool.booleanValue();
                    } else {
                        z = false;
                    }
                    dataOutputStream.writeBoolean(z);
                } else if (i == 9) {
                    if (obj instanceof Byte) {
                        b2 = (Byte) obj;
                    }
                    if (b2 != null) {
                        b = b2.byteValue();
                    } else {
                        b = 0;
                    }
                    dataOutputStream.writeByte(b);
                } else if (i == 10) {
                    if (obj instanceof Integer) {
                        num = (Integer) obj;
                    }
                    if (num != null) {
                        i2 = num.intValue();
                    } else {
                        i2 = 0;
                    }
                    dataOutputStream.writeInt(i2);
                } else if (i == 11) {
                    if (obj instanceof Long) {
                        l = (Long) obj;
                    }
                    if (l != null) {
                        j = l.longValue();
                    } else {
                        j = 0;
                    }
                    dataOutputStream.writeLong(j);
                } else if (i == 12) {
                    if (obj instanceof Float) {
                        f2 = (Float) obj;
                    }
                    if (f2 != null) {
                        f = f2.floatValue();
                    } else {
                        f = 0.0f;
                    }
                    dataOutputStream.writeFloat(f);
                } else if (i == 13) {
                    if (obj instanceof Double) {
                        d2 = (Double) obj;
                    }
                    if (d2 != null) {
                        d = d2.doubleValue();
                    } else {
                        d = 0.0d;
                    }
                    dataOutputStream.writeDouble(d);
                } else if (i == 14) {
                    if (obj instanceof String) {
                        str = (String) obj;
                    }
                    if (str == null) {
                        str = Data.NULL_STRING_V1;
                    }
                    dataOutputStream.writeUTF(str);
                }
            }
        }

        private static final void toByteArrayInternalV1$writeEntry(DataOutputStream dataOutputStream, String str, Object obj) {
            if (obj == null) {
                dataOutputStream.writeByte(0);
            } else if (obj instanceof Boolean) {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                dataOutputStream.writeByte(2);
                dataOutputStream.writeByte(((Number) obj).byteValue());
            } else if (obj instanceof Integer) {
                dataOutputStream.writeByte(3);
                dataOutputStream.writeInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeLong(((Number) obj).longValue());
            } else if (obj instanceof Float) {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeFloat(((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                dataOutputStream.writeByte(7);
                dataOutputStream.writeUTF((String) obj);
            } else if (obj instanceof Object[]) {
                toByteArrayInternalV1$writeArray(dataOutputStream, (Object[]) obj);
            } else {
                throw new IllegalArgumentException("Unsupported value type " + Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName());
            }
            dataOutputStream.writeUTF(str);
        }

        private static final void toByteArrayInternalV1$writeHeader(DataOutputStream dataOutputStream) {
            dataOutputStream.writeShort(-21521);
            dataOutputStream.writeShort(1);
        }

        @JvmStatic
        @TypeConverter
        @NotNull
        public final Data fromByteArray(@NotNull byte[] bytes) {
            String str;
            String str2;
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            if (bytes.length <= 10240) {
                if (bytes.length == 0) {
                    return Data.EMPTY;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                    int i = 0;
                    if (fromByteArray$isObjectStream(byteArrayInputStream)) {
                        ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                        try {
                            int readInt = objectInputStream.readInt();
                            while (i < readInt) {
                                String readUTF = objectInputStream.readUTF();
                                Intrinsics.checkNotNullExpressionValue(readUTF, "readUTF()");
                                linkedHashMap.put(readUTF, objectInputStream.readObject());
                                i++;
                            }
                            CloseableKt.closeFinally(objectInputStream, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(objectInputStream, th);
                                throw th2;
                            }
                        }
                    } else {
                        DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                        try {
                            fromByteArray$readHeader(dataInputStream);
                            int readInt2 = dataInputStream.readInt();
                            while (i < readInt2) {
                                Object fromByteArray$readValue = fromByteArray$readValue(dataInputStream, dataInputStream.readByte());
                                String key = dataInputStream.readUTF();
                                Intrinsics.checkNotNullExpressionValue(key, "key");
                                linkedHashMap.put(key, fromByteArray$readValue);
                                i++;
                            }
                            CloseableKt.closeFinally(dataInputStream, null);
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                CloseableKt.closeFinally(dataInputStream, th3);
                                throw th4;
                            }
                        }
                    }
                } catch (IOException e) {
                    str2 = Data_Kt.TAG;
                    Logger.get().error(str2, "Error in Data#fromByteArray: ", e);
                } catch (ClassNotFoundException e2) {
                    str = Data_Kt.TAG;
                    Logger.get().error(str, "Error in Data#fromByteArray: ", e2);
                }
                return new Data(linkedHashMap);
            }
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        }

        @JvmStatic
        @NotNull
        @Deprecated(message = "This is kept for testing migration", replaceWith = @ReplaceWith(expression = "toByteArrayInternalV1", imports = {}))
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final byte[] toByteArrayInternalV0(@NotNull Data data) {
            String str;
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    try {
                        objectOutputStream.writeInt(data.size());
                        for (Map.Entry entry : data.values.entrySet()) {
                            String str2 = (String) entry.getKey();
                            Object value = entry.getValue();
                            objectOutputStream.writeUTF(str2);
                            objectOutputStream.writeObject(value);
                        }
                        CloseableKt.closeFinally(objectOutputStream, null);
                        CloseableKt.closeFinally(byteArrayOutputStream, null);
                        if (byteArrayOutputStream.size() <= 10240) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            Intrinsics.checkNotNullExpressionValue(byteArray, "{\n                val st…ByteArray()\n            }");
                            return byteArray;
                        }
                        throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(objectOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(byteArrayOutputStream, th3);
                        throw th4;
                    }
                }
            } catch (IOException e) {
                str = Data_Kt.TAG;
                Logger.get().error(str, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        @JvmStatic
        @NotNull
        @TypeConverter
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final byte[] toByteArrayInternalV1(@NotNull Data data) {
            String str;
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    toByteArrayInternalV1$writeHeader(dataOutputStream);
                    dataOutputStream.writeInt(data.size());
                    for (Map.Entry entry : data.values.entrySet()) {
                        toByteArrayInternalV1$writeEntry(dataOutputStream, (String) entry.getKey(), entry.getValue());
                    }
                    dataOutputStream.flush();
                    if (dataOutputStream.size() <= 10240) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        CloseableKt.closeFinally(dataOutputStream, null);
                        Intrinsics.checkNotNullExpressionValue(byteArray, "{\n                ByteAr…          }\n            }");
                        return byteArray;
                    }
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                } finally {
                }
            } catch (IOException e) {
                str = Data_Kt.TAG;
                Logger.get().error(str, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        private Companion() {
        }
    }

    public Data(@NotNull Data other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.values = new HashMap(other.values);
    }

    @JvmStatic
    @TypeConverter
    @NotNull
    public static final Data fromByteArray(@NotNull byte[] bArr) {
        return INSTANCE.fromByteArray(bArr);
    }

    private final /* synthetic */ <T> T getOrDefault(String key, T defaultValue) {
        T t = (T) this.values.get(key);
        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
        if (t instanceof Object) {
            return t;
        }
        return defaultValue;
    }

    private final /* synthetic */ <T, TArray> TArray getTypedArray(String key, Function2<? super Integer, ? super Function1<? super Integer, ? extends T>, ? extends TArray> constructor) {
        final Object obj = this.values.get(key);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Object[]) {
                Integer valueOf = Integer.valueOf(objArr.length);
                Intrinsics.needClassReification();
                return constructor.invoke(valueOf, new Function1<Integer, T>() { // from class: androidx.work.Data$getTypedArray$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final T invoke(int i) {
                        T t = (T) ((Object[]) obj)[i];
                        Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
                        return t;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                });
            }
        }
        return null;
    }

    @JvmStatic
    @NotNull
    @Deprecated(message = "This is kept for testing migration", replaceWith = @ReplaceWith(expression = "toByteArrayInternalV1", imports = {}))
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final byte[] toByteArrayInternalV0(@NotNull Data data) {
        return INSTANCE.toByteArrayInternalV0(data);
    }

    @JvmStatic
    @NotNull
    @TypeConverter
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final byte[] toByteArrayInternalV1(@NotNull Data data) {
        return INSTANCE.toByteArrayInternalV1(data);
    }

    public boolean equals(@Nullable Object other) {
        boolean z;
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(Data.class, other.getClass())) {
            return false;
        }
        Data data = (Data) other;
        Set<String> keySet = this.values.keySet();
        if (!Intrinsics.areEqual(keySet, data.values.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj = this.values.get(str);
            Object obj2 = data.values.get(str);
            if (obj != null && obj2 != null) {
                if (obj instanceof Object[]) {
                    Object[] objArr = (Object[]) obj;
                    if (obj2 instanceof Object[]) {
                        z = AbstractC0414x61f1d1a0.contentDeepEquals(objArr, (Object[]) obj2);
                    }
                }
                z = Intrinsics.areEqual(obj, obj2);
            } else if (obj == obj2) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public final boolean getBoolean(@NotNull String key, boolean defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object valueOf = Boolean.valueOf(defaultValue);
        Object obj = this.values.get(key);
        if (obj instanceof Boolean) {
            valueOf = obj;
        }
        return ((Boolean) valueOf).booleanValue();
    }

    @Nullable
    public final boolean[] getBooleanArray(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final Object obj = this.values.get(key);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Object[]) {
                int length = objArr.length;
                Function1<Integer, Boolean> function1 = new Function1<Integer, Boolean>() { // from class: androidx.work.Data$getBooleanArray$$inlined$getTypedArray$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final Boolean invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Boolean) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Boolean, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                boolean[] zArr = new boolean[length];
                for (int i = 0; i < length; i++) {
                    zArr[i] = function1.invoke(Integer.valueOf(i)).booleanValue();
                }
                return zArr;
            }
        }
        return null;
    }

    public final byte getByte(@NotNull String key, byte defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object valueOf = Byte.valueOf(defaultValue);
        Object obj = this.values.get(key);
        if (obj instanceof Byte) {
            valueOf = obj;
        }
        return ((Number) valueOf).byteValue();
    }

    @Nullable
    public final byte[] getByteArray(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final Object obj = this.values.get(key);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Object[]) {
                int length = objArr.length;
                Function1<Integer, Byte> function1 = new Function1<Integer, Byte>() { // from class: androidx.work.Data$getByteArray$$inlined$getTypedArray$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final Byte invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Byte) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Byte");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.lang.Byte] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Byte invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    bArr[i] = function1.invoke(Integer.valueOf(i)).byteValue();
                }
                return bArr;
            }
        }
        return null;
    }

    public final double getDouble(@NotNull String key, double defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object valueOf = Double.valueOf(defaultValue);
        Object obj = this.values.get(key);
        if (obj instanceof Double) {
            valueOf = obj;
        }
        return ((Number) valueOf).doubleValue();
    }

    @Nullable
    public final double[] getDoubleArray(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final Object obj = this.values.get(key);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Object[]) {
                int length = objArr.length;
                Function1<Integer, Double> function1 = new Function1<Integer, Double>() { // from class: androidx.work.Data$getDoubleArray$$inlined$getTypedArray$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final Double invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Double) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Double");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Double, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Double invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                double[] dArr = new double[length];
                for (int i = 0; i < length; i++) {
                    dArr[i] = function1.invoke(Integer.valueOf(i)).doubleValue();
                }
                return dArr;
            }
        }
        return null;
    }

    public final float getFloat(@NotNull String key, float defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object valueOf = Float.valueOf(defaultValue);
        Object obj = this.values.get(key);
        if (obj instanceof Float) {
            valueOf = obj;
        }
        return ((Number) valueOf).floatValue();
    }

    @Nullable
    public final float[] getFloatArray(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final Object obj = this.values.get(key);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Object[]) {
                int length = objArr.length;
                Function1<Integer, Float> function1 = new Function1<Integer, Float>() { // from class: androidx.work.Data$getFloatArray$$inlined$getTypedArray$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final Float invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Float) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Float, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Float invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                float[] fArr = new float[length];
                for (int i = 0; i < length; i++) {
                    fArr[i] = function1.invoke(Integer.valueOf(i)).floatValue();
                }
                return fArr;
            }
        }
        return null;
    }

    public final int getInt(@NotNull String key, int defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object valueOf = Integer.valueOf(defaultValue);
        Object obj = this.values.get(key);
        if (obj instanceof Integer) {
            valueOf = obj;
        }
        return ((Number) valueOf).intValue();
    }

    @Nullable
    public final int[] getIntArray(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final Object obj = this.values.get(key);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Object[]) {
                int length = objArr.length;
                Function1<Integer, Integer> function1 = new Function1<Integer, Integer>() { // from class: androidx.work.Data$getIntArray$$inlined$getTypedArray$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final Integer invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Integer) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.lang.Integer] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                int[] iArr = new int[length];
                for (int i = 0; i < length; i++) {
                    iArr[i] = function1.invoke(Integer.valueOf(i)).intValue();
                }
                return iArr;
            }
        }
        return null;
    }

    @NotNull
    public final Map<String, Object> getKeyValueMap() {
        Map<String, Object> unmodifiableMap = DesugarCollections.unmodifiableMap(this.values);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap(values)");
        return unmodifiableMap;
    }

    public final long getLong(@NotNull String key, long defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object valueOf = Long.valueOf(defaultValue);
        Object obj = this.values.get(key);
        if (obj instanceof Long) {
            valueOf = obj;
        }
        return ((Number) valueOf).longValue();
    }

    @Nullable
    public final long[] getLongArray(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final Object obj = this.values.get(key);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Object[]) {
                int length = objArr.length;
                Function1<Integer, Long> function1 = new Function1<Integer, Long>() { // from class: androidx.work.Data$getLongArray$$inlined$getTypedArray$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final Long invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (Long) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Long, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Long invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                long[] jArr = new long[length];
                for (int i = 0; i < length; i++) {
                    jArr[i] = function1.invoke(Integer.valueOf(i)).longValue();
                }
                return jArr;
            }
        }
        return null;
    }

    @Nullable
    public final String getString(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj = this.values.get(key);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @Nullable
    public final String[] getStringArray(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final Object obj = this.values.get(key);
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Object[]) {
                int length = objArr.length;
                Function1<Integer, String> function1 = new Function1<Integer, String>() { // from class: androidx.work.Data$getStringArray$$inlined$getTypedArray$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final String invoke(int i) {
                        Object obj2 = ((Object[]) obj)[i];
                        if (obj2 != null) {
                            return (String) obj2;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }

                    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, java.lang.String] */
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ String invoke(Integer num) {
                        return invoke(num.intValue());
                    }
                };
                String[] strArr = new String[length];
                for (int i = 0; i < length; i++) {
                    strArr[i] = function1.invoke(Integer.valueOf(i));
                }
                return strArr;
            }
        }
        return null;
    }

    public final /* synthetic */ <T> boolean hasKey$work_runtime_release(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return hasKeyWithValueOfType(key, Object.class);
    }

    public final <T> boolean hasKeyWithValueOfType(@NotNull String key, @NotNull Class<T> klass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(klass, "klass");
        Object obj = this.values.get(key);
        if (obj != null && klass.isAssignableFrom(obj.getClass())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        for (Map.Entry<String, Object> entry : this.values.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Object[]) {
                hashCode = Objects.hashCode(entry.getKey()) ^ AbstractC0413x7cc5182f.contentDeepHashCode((Object[]) value);
            } else {
                hashCode = entry.hashCode();
            }
            i += hashCode;
        }
        return i * 31;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public final int size() {
        return this.values.size();
    }

    @NotNull
    public final byte[] toByteArray() {
        return INSTANCE.toByteArrayInternalV1(this);
    }

    @NotNull
    public String toString() {
        String str = "Data {" + CollectionsKt___CollectionsKt.joinToString$default(this.values.entrySet(), null, null, null, 0, null, new Function1<Map.Entry<? extends String, ? extends Object>, CharSequence>() { // from class: androidx.work.Data$toString$1$content$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final CharSequence invoke2(Map.Entry<String, ? extends Object> entry) {
                Intrinsics.checkNotNullParameter(entry, "<name for destructuring parameter 0>");
                String key = entry.getKey();
                Object value = entry.getValue();
                StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(key, " : ");
                if (value instanceof Object[]) {
                    value = Arrays.toString((Object[]) value);
                    Intrinsics.checkNotNullExpressionValue(value, "toString(this)");
                }
                m2943xc20437a5.append(value);
                return m2943xc20437a5.toString();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Map.Entry<? extends String, ? extends Object> entry) {
                return invoke2((Map.Entry<String, ? extends Object>) entry);
            }
        }, 31, null) + "}";
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder().apply(builderAction).toString()");
        return str;
    }

    public Data(@NotNull Map<String, ?> values) {
        Intrinsics.checkNotNullParameter(values, "values");
        this.values = new HashMap(values);
    }
}
