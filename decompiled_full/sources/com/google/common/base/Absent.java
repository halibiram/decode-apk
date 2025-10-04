package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Absent<T> extends Optional<T> {
    static final Absent<Object> INSTANCE = new Absent<>();
    private static final long serialVersionUID = 0;

    private Absent() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    public static <T> Optional<T> withType() {
        return INSTANCE;
    }

    @Override // com.google.common.base.Optional
    public Set<T> asSet() {
        return Collections.emptySet();
    }

    @Override // com.google.common.base.Optional
    public boolean equals(@CheckForNull Object obj) {
        return obj == this;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        throw new IllegalStateException(new ObfuscatedString(new long[]{4829154074565601652L, 63271115905464020L, 882554594709206450L, -1152748917252399744L, -6968650465675675734L, -931161221237603483L, -3713018415319683359L, -9197441435413002656L}).toString());
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return 2040732332;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return false;
    }

    @Override // com.google.common.base.Optional
    public T or(T t) {
        return (T) Preconditions.checkNotNull(t, new ObfuscatedString(new long[]{-7258379486461573666L, -5631664636257297749L, 5881393510878629312L, 5095291082020731321L, -3084502919656058708L, -8999443809207279119L, 5982316952513851124L, -6842710008983544723L}).toString());
    }

    @Override // com.google.common.base.Optional
    @CheckForNull
    public T orNull() {
        return null;
    }

    @Override // com.google.common.base.Optional
    public String toString() {
        return new ObfuscatedString(new long[]{8391117921420793535L, 8816378312798494554L, 3928937607297982459L, 8404387990915908767L}).toString();
    }

    @Override // com.google.common.base.Optional
    public <V> Optional<V> transform(Function<? super T, V> function) {
        Preconditions.checkNotNull(function);
        return Optional.absent();
    }

    @Override // com.google.common.base.Optional
    public Optional<T> or(Optional<? extends T> optional) {
        return (Optional) Preconditions.checkNotNull(optional);
    }

    @Override // com.google.common.base.Optional
    public T or(Supplier<? extends T> supplier) {
        return (T) Preconditions.checkNotNull(supplier.get(), new ObfuscatedString(new long[]{3816970005411279730L, -3469387346516431011L, -7510039232928630270L, 4825626122490761904L, 1362846267059099084L, 6809350820753608585L, -1409629762539536827L, -1549118496663451208L, 1157442772292634685L}).toString());
    }
}
