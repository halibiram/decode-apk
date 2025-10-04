package com.google.common.reflect;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.base.StandardSystemProperty;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.io.ByteSource;
import com.google.common.io.CharSource;
import com.google.common.io.Resources;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import defpackage.C0579xbc79f3ee;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class ClassPath {
    private final ImmutableSet<ResourceInfo> resources;
    private static final String CLASS_FILE_NAME_EXTENSION = new ObfuscatedString(new long[]{-2443267638267669540L, 693777075111250022L}).toString();
    private static final Logger logger = Logger.getLogger(ClassPath.class.getName());
    private static final Splitter CLASS_PATH_ATTRIBUTE_SEPARATOR = Splitter.on(new ObfuscatedString(new long[]{1976167247614257963L, 4920250982791823105L}).toString()).omitEmptyStrings();

    /* loaded from: classes2.dex */
    public static final class ClassInfo extends ResourceInfo {
        private final String className;

        public ClassInfo(File file, String str, ClassLoader classLoader) {
            super(file, str, classLoader);
            this.className = ClassPath.getClassName(str);
        }

        public String getName() {
            return this.className;
        }

        public String getPackageName() {
            return Reflection.getPackageName(this.className);
        }

        public String getSimpleName() {
            int lastIndexOf = this.className.lastIndexOf(36);
            if (lastIndexOf != -1) {
                return CharMatcher.inRange('0', '9').trimLeadingFrom(this.className.substring(lastIndexOf + 1));
            }
            String packageName = getPackageName();
            if (packageName.isEmpty()) {
                return this.className;
            }
            return this.className.substring(packageName.length() + 1);
        }

        public boolean isTopLevel() {
            if (this.className.indexOf(36) == -1) {
                return true;
            }
            return false;
        }

        public Class<?> load() {
            try {
                return this.loader.loadClass(this.className);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.reflect.ClassPath.ResourceInfo
        public String toString() {
            return this.className;
        }
    }

    /* loaded from: classes2.dex */
    public static final class LocationInfo {
        private final ClassLoader classloader;
        final File home;

        public LocationInfo(File file, ClassLoader classLoader) {
            this.home = (File) Preconditions.checkNotNull(file);
            this.classloader = (ClassLoader) Preconditions.checkNotNull(classLoader);
        }

        private void scan(File file, Set<File> set, ImmutableSet.Builder<ResourceInfo> builder) {
            try {
                if (!file.exists()) {
                    return;
                }
                if (file.isDirectory()) {
                    scanDirectory(file, builder);
                } else {
                    scanJar(file, set, builder);
                }
            } catch (SecurityException e) {
                Logger logger = ClassPath.logger;
                String valueOf = String.valueOf(file);
                String valueOf2 = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 16);
                sb.append(new ObfuscatedString(new long[]{4774542179263235276L, -2052612031298112097L, 4742785537581760705L}).toString());
                sb.append(valueOf);
                sb.append(new ObfuscatedString(new long[]{-8402167685728460630L, 2011564815813284847L}).toString());
                sb.append(valueOf2);
                logger.warning(sb.toString());
            }
        }

        private void scanDirectory(File file, ImmutableSet.Builder<ResourceInfo> builder) {
            HashSet hashSet = new HashSet();
            hashSet.add(file.getCanonicalFile());
            scanDirectory(file, new ObfuscatedString(new long[]{-7532721611144014366L}).toString(), hashSet, builder);
        }

        private void scanJar(File file, Set<File> set, ImmutableSet.Builder<ResourceInfo> builder) {
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    UnmodifiableIterator<File> it = ClassPath.getClassPathFromManifest(file, jarFile.getManifest()).iterator();
                    while (it.hasNext()) {
                        File next = it.next();
                        if (set.add(next.getCanonicalFile())) {
                            scan(next, set, builder);
                        }
                    }
                    scanJarFile(jarFile, builder);
                    try {
                        jarFile.close();
                    } catch (IOException unused) {
                    }
                } catch (Throwable th) {
                    try {
                        jarFile.close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            } catch (IOException unused3) {
            }
        }

        private void scanJarFile(JarFile jarFile, ImmutableSet.Builder<ResourceInfo> builder) {
            Enumeration<JarEntry> entries = jarFile.entries();
            while (entries.hasMoreElements()) {
                JarEntry nextElement = entries.nextElement();
                if (!nextElement.isDirectory() && !nextElement.getName().equals(new ObfuscatedString(new long[]{-2004883003670310110L, 1735980313157707897L, -5840189080941025373L, -24345813763565559L}).toString())) {
                    builder.add((ImmutableSet.Builder<ResourceInfo>) ResourceInfo.of(new File(jarFile.getName()), nextElement.getName(), this.classloader));
                }
            }
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof LocationInfo)) {
                return false;
            }
            LocationInfo locationInfo = (LocationInfo) obj;
            if (!this.home.equals(locationInfo.home) || !this.classloader.equals(locationInfo.classloader)) {
                return false;
            }
            return true;
        }

        public final File file() {
            return this.home;
        }

        public int hashCode() {
            return this.home.hashCode();
        }

        public ImmutableSet<ResourceInfo> scanResources() {
            return scanResources(new HashSet());
        }

        public String toString() {
            return this.home.toString();
        }

        public ImmutableSet<ResourceInfo> scanResources(Set<File> set) {
            ImmutableSet.Builder<ResourceInfo> builder = ImmutableSet.builder();
            set.add(this.home);
            scan(this.home, set, builder);
            return builder.build();
        }

        private void scanDirectory(File file, String str, Set<File> set, ImmutableSet.Builder<ResourceInfo> builder) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                Logger logger = ClassPath.logger;
                String valueOf = String.valueOf(file);
                StringBuilder sb = new StringBuilder(valueOf.length() + 22);
                sb.append(new ObfuscatedString(new long[]{8201693734296036755L, 2786393892515632494L, -103056220994702159L, 7262081764885248453L}).toString());
                sb.append(valueOf);
                logger.warning(sb.toString());
                return;
            }
            for (File file2 : listFiles) {
                String name = file2.getName();
                if (file2.isDirectory()) {
                    File canonicalFile = file2.getCanonicalFile();
                    if (set.add(canonicalFile)) {
                        StringBuilder sb2 = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(1, str), name));
                        sb2.append(str);
                        sb2.append(name);
                        scanDirectory(canonicalFile, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5905146213967956323L, 8942973936136266197L}), sb2), set, builder);
                        set.remove(canonicalFile);
                    }
                } else {
                    String valueOf2 = String.valueOf(str);
                    String valueOf3 = String.valueOf(name);
                    String concat = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
                    if (!concat.equals(new ObfuscatedString(new long[]{-3402162203149738364L, 6181143421012462820L, -4618591115018056423L, 8968956663918188543L}).toString())) {
                        builder.add((ImmutableSet.Builder<ResourceInfo>) ResourceInfo.of(file2, concat, this.classloader));
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ResourceInfo {
        private final File file;
        final ClassLoader loader;
        private final String resourceName;

        public ResourceInfo(File file, String str, ClassLoader classLoader) {
            this.file = (File) Preconditions.checkNotNull(file);
            this.resourceName = (String) Preconditions.checkNotNull(str);
            this.loader = (ClassLoader) Preconditions.checkNotNull(classLoader);
        }

        public static ResourceInfo of(File file, String str, ClassLoader classLoader) {
            if (str.endsWith(new ObfuscatedString(new long[]{-5811199047409311721L, -1992039739228468173L}).toString())) {
                return new ClassInfo(file, str, classLoader);
            }
            return new ResourceInfo(file, str, classLoader);
        }

        public final ByteSource asByteSource() {
            return Resources.asByteSource(url());
        }

        public final CharSource asCharSource(Charset charset) {
            return Resources.asCharSource(url(), charset);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof ResourceInfo)) {
                return false;
            }
            ResourceInfo resourceInfo = (ResourceInfo) obj;
            if (!this.resourceName.equals(resourceInfo.resourceName) || this.loader != resourceInfo.loader) {
                return false;
            }
            return true;
        }

        public final File getFile() {
            return this.file;
        }

        public final String getResourceName() {
            return this.resourceName;
        }

        public int hashCode() {
            return this.resourceName.hashCode();
        }

        public String toString() {
            return this.resourceName;
        }

        public final URL url() {
            URL resource = this.loader.getResource(this.resourceName);
            if (resource != null) {
                return resource;
            }
            throw new NoSuchElementException(this.resourceName);
        }
    }

    private ClassPath(ImmutableSet<ResourceInfo> immutableSet) {
        this.resources = immutableSet;
    }

    public static ClassPath from(ClassLoader classLoader) {
        ImmutableSet<LocationInfo> locationsFrom = locationsFrom(classLoader);
        HashSet hashSet = new HashSet();
        UnmodifiableIterator<LocationInfo> it = locationsFrom.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().file());
        }
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<LocationInfo> it2 = locationsFrom.iterator();
        while (it2.hasNext()) {
            builder.addAll((Iterable) it2.next().scanResources(hashSet));
        }
        return new ClassPath(builder.build());
    }

    private static ImmutableList<URL> getClassLoaderUrls(ClassLoader classLoader) {
        if (classLoader instanceof URLClassLoader) {
            return ImmutableList.copyOf(((URLClassLoader) classLoader).getURLs());
        }
        if (classLoader.equals(ClassLoader.getSystemClassLoader())) {
            return parseJavaClassPath();
        }
        return ImmutableList.of();
    }

    @VisibleForTesting
    public static String getClassName(String str) {
        return str.substring(0, str.length() - new ObfuscatedString(new long[]{2191778098974948031L, 2907657822549210944L}).toString().length()).replace('/', '.');
    }

    @VisibleForTesting
    public static ImmutableMap<File, ClassLoader> getClassPathEntries(ClassLoader classLoader) {
        LinkedHashMap newLinkedHashMap = Maps.newLinkedHashMap();
        ClassLoader parent = classLoader.getParent();
        if (parent != null) {
            newLinkedHashMap.putAll(getClassPathEntries(parent));
        }
        UnmodifiableIterator<URL> it = getClassLoaderUrls(classLoader).iterator();
        while (it.hasNext()) {
            URL next = it.next();
            if (next.getProtocol().equals(new ObfuscatedString(new long[]{-2492607178111227716L, 5902075162984525353L}).toString())) {
                File file = toFile(next);
                if (!newLinkedHashMap.containsKey(file)) {
                    newLinkedHashMap.put(file, classLoader);
                }
            }
        }
        return ImmutableMap.copyOf((Map) newLinkedHashMap);
    }

    @VisibleForTesting
    public static URL getClassPathEntry(File file, String str) {
        return new URL(file.toURI().toURL(), str);
    }

    @VisibleForTesting
    public static ImmutableSet<File> getClassPathFromManifest(File file, @CheckForNull Manifest manifest) {
        String str;
        if (manifest == null) {
            return ImmutableSet.of();
        }
        ImmutableSet.Builder builder = ImmutableSet.builder();
        String value = manifest.getMainAttributes().getValue(Attributes.Name.CLASS_PATH.toString());
        if (value != null) {
            for (String str2 : CLASS_PATH_ATTRIBUTE_SEPARATOR.split(value)) {
                try {
                    URL classPathEntry = getClassPathEntry(file, str2);
                    if (classPathEntry.getProtocol().equals(new ObfuscatedString(new long[]{1060460549419884715L, 7250120232825621666L}).toString())) {
                        builder.add((ImmutableSet.Builder) toFile(classPathEntry));
                    }
                } catch (MalformedURLException unused) {
                    Logger logger2 = logger;
                    String obfuscatedString = new ObfuscatedString(new long[]{5898146821245650525L, -8489232687678423498L, -1005711694502285636L, -4749795523083648363L, -674688966947376063L}).toString();
                    String valueOf = String.valueOf(str2);
                    if (valueOf.length() != 0) {
                        str = obfuscatedString.concat(valueOf);
                    } else {
                        str = new String(obfuscatedString);
                    }
                    logger2.warning(str);
                }
            }
        }
        return builder.build();
    }

    public static ImmutableSet<LocationInfo> locationsFrom(ClassLoader classLoader) {
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<Map.Entry<File, ClassLoader>> it = getClassPathEntries(classLoader).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<File, ClassLoader> next = it.next();
            builder.add((ImmutableSet.Builder) new LocationInfo(next.getKey(), next.getValue()));
        }
        return builder.build();
    }

    @VisibleForTesting
    public static ImmutableList<URL> parseJavaClassPath() {
        String str;
        ImmutableList.Builder builder = ImmutableList.builder();
        for (String str2 : Splitter.on(StandardSystemProperty.PATH_SEPARATOR.value()).split(StandardSystemProperty.JAVA_CLASS_PATH.value())) {
            try {
                try {
                    builder.add((ImmutableList.Builder) new File(str2).toURI().toURL());
                } catch (SecurityException unused) {
                    builder.add((ImmutableList.Builder) new URL(new ObfuscatedString(new long[]{-8851953579322023869L, -8532296332505198641L}).toString(), (String) null, new File(str2).getAbsolutePath()));
                }
            } catch (MalformedURLException e) {
                Logger logger2 = logger;
                Level level = Level.WARNING;
                String obfuscatedString = new ObfuscatedString(new long[]{8009053987986326739L, -3672735448752564231L, 604863910292276156L, -976717795497281905L, -7107516419437533433L}).toString();
                String valueOf = String.valueOf(str2);
                if (valueOf.length() != 0) {
                    str = obfuscatedString.concat(valueOf);
                } else {
                    str = new String(obfuscatedString);
                }
                logger2.log(level, str, (Throwable) e);
            }
        }
        return builder.build();
    }

    @VisibleForTesting
    public static File toFile(URL url) {
        Preconditions.checkArgument(url.getProtocol().equals(new ObfuscatedString(new long[]{1154530925927085564L, -8909949050519642924L}).toString()));
        try {
            return new File(url.toURI());
        } catch (URISyntaxException unused) {
            return new File(url.getPath());
        }
    }

    public ImmutableSet<ClassInfo> getAllClasses() {
        return FluentIterable.from(this.resources).filter(ClassInfo.class).toSet();
    }

    public ImmutableSet<ResourceInfo> getResources() {
        return this.resources;
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses() {
        return FluentIterable.from(this.resources).filter(ClassInfo.class).filter(new C0579xbc79f3ee(0)).toSet();
    }

    public ImmutableSet<ClassInfo> getTopLevelClassesRecursive(String str) {
        Preconditions.checkNotNull(str);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1);
        sb.append(str);
        sb.append('.');
        String sb2 = sb.toString();
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<ClassInfo> it = getTopLevelClasses().iterator();
        while (it.hasNext()) {
            ClassInfo next = it.next();
            if (next.getName().startsWith(sb2)) {
                builder.add((ImmutableSet.Builder) next);
            }
        }
        return builder.build();
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses(String str) {
        Preconditions.checkNotNull(str);
        ImmutableSet.Builder builder = ImmutableSet.builder();
        UnmodifiableIterator<ClassInfo> it = getTopLevelClasses().iterator();
        while (it.hasNext()) {
            ClassInfo next = it.next();
            if (next.getPackageName().equals(str)) {
                builder.add((ImmutableSet.Builder) next);
            }
        }
        return builder.build();
    }
}
