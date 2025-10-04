package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import defpackage.AbstractC0362x4440ab85;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_DeviceProperties extends DeviceProperties {
    private final String manufacturer;
    private final String model;
    private final int sdkVersion;

    public AutoValue_DeviceProperties(String str, String str2, int i) {
        if (str != null) {
            this.manufacturer = str;
            if (str2 != null) {
                this.model = str2;
                this.sdkVersion = i;
                return;
            }
            throw new NullPointerException("Null model");
        }
        throw new NullPointerException("Null manufacturer");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DeviceProperties)) {
            return false;
        }
        DeviceProperties deviceProperties = (DeviceProperties) obj;
        if (this.manufacturer.equals(deviceProperties.manufacturer()) && this.model.equals(deviceProperties.model()) && this.sdkVersion == deviceProperties.sdkVersion()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.manufacturer.hashCode() ^ 1000003) * 1000003) ^ this.model.hashCode()) * 1000003) ^ this.sdkVersion;
    }

    @Override // androidx.camera.core.impl.DeviceProperties
    @NonNull
    public String manufacturer() {
        return this.manufacturer;
    }

    @Override // androidx.camera.core.impl.DeviceProperties
    @NonNull
    public String model() {
        return this.model;
    }

    @Override // androidx.camera.core.impl.DeviceProperties
    public int sdkVersion() {
        return this.sdkVersion;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DeviceProperties{manufacturer=");
        sb.append(this.manufacturer);
        sb.append(", model=");
        sb.append(this.model);
        sb.append(", sdkVersion=");
        return AbstractC0362x4440ab85.m2935x1db10c9d(sb, "}", this.sdkVersion);
    }
}
