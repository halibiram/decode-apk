package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "WebImageCreator")
/* loaded from: classes2.dex */
public final class WebImage extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<WebImage> CREATOR = new zah();

    @SafeParcelable.VersionField(id = 1)
    final int zaa;

    @SafeParcelable.Field(getter = "getUrl", id = 2)
    private final Uri zab;

    @SafeParcelable.Field(getter = "getWidth", id = 3)
    private final int zac;

    @SafeParcelable.Field(getter = "getHeight", id = 4)
    private final int zad;

    @SafeParcelable.Constructor
    public WebImage(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Uri uri, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) int i3) {
        this.zaa = i;
        this.zab = uri;
        this.zac = i2;
        this.zad = i3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            if (Objects.equal(this.zab, webImage.zab) && this.zac == webImage.zac && this.zad == webImage.zad) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.zad;
    }

    @NonNull
    public Uri getUrl() {
        return this.zab;
    }

    public int getWidth() {
        return this.zac;
    }

    public int hashCode() {
        return Objects.hashCode(this.zab, Integer.valueOf(this.zac), Integer.valueOf(this.zad));
    }

    @NonNull
    @KeepForSdk
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(new ObfuscatedString(new long[]{8627697450855608333L, 5740228521773499954L}).toString(), this.zab.toString());
            jSONObject.put(new ObfuscatedString(new long[]{5853574455804323040L, -265536807931729293L}).toString(), this.zac);
            jSONObject.put(new ObfuscatedString(new long[]{-7254286723373252101L, -1585418935424974693L}).toString(), this.zad);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @NonNull
    public String toString() {
        return String.format(Locale.US, new ObfuscatedString(new long[]{1427442950516911311L, 8570200168654451440L, -3072939363532173214L}).toString(), Integer.valueOf(this.zac), Integer.valueOf(this.zad), this.zab.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcelable(parcel, 2, getUrl(), i, false);
        SafeParcelWriter.writeInt(parcel, 3, getWidth());
        SafeParcelWriter.writeInt(parcel, 4, getHeight());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public WebImage(@NonNull Uri uri) {
        this(uri, 0, 0);
    }

    public WebImage(@NonNull Uri uri, int i, int i2) {
        this(1, uri, i, i2);
        if (uri == null) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{7692011918274251661L, -1804543631118213240L, -3757061755627827744L, -6686923950027384545L}).toString());
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{1353186226995036484L, -2095236458576306737L, -6402307394586264540L, -3301209555367898254L, 7339253796528749996L, -6505540777407649942L}).toString());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public WebImage(@NonNull JSONObject jSONObject) {
        this(r0, jSONObject.optInt(new ObfuscatedString(new long[]{2288995881456306531L, -448216479111264284L}).toString(), 0), jSONObject.optInt(new ObfuscatedString(new long[]{6358757181948969082L, -4048451639591100550L}).toString(), 0));
        Uri uri = Uri.EMPTY;
        if (jSONObject.has(new ObfuscatedString(new long[]{-6270634831881186062L, 2646045869631849674L}).toString())) {
            try {
                uri = Uri.parse(jSONObject.getString(new ObfuscatedString(new long[]{4559760079708277598L, -8879846694336295879L}).toString()));
            } catch (JSONException unused) {
            }
        }
    }
}
