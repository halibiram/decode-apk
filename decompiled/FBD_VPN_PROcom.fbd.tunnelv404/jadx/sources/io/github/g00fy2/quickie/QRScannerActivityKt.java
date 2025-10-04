package io.github.g00fy2.quickie;

import android.content.ClipData;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"quickie-foss_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class QRScannerActivityKt {
    public static final List access$clipList(ClipData clipData) {
        int itemCount = clipData.getItemCount();
        ArrayList arrayList = new ArrayList(itemCount);
        for (int i = 0; i < itemCount; i++) {
            arrayList.add(clipData.getItemAt(i).getUri());
        }
        return CollectionsKt___CollectionsKt.filterNotNull(arrayList);
    }
}
