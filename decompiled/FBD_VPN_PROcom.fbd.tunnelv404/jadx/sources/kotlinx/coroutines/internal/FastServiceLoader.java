package kotlinx.coroutines.internal;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC0590xf7db57e6;
import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC1197x89633db9;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001J\u0015\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0000¢\u0006\u0004\b\u0004\u0010\u0005J1\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b2\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/internal/FastServiceLoader;", "", "", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "loadMainDispatcherFactory$kotlinx_coroutines_core", "()Ljava/util/List;", "loadMainDispatcherFactory", ExifInterface.LATITUDE_SOUTH, "Ljava/lang/Class;", NotificationCompat.CATEGORY_SERVICE, "Ljava/lang/ClassLoader;", "loader", "loadProviders$kotlinx_coroutines_core", "(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;", "loadProviders", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,169:1\n85#1,5:170\n85#1,5:175\n139#1,13:191\n1#2:180\n1368#3:181\n1454#3,5:182\n1557#3:187\n1628#3,3:188\n1069#4,2:204\n*S KotlinDebug\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n*L\n62#1:170,5\n69#1:175,5\n125#1:191,13\n107#1:181\n107#1:182,5\n109#1:187\n109#1:188,3\n161#1:204,2\n*E\n"})
/* loaded from: classes3.dex */
public final class FastServiceLoader {

    @NotNull
    public static final FastServiceLoader INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static List m2334xfbe0c504(BufferedReader bufferedReader) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return CollectionsKt___CollectionsKt.toList(linkedHashSet);
            }
            String obj = StringsKt__StringsKt.trim(StringsKt__StringsKt.substringBefore$default(readLine, "#", (String) null, 2, (Object) null)).toString();
            for (int i = 0; i < obj.length(); i++) {
                char charAt = obj.charAt(i);
                if (charAt != '.' && !Character.isJavaIdentifierPart(charAt)) {
                    throw new IllegalArgumentException("Illegal service provider class name: ".concat(obj).toString());
                }
            }
            if (obj.length() > 0) {
                linkedHashSet.add(obj);
            }
        }
    }

    @NotNull
    public final List<MainDispatcherFactory> loadMainDispatcherFactory$kotlinx_coroutines_core() {
        MainDispatcherFactory mainDispatcherFactory;
        if (!FastServiceLoaderKt.getANDROID_DETECTED()) {
            ClassLoader classLoader = MainDispatcherFactory.class.getClassLoader();
            try {
                return loadProviders$kotlinx_coroutines_core(MainDispatcherFactory.class, classLoader);
            } catch (Throwable unused) {
                return CollectionsKt___CollectionsKt.toList(ServiceLoader.load(MainDispatcherFactory.class, classLoader));
            }
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            MainDispatcherFactory mainDispatcherFactory2 = null;
            try {
                mainDispatcherFactory = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.android.AndroidDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(null).newInstance(null));
            } catch (ClassNotFoundException unused2) {
                mainDispatcherFactory = null;
            }
            if (mainDispatcherFactory == null) {
                ClassLoader classLoader2 = MainDispatcherFactory.class.getClassLoader();
                try {
                    return loadProviders$kotlinx_coroutines_core(MainDispatcherFactory.class, classLoader2);
                } catch (Throwable unused3) {
                    return CollectionsKt___CollectionsKt.toList(ServiceLoader.load(MainDispatcherFactory.class, classLoader2));
                }
            }
            arrayList.add(mainDispatcherFactory);
            try {
                mainDispatcherFactory2 = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(null).newInstance(null));
            } catch (ClassNotFoundException unused4) {
            }
            if (mainDispatcherFactory2 != null) {
                arrayList.add(mainDispatcherFactory2);
                return arrayList;
            }
            return arrayList;
        } catch (Throwable unused5) {
            ClassLoader classLoader3 = MainDispatcherFactory.class.getClassLoader();
            try {
                return loadProviders$kotlinx_coroutines_core(MainDispatcherFactory.class, classLoader3);
            } catch (Throwable unused6) {
                return CollectionsKt___CollectionsKt.toList(ServiceLoader.load(MainDispatcherFactory.class, classLoader3));
            }
        }
    }

    @NotNull
    public final <S> List<S> loadProviders$kotlinx_coroutines_core(@NotNull Class<S> service, @NotNull ClassLoader loader) {
        BufferedReader bufferedReader;
        List list;
        ArrayList<URL> list2 = Collections.list(loader.getResources("META-INF/services/".concat(service.getName())));
        Intrinsics.checkNotNullExpressionValue(list2, "list(...)");
        ArrayList arrayList = new ArrayList();
        for (URL url : list2) {
            INSTANCE.getClass();
            String url2 = url.toString();
            if (AbstractC1197x89633db9.startsWith$default(url2, "jar", false, 2, null)) {
                String substringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringAfter$default(url2, "jar:file:", (String) null, 2, (Object) null), '!', (String) null, 2, (Object) null);
                String substringAfter$default = StringsKt__StringsKt.substringAfter$default(url2, "!/", (String) null, 2, (Object) null);
                JarFile jarFile = new JarFile(substringBefore$default, false);
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(substringAfter$default)), "UTF-8"));
                    try {
                        list = m2334xfbe0c504(bufferedReader);
                        CloseableKt.closeFinally(bufferedReader, null);
                        jarFile.close();
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            jarFile.close();
                            throw th2;
                        } catch (Throwable th3) {
                            AbstractC0720xaa9ccb5a.addSuppressed(th, th3);
                            throw th;
                        }
                    }
                }
            } else {
                bufferedReader = new BufferedReader(new InputStreamReader(url.openStream()));
                try {
                    List m2334xfbe0c504 = m2334xfbe0c504(bufferedReader);
                    CloseableKt.closeFinally(bufferedReader, null);
                    list = m2334xfbe0c504;
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } finally {
                    }
                }
            }
            AbstractC0590xf7db57e6.addAll(arrayList, list);
        }
        Set set = CollectionsKt___CollectionsKt.toSet(arrayList);
        if (!set.isEmpty()) {
            Set<String> set2 = set;
            ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(set2, 10));
            for (String str : set2) {
                INSTANCE.getClass();
                Class<?> cls = Class.forName(str, false, loader);
                if (service.isAssignableFrom(cls)) {
                    arrayList2.add(service.cast(cls.getDeclaredConstructor(null).newInstance(null)));
                } else {
                    throw new IllegalArgumentException(("Expected service of class " + service + ", but found " + cls).toString());
                }
            }
            return arrayList2;
        }
        throw new IllegalArgumentException("No providers were loaded with FastServiceLoader");
    }
}
