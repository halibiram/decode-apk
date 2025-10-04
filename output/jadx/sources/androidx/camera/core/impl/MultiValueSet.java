package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class MultiValueSet<C> {
    private Set<C> mSet = new HashSet();

    public void addAll(@NonNull List<C> list) {
        this.mSet.addAll(list);
    }

    @NonNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public abstract MultiValueSet<C> m272clone();

    @NonNull
    public List<C> getAllItems() {
        return DesugarCollections.unmodifiableList(new ArrayList(this.mSet));
    }
}
