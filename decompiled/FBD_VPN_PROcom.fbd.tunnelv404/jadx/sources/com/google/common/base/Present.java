package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Collections;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Present<T> extends Optional<T> {
    private static final long serialVersionUID = 0;
    private final T reference;

    public Present(T t) {
        this.reference = t;
    }

    @Override // com.google.common.base.Optional
    public Set<T> asSet() {
        return Collections.singleton(this.reference);
    }

    @Override // com.google.common.base.Optional
    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof Present) {
            return this.reference.equals(((Present) obj).reference);
        }
        return false;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        return this.reference;
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return this.reference.hashCode() + 1502476572;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return true;
    }

    @Override // com.google.common.base.Optional
    public T or(T t) {
        Preconditions.checkNotNull(t, new ObfuscatedString(new long[]{4862888620751088192L, -8343303879673168816L, 4041024601330374141L, 4975587265888878511L, -8659985832517920014L, 6153426212482787750L, -7033369314498149038L, -4271053612406828175L}).toString());
        return this.reference;
    }

    @Override // com.google.common.base.Optional
    public T orNull() {
        return this.reference;
    }

    @Override // com.google.common.base.Optional
    public String toString() {
        String valueOf = String.valueOf(this.reference);
        StringBuilder sb = new StringBuilder(valueOf.length() + 13);
        sb.append(new ObfuscatedString(new long[]{-7098085203572695042L, 5205495808471124823L, 422677833155274427L}).toString());
        sb.append(valueOf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7021077865400451389L, 1226866575409113069L}), sb);
    }

    @Override // com.google.common.base.Optional
    public <V> Optional<V> transform(Function<? super T, V> function) {
        return new Present(Preconditions.checkNotNull(function.apply(this.reference), new ObfuscatedString(new long[]{1800160701977271317L, -7424143007048013170L, -4147426663837622344L, 3184357264168450838L, 1675078781672032808L, -6950739024583804982L, -6393714703906459468L, 6352753334165681521L, -5575876037758810977L, 6039852289484417522L}).toString()));
    }

    @Override // com.google.common.base.Optional
    public Optional<T> or(Optional<? extends T> optional) {
        Preconditions.checkNotNull(optional);
        return this;
    }

    @Override // com.google.common.base.Optional
    public T or(Supplier<? extends T> supplier) {
        Preconditions.checkNotNull(supplier);
        return this.reference;
    }
}
