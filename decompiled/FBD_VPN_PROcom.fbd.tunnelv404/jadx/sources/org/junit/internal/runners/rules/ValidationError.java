package org.junit.internal.runners.rules;

import defpackage.AbstractC0362x4440ab85;
import java.lang.annotation.Annotation;
import org.junit.runners.model.FrameworkMember;

/* loaded from: classes3.dex */
class ValidationError extends Exception {
    private static final long serialVersionUID = 3176511008672645574L;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ValidationError(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, String str) {
        super(r4.toString());
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("The @", cls.getSimpleName(), " '", frameworkMember.getName(), "' ");
        m2944x4440ab85.append(str);
    }
}
