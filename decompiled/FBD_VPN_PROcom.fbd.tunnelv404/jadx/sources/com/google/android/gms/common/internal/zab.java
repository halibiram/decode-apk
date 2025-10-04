package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Scope;
import j$.util.DesugarCollections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zab {
    public final Set<Scope> zaa;

    public zab(Set<Scope> set) {
        Preconditions.checkNotNull(set);
        this.zaa = DesugarCollections.unmodifiableSet(set);
    }
}
