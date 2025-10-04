package org.junit.experimental.categories;

import defpackage.AbstractC0362x4440ab85;
import j$.util.DesugarCollections;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.runners.model.FrameworkMethod;
import org.junit.validator.AnnotationValidator;

/* loaded from: classes3.dex */
public final class CategoryValidator extends AnnotationValidator {
    private static final Set<Class<? extends Annotation>> INCOMPATIBLE_ANNOTATIONS = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(BeforeClass.class, AfterClass.class, Before.class, After.class)));

    private void addErrorMessage(List<Exception> list, Class<?> cls) {
        list.add(new Exception(AbstractC0362x4440ab85.m2932x95f25580("@", cls.getSimpleName(), " can not be combined with @Category")));
    }

    @Override // org.junit.validator.AnnotationValidator
    public List<Exception> validateAnnotatedMethod(FrameworkMethod frameworkMethod) {
        ArrayList arrayList = new ArrayList();
        for (Annotation annotation : frameworkMethod.getAnnotations()) {
            for (Class<? extends Annotation> cls : INCOMPATIBLE_ANNOTATIONS) {
                if (annotation.annotationType().isAssignableFrom(cls)) {
                    addErrorMessage(arrayList, cls);
                }
            }
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
