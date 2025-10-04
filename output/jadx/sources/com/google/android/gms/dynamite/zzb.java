package com.google.android.gms.dynamite;

import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzb {

    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")
    private static ClassLoader zza;

    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")
    private static Thread zzb;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00d7, code lost:
    
        if (r3 == null) goto L60;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized ClassLoader zza() {
        ClassLoader classLoader;
        Thread thread;
        ThreadGroup threadGroup;
        zza zzaVar;
        synchronized (zzb.class) {
            if (zza == null) {
                Thread thread2 = zzb;
                ClassLoader classLoader2 = null;
                if (thread2 == null) {
                    ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
                    if (threadGroup2 == null) {
                        thread2 = null;
                    } else {
                        synchronized (Void.class) {
                            try {
                                try {
                                    int activeGroupCount = threadGroup2.activeGroupCount();
                                    ThreadGroup[] threadGroupArr = new ThreadGroup[activeGroupCount];
                                    threadGroup2.enumerate(threadGroupArr);
                                    int i = 0;
                                    int i2 = 0;
                                    while (true) {
                                        if (i2 < activeGroupCount) {
                                            threadGroup = threadGroupArr[i2];
                                            if (new ObfuscatedString(new long[]{8448060796891285960L, 3580880416841229992L, -6988776169311748619L}).toString().equals(threadGroup.getName())) {
                                                break;
                                            }
                                            i2++;
                                        } else {
                                            threadGroup = null;
                                            break;
                                        }
                                    }
                                    if (threadGroup == null) {
                                        threadGroup = new ThreadGroup(threadGroup2, new ObfuscatedString(new long[]{-7306655840351271999L, 5950251179297154566L, 5657025319682437342L}).toString());
                                    }
                                    int activeCount = threadGroup.activeCount();
                                    Thread[] threadArr = new Thread[activeCount];
                                    threadGroup.enumerate(threadArr);
                                    while (true) {
                                        if (i < activeCount) {
                                            thread = threadArr[i];
                                            if (new ObfuscatedString(new long[]{3493599664900340500L, 463382528113698549L, 7712411850155617709L}).toString().equals(thread.getName())) {
                                                break;
                                            }
                                            i++;
                                        } else {
                                            thread = null;
                                            break;
                                        }
                                    }
                                    if (thread == null) {
                                        try {
                                            zzaVar = new zza(threadGroup, new ObfuscatedString(new long[]{-530323136609199814L, -4671255635474048522L, 672400217072897383L}).toString());
                                        } catch (SecurityException e) {
                                            e = e;
                                        }
                                        try {
                                            zzaVar.setContextClassLoader(null);
                                            zzaVar.start();
                                            thread = zzaVar;
                                        } catch (SecurityException e2) {
                                            e = e2;
                                            thread = zzaVar;
                                            new ObfuscatedString(new long[]{-6385409610816322589L, -2193377468851138628L, 2191913754105447096L, 1252072481066755778L}).toString();
                                            e.getMessage();
                                            new ObfuscatedString(new long[]{6233402581556251879L, -8880467867983244877L, -5929359040066932302L, -7482686539649495127L, -1438245301119859838L, -3117124682039551641L}).toString();
                                            thread2 = thread;
                                            zzb = thread2;
                                        }
                                    }
                                } finally {
                                }
                            } catch (SecurityException e3) {
                                e = e3;
                                thread = null;
                            }
                        }
                        thread2 = thread;
                    }
                    zzb = thread2;
                }
                synchronized (thread2) {
                    try {
                        classLoader2 = zzb.getContextClassLoader();
                    } catch (SecurityException e4) {
                        new ObfuscatedString(new long[]{-4559654574835083733L, 7786294225831065864L, 6488817875757748314L, 6574125593009254584L}).toString();
                        e4.getMessage();
                        new ObfuscatedString(new long[]{3662219289085426666L, -2094211309769604953L, 3352943654714990938L, 4560317358856175632L, 586033441877380142L, -1719819858463109741L, -745503555119224693L}).toString();
                    }
                }
                zza = classLoader2;
            }
            classLoader = zza;
        }
        return classLoader;
    }
}
