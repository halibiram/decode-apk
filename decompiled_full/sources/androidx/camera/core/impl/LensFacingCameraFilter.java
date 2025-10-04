package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraInfo;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0502xa21a55d;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LensFacingCameraFilter implements CameraFilter {
    private final int mLensFacing;

    public LensFacingCameraFilter(int i) {
        this.mLensFacing = i;
    }

    @Override // androidx.camera.core.CameraFilter
    @NonNull
    public List<CameraInfo> filter(@NonNull List<CameraInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (CameraInfo cameraInfo : list) {
            Preconditions.checkArgument(cameraInfo instanceof CameraInfoInternal, "The camera info doesn't contain internal implementation.");
            if (cameraInfo.getLensFacing() == this.mLensFacing) {
                arrayList.add(cameraInfo);
            }
        }
        return arrayList;
    }

    @Override // androidx.camera.core.CameraFilter
    public final /* synthetic */ Identifier getIdentifier() {
        return AbstractC0502xa21a55d.m3129xfbe0c504(this);
    }

    public int getLensFacing() {
        return this.mLensFacing;
    }
}
