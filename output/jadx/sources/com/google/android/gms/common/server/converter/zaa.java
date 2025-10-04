package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.panda912.muddy.ObfuscatedString;

@SafeParcelable.Class(creator = "ConverterWrapperCreator")
/* loaded from: classes2.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new zab();

    @SafeParcelable.VersionField(id = 1)
    final int zaa;

    @SafeParcelable.Field(getter = "getStringToIntConverter", id = 2)
    private final StringToIntConverter zab;

    @SafeParcelable.Constructor
    public zaa(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) StringToIntConverter stringToIntConverter) {
        this.zaa = i;
        this.zab = stringToIntConverter;
    }

    public static zaa zaa(FastJsonResponse.FieldConverter<?, ?> fieldConverter) {
        if (fieldConverter instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) fieldConverter);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3865717056464267261L, 8722193669553185818L, -1761937005647749685L, 1135818651754146348L, 8473575946203308680L, -5258654805809241599L, -6554772438320542721L, -1259404001776134173L}).toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zab, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final FastJsonResponse.FieldConverter<?, ?> zab() {
        StringToIntConverter stringToIntConverter = this.zab;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-289565039105360535L, 8638363943875000633L, -5830909581683803298L, -5585980863881781402L, 97204338291042588L, -7741381140820962452L, -1350329459711591076L, 3302567747706961736L}).toString());
    }

    private zaa(StringToIntConverter stringToIntConverter) {
        this.zaa = 1;
        this.zab = stringToIntConverter;
    }
}
