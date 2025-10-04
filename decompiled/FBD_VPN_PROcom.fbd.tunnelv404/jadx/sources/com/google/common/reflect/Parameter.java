package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import javax.annotation.CheckForNull;

@Beta
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Parameter implements AnnotatedElement {
    private final ImmutableList<Annotation> annotations;
    private final Invokable<?, ?> declaration;
    private final int position;
    private final TypeToken<?> type;

    public Parameter(Invokable<?, ?> invokable, int i, TypeToken<?> typeToken, Annotation[] annotationArr) {
        this.declaration = invokable;
        this.position = i;
        this.type = typeToken;
        this.annotations = ImmutableList.copyOf(annotationArr);
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof Parameter)) {
            return false;
        }
        Parameter parameter = (Parameter) obj;
        if (this.position != parameter.position || !this.declaration.equals(parameter.declaration)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.reflect.AnnotatedElement
    @CheckForNull
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        Preconditions.checkNotNull(cls);
        UnmodifiableIterator<Annotation> it = this.annotations.iterator();
        while (it.hasNext()) {
            Annotation next = it.next();
            if (cls.isInstance(next)) {
                return cls.cast(next);
            }
        }
        return null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getAnnotations() {
        return getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        return (A[]) getDeclaredAnnotationsByType(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    @CheckForNull
    public <A extends Annotation> A getDeclaredAnnotation(Class<A> cls) {
        Preconditions.checkNotNull(cls);
        return (A) FluentIterable.from(this.annotations).filter(cls).first().orNull();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getDeclaredAnnotations() {
        return (Annotation[]) this.annotations.toArray(new Annotation[0]);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getDeclaredAnnotationsByType(Class<A> cls) {
        return (A[]) ((Annotation[]) FluentIterable.from(this.annotations).filter(cls).toArray(cls));
    }

    public Invokable<?, ?> getDeclaringInvokable() {
        return this.declaration;
    }

    public TypeToken<?> getType() {
        return this.type;
    }

    public int hashCode() {
        return this.position;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        if (getAnnotation(cls) != null) {
            return true;
        }
        return false;
    }

    public String toString() {
        String valueOf = String.valueOf(this.type);
        int i = this.position;
        return AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-239807537154061563L, 5314569023309002356L}), AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + 15, valueOf), i);
    }
}
