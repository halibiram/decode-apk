package com.google.common.base.internal;

import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public class Finalizer implements Runnable {

    @CheckForNull
    private static final Constructor<Thread> bigThreadConstructor;

    @CheckForNull
    private static final Field inheritableThreadLocals;
    private final WeakReference<Class<?>> finalizableReferenceClassReference;
    private final PhantomReference<Object> frqReference;
    private final ReferenceQueue<Object> queue;
    private static final String FINALIZABLE_REFERENCE = new ObfuscatedString(new long[]{-5271001256248948048L, -3720633401203088117L, -6365716860676298915L, 7955785810126212234L, 4330530953317883615L, -402236738133112860L, -3348574258091190512L}).toString();
    private static final Logger logger = Logger.getLogger(Finalizer.class.getName());

    static {
        Field field;
        Constructor<Thread> bigThreadConstructor2 = getBigThreadConstructor();
        bigThreadConstructor = bigThreadConstructor2;
        if (bigThreadConstructor2 == null) {
            field = getInheritableThreadLocalsField();
        } else {
            field = null;
        }
        inheritableThreadLocals = field;
    }

    private Finalizer(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        this.queue = referenceQueue;
        this.finalizableReferenceClassReference = new WeakReference<>(cls);
        this.frqReference = phantomReference;
    }

    private boolean cleanUp(Reference<?> reference) {
        Method finalizeReferentMethod = getFinalizeReferentMethod();
        if (finalizeReferentMethod == null) {
            return false;
        }
        do {
            reference.clear();
            if (reference == this.frqReference) {
                return false;
            }
            try {
                finalizeReferentMethod.invoke(reference, null);
            } catch (Throwable th) {
                logger.log(Level.SEVERE, new ObfuscatedString(new long[]{7209459291966240981L, -8316702864026937078L, 4561591659853237039L, 230533851341463025L, 1710809459092411218L, 1821722805288838044L}).toString(), th);
            }
            reference = this.queue.poll();
        } while (reference != null);
        return true;
    }

    @CheckForNull
    private static Constructor<Thread> getBigThreadConstructor() {
        try {
            return Thread.class.getConstructor(ThreadGroup.class, Runnable.class, String.class, Long.TYPE, Boolean.TYPE);
        } catch (Throwable unused) {
            return null;
        }
    }

    @CheckForNull
    private Method getFinalizeReferentMethod() {
        Class<?> cls = this.finalizableReferenceClassReference.get();
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod(new ObfuscatedString(new long[]{-4627185237460436838L, 6033890069026380798L, 8204806978148679348L}).toString(), null);
        } catch (NoSuchMethodException e) {
            throw new AssertionError(e);
        }
    }

    @CheckForNull
    private static Field getInheritableThreadLocalsField() {
        try {
            Field declaredField = Thread.class.getDeclaredField(new ObfuscatedString(new long[]{-300705971260937305L, 3969104569270603494L, -3691598534175055359L, 6941479057115001368L}).toString());
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            logger.log(Level.INFO, new ObfuscatedString(new long[]{-3427922489190477515L, 6269280940739401357L, -6127376150883627444L, -774571306200855136L, -4808541367855693703L, -4594865058566482935L, 1129969033723139179L, -1326797128322127589L, -2958688139357268703L, 1569626740924836455L, 4870174017380984984L, -7487228184438331142L, 3942789452778196054L, -4900100569035760071L, 3199531987101052669L}).toString());
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:3|(10:5|6|7|(1:9)|10|11|12|(1:14)|16|17)|24|(0)|10|11|12|(0)|16|17) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0075, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0076, code lost:
    
        com.google.common.base.internal.Finalizer.logger.log(java.util.logging.Level.INFO, new com.panda912.muddy.ObfuscatedString(new long[]{8575278340429697948L, 928124413398266634L, 7101921875505923426L, -6699927802685677930L, -8820229035679880845L, -1339165643647219222L, -1205620578169890401L, 7446812389932456963L, -2420404822791386864L, 259856609428834446L, -1521502414049784564L}).toString(), r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0071 A[Catch: all -> 0x0075, TRY_LEAVE, TryCatch #0 {all -> 0x0075, blocks: (B:12:0x006d, B:14:0x0071), top: B:11:0x006d }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void startFinalizer(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        Thread thread;
        Field field;
        if (cls.getName().equals(new ObfuscatedString(new long[]{-3770759101398437944L, 2271168576594025019L, -5372141163626791651L, -57522413975915484L, -579550883490556349L, 6501494413585619782L, 3018977374731926568L}).toString())) {
            Finalizer finalizer = new Finalizer(cls, referenceQueue, phantomReference);
            String name = Finalizer.class.getName();
            Constructor<Thread> constructor = bigThreadConstructor;
            if (constructor != null) {
                try {
                    thread = constructor.newInstance(null, finalizer, name, 0L, Boolean.FALSE);
                } catch (Throwable th) {
                    logger.log(Level.INFO, new ObfuscatedString(new long[]{-3418965083502985438L, 8708031412319970321L, 7535242288874294297L, 1683829665052542536L, 5521291459029239376L, -2504124396707657179L, 1805630500681508571L, -7559211106468281565L, -376146756648680686L}).toString(), th);
                }
                if (thread == null) {
                    thread = new Thread(null, finalizer, name);
                }
                thread.setDaemon(true);
                field = inheritableThreadLocals;
                if (field != null) {
                    field.set(thread, null);
                }
                thread.start();
                return;
            }
            thread = null;
            if (thread == null) {
            }
            thread.setDaemon(true);
            field = inheritableThreadLocals;
            if (field != null) {
            }
            thread.start();
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5321649035017765275L, 4468054283697423308L, -3992681735488132727L, 2889675978660724565L, 1701912709757812073L, 3923102711673752158L, 2269818488207329951L, -8808352868312325072L}).toString());
    }

    @Override // java.lang.Runnable
    public void run() {
        while (cleanUp(this.queue.remove())) {
        }
    }
}
