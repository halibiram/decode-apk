package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FileAlreadyExistsException;
import kotlin.io.FilePathComponents;
import kotlin.io.FileSystemException;
import kotlin.io.NoSuchFileException;
import kotlin.io.OnErrorAction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0745x74e3eed7 extends AbstractC0742x13a0e4fc {
    public static final boolean copyRecursively(@NotNull File file, @NotNull File target, boolean z, @NotNull Function2<? super File, ? super IOException, ? extends OnErrorAction> onError) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(onError, "onError");
        if (!file.exists()) {
            if (onError.invoke(file, new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null)) != OnErrorAction.TERMINATE) {
                return true;
            }
            return false;
        }
        try {
            Iterator<File> it = AbstractC0742x13a0e4fc.walkTopDown(file).onFail(new C0743x10037068(onError, 0)).iterator();
            while (it.hasNext()) {
                File next = it.next();
                if (!next.exists()) {
                    if (onError.invoke(next, new NoSuchFileException(next, null, "The source file doesn't exist.", 2, null)) == OnErrorAction.TERMINATE) {
                        return false;
                    }
                } else {
                    File file2 = new File(target, toRelativeString(next, file));
                    if (file2.exists() && (!next.isDirectory() || !file2.isDirectory())) {
                        if (z) {
                            if (file2.isDirectory()) {
                                if (!deleteRecursively(file2)) {
                                }
                            } else if (!file2.delete()) {
                            }
                        }
                        if (onError.invoke(file2, new FileAlreadyExistsException(next, file2, "The destination file already exists.")) == OnErrorAction.TERMINATE) {
                            return false;
                        }
                    }
                    if (next.isDirectory()) {
                        file2.mkdirs();
                    } else if (copyTo$default(next, file2, z, 0, 4, null).length() != next.length() && onError.invoke(next, new IOException("Source file wasn't copied completely, length of destination file differs.")) == OnErrorAction.TERMINATE) {
                        return false;
                    }
                }
            }
            return true;
        } catch (C1229x748d288 unused) {
            return false;
        }
    }

    public static /* synthetic */ boolean copyRecursively$default(File file, File file2, boolean z, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            function2 = C0744xd288124.f4658xfbe0c504;
        }
        return copyRecursively(file, file2, z, function2);
    }

    @NotNull
    public static final File copyTo(@NotNull File file, @NotNull File target, boolean z, int i) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        if (file.exists()) {
            if (target.exists()) {
                if (z) {
                    if (!target.delete()) {
                        throw new FileAlreadyExistsException(file, target, "Tried to overwrite the destination, but failed to delete it.");
                    }
                } else {
                    throw new FileAlreadyExistsException(file, target, "The destination file already exists.");
                }
            }
            if (file.isDirectory()) {
                if (!target.mkdirs()) {
                    throw new FileSystemException(file, target, "Failed to create target directory.");
                }
            } else {
                File parentFile = target.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(target);
                    try {
                        ByteStreamsKt.copyTo(fileInputStream, fileOutputStream, i);
                        CloseableKt.closeFinally(fileOutputStream, null);
                        CloseableKt.closeFinally(fileInputStream, null);
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileInputStream, th);
                        throw th2;
                    }
                }
            }
            return target;
        }
        throw new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null);
    }

    public static /* synthetic */ File copyTo$default(File file, File file2, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 8192;
        }
        return copyTo(file, file2, z, i);
    }

    @Deprecated(message = "Avoid creating temporary directories in the default temp location with this function due to too wide permissions on the newly created directory. Use kotlin.io.path.createTempDirectory instead.")
    @NotNull
    public static final File createTempDir(@NotNull String prefix, @Nullable String str, @Nullable File file) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        File createTempFile = File.createTempFile(prefix, str, file);
        createTempFile.delete();
        if (createTempFile.mkdir()) {
            Intrinsics.checkNotNull(createTempFile);
            return createTempFile;
        }
        throw new IOException("Unable to create temporary directory " + createTempFile + '.');
    }

    public static /* synthetic */ File createTempDir$default(String str, String str2, File file, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "tmp";
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            file = null;
        }
        return createTempDir(str, str2, file);
    }

    @Deprecated(message = "Avoid creating temporary files in the default temp location with this function due to too wide permissions on the newly created file. Use kotlin.io.path.createTempFile instead or resort to java.io.File.createTempFile.")
    @NotNull
    public static final File createTempFile(@NotNull String prefix, @Nullable String str, @Nullable File file) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        File createTempFile = File.createTempFile(prefix, str, file);
        Intrinsics.checkNotNullExpressionValue(createTempFile, "createTempFile(...)");
        return createTempFile;
    }

    public static /* synthetic */ File createTempFile$default(String str, String str2, File file, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "tmp";
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            file = null;
        }
        return createTempFile(str, str2, file);
    }

    public static boolean deleteRecursively(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        while (true) {
            boolean z = true;
            for (File file2 : AbstractC0742x13a0e4fc.walkBottomUp(file)) {
                if (file2.delete() || !file2.exists()) {
                    if (z) {
                        break;
                    }
                }
                z = false;
            }
            return z;
        }
    }

    public static final boolean endsWith(@NotNull File file, @NotNull File other) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        FilePathComponents components = AbstractC0739x15a9cdd3.toComponents(file);
        FilePathComponents components2 = AbstractC0739x15a9cdd3.toComponents(other);
        if (components2.isRooted()) {
            return Intrinsics.areEqual(file, other);
        }
        int size = components.getSize() - components2.getSize();
        if (size < 0) {
            return false;
        }
        return components.getSegments().subList(size, components.getSize()).equals(components2.getSegments());
    }

    @NotNull
    public static final String getExtension(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return StringsKt__StringsKt.substringAfterLast(name, '.', "");
    }

    @NotNull
    public static final String getInvariantSeparatorsPath(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        char c = File.separatorChar;
        String path = file.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        if (c != '/') {
            return AbstractC1197x89633db9.replace$default(path, c, '/', false, 4, (Object) null);
        }
        return path;
    }

    @NotNull
    public static final String getNameWithoutExtension(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return StringsKt__StringsKt.substringBeforeLast$default(name, ".", (String) null, 2, (Object) null);
    }

    @NotNull
    public static final File normalize(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        FilePathComponents components = AbstractC0739x15a9cdd3.toComponents(file);
        File root = components.getRoot();
        ArrayList m3321x3271d0aa = m3321x3271d0aa(components.getSegments());
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        return resolve(root, CollectionsKt___CollectionsKt.joinToString$default(m3321x3271d0aa, separator, null, null, 0, null, null, 62, null));
    }

    @NotNull
    public static final File relativeTo(@NotNull File file, @NotNull File base) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(base, "base");
        return new File(toRelativeString(file, base));
    }

    @Nullable
    public static final File relativeToOrNull(@NotNull File file, @NotNull File base) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(base, "base");
        String m3322x1378447b = m3322x1378447b(file, base);
        if (m3322x1378447b != null) {
            return new File(m3322x1378447b);
        }
        return null;
    }

    @NotNull
    public static final File relativeToOrSelf(@NotNull File file, @NotNull File base) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(base, "base");
        String m3322x1378447b = m3322x1378447b(file, base);
        if (m3322x1378447b != null) {
            return new File(m3322x1378447b);
        }
        return file;
    }

    @NotNull
    public static final File resolve(@NotNull File file, @NotNull File relative) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(relative, "relative");
        if (AbstractC0739x15a9cdd3.isRooted(relative)) {
            return relative;
        }
        String file2 = file.toString();
        Intrinsics.checkNotNullExpressionValue(file2, "toString(...)");
        if (file2.length() != 0) {
            char c = File.separatorChar;
            if (!StringsKt__StringsKt.endsWith$default((CharSequence) file2, c, false, 2, (Object) null)) {
                return new File(file2 + c + relative);
            }
        }
        return new File(file2 + relative);
    }

    @NotNull
    public static final File resolveSibling(@NotNull File file, @NotNull File relative) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(relative, "relative");
        FilePathComponents components = AbstractC0739x15a9cdd3.toComponents(file);
        return resolve(resolve(components.getRoot(), components.getSize() == 0 ? new File("..") : components.subPath(0, components.getSize() - 1)), relative);
    }

    public static final boolean startsWith(@NotNull File file, @NotNull File other) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        FilePathComponents components = AbstractC0739x15a9cdd3.toComponents(file);
        FilePathComponents components2 = AbstractC0739x15a9cdd3.toComponents(other);
        if (Intrinsics.areEqual(components.getRoot(), components2.getRoot()) && components.getSize() >= components2.getSize()) {
            return components.getSegments().subList(0, components2.getSize()).equals(components2.getSegments());
        }
        return false;
    }

    @NotNull
    public static final String toRelativeString(@NotNull File file, @NotNull File base) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(base, "base");
        String m3322x1378447b = m3322x1378447b(file, base);
        if (m3322x1378447b != null) {
            return m3322x1378447b;
        }
        throw new IllegalArgumentException("this and base files have different roots: " + file + " and " + base + '.');
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final ArrayList m3321x3271d0aa(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            String name = file.getName();
            if (!Intrinsics.areEqual(name, ".")) {
                if (Intrinsics.areEqual(name, "..")) {
                    if (!arrayList.isEmpty() && !Intrinsics.areEqual(((File) CollectionsKt___CollectionsKt.last((List) arrayList)).getName(), "..")) {
                        arrayList.remove(arrayList.size() - 1);
                    } else {
                        arrayList.add(file);
                    }
                } else {
                    arrayList.add(file);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final String m3322x1378447b(File file, File file2) {
        FilePathComponents components = AbstractC0739x15a9cdd3.toComponents(file);
        FilePathComponents filePathComponents = new FilePathComponents(components.getRoot(), m3321x3271d0aa(components.getSegments()));
        FilePathComponents components2 = AbstractC0739x15a9cdd3.toComponents(file2);
        FilePathComponents filePathComponents2 = new FilePathComponents(components2.getRoot(), m3321x3271d0aa(components2.getSegments()));
        if (!Intrinsics.areEqual(filePathComponents.getRoot(), filePathComponents2.getRoot())) {
            return null;
        }
        int size = filePathComponents2.getSize();
        int size2 = filePathComponents.getSize();
        int min = Math.min(size2, size);
        int i = 0;
        while (i < min && Intrinsics.areEqual(filePathComponents.getSegments().get(i), filePathComponents2.getSegments().get(i))) {
            i++;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = size - 1;
        if (i <= i2) {
            while (!Intrinsics.areEqual(filePathComponents2.getSegments().get(i2).getName(), "..")) {
                sb.append("..");
                if (i2 != i) {
                    sb.append(File.separatorChar);
                }
                if (i2 != i) {
                    i2--;
                }
            }
            return null;
        }
        if (i < size2) {
            if (i < size) {
                sb.append(File.separatorChar);
            }
            List drop = CollectionsKt___CollectionsKt.drop(filePathComponents.getSegments(), i);
            String separator = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            CollectionsKt___CollectionsKt.joinTo(drop, sb, (r14 & 2) != 0 ? ", " : separator, (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : null);
        }
        return sb.toString();
    }

    @NotNull
    public static File resolve(@NotNull File file, @NotNull String relative) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(relative, "relative");
        return resolve(file, new File(relative));
    }

    @NotNull
    public static final File resolveSibling(@NotNull File file, @NotNull String relative) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(relative, "relative");
        return resolveSibling(file, new File(relative));
    }

    public static final boolean startsWith(@NotNull File file, @NotNull String other) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return startsWith(file, new File(other));
    }

    public static final boolean endsWith(@NotNull File file, @NotNull String other) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return endsWith(file, new File(other));
    }
}
