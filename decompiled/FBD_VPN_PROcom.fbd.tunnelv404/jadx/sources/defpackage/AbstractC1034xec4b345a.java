package defpackage;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.SecureDirectoryStream;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.path.CopyActionContext;
import kotlin.io.path.CopyActionResult;
import kotlin.io.path.ExperimentalPathApi;
import kotlin.io.path.FileVisitorBuilder;
import kotlin.io.path.IllegalFileNameException;
import kotlin.io.path.LinkFollowing;
import kotlin.io.path.OnErrorResult;
import kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$WhenMappings;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 딸딻듰돳뒘땫듽땪딸딌된될땁땱땠돶득땧뒨돤뒬딎땦듔땹딄딞듟됐뎰뒼땤둬땄된디돶딃뒻듰뒵돷땁돼땔땜드됩된땥돵둘딠돷땔뒻딁땃듸땤뎹뎨땅딽딤듰땃뒝뎬뎡듐땸듔땰둘돤딁둔딄딄딜되땔딹둬듐뒷땧땍돠됫땡두딝따뎸뒙뎻딨땸둡듻듔뒀땀딜듌땹딹딸땤땤둠둥돠돝뒾들되딨뒛땣뎠땜뎹땍땳땻들돤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1034xec4b345a extends AbstractC1025x2d756359 {
    public static final void checkFileName(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        String name = AbstractC1035x1d2864de.getName(path);
        int hashCode = name.hashCode();
        if (hashCode != 46) {
            if (hashCode != 1518) {
                if (hashCode != 45679) {
                    if (hashCode != 45724) {
                        if (hashCode != 1472) {
                            if (hashCode != 1473 || !name.equals("./")) {
                                return;
                            }
                        } else if (!name.equals("..")) {
                            return;
                        }
                    } else if (!name.equals("..\\")) {
                        return;
                    }
                } else if (!name.equals("../")) {
                    return;
                }
            } else if (!name.equals(".\\")) {
                return;
            }
        } else if (!name.equals(".")) {
            return;
        }
        throw new IllegalFileNameException(path);
    }

    @SinceKotlin(version = "1.8")
    @ExperimentalPathApi
    @NotNull
    public static final Path copyToRecursively(@NotNull Path path, @NotNull Path target, @NotNull Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> onError, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(onError, "onError");
        if (z2) {
            return copyToRecursively(path, target, onError, z, new C1027x1fddc5f7(z, 1));
        }
        return copyToRecursively$default(path, target, onError, z, (Function3) null, 8, (Object) null);
    }

    public static /* synthetic */ Path copyToRecursively$default(Path path, Path path2, Function3 function3, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            function3 = C1031x2852f675.f5265x3271d0aa;
        }
        return copyToRecursively(path, path2, (Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult>) function3, z, z2);
    }

    @SinceKotlin(version = "1.8")
    @ExperimentalPathApi
    public static final void deleteRecursively(@NotNull Path path) {
        Path parent;
        DirectoryStream directoryStream;
        Path fileName;
        Intrinsics.checkNotNullParameter(path, "<this>");
        C0716x233842e8 c0716x233842e8 = new C0716x233842e8();
        parent = path.getParent();
        boolean z = true;
        if (parent != null) {
            try {
                directoryStream = Files.newDirectoryStream(parent);
            } catch (Throwable unused) {
                directoryStream = null;
            }
            if (directoryStream != null) {
                try {
                    DirectoryStream m3566x9e171bf9 = AbstractC1005xc1f7307f.m3566x9e171bf9(directoryStream);
                    if (AbstractC1005xc1f7307f.m3583x2a28ae4e(m3566x9e171bf9)) {
                        c0716x233842e8.f4608x75d576dc = parent;
                        SecureDirectoryStream m3578x952a0a9e = AbstractC1005xc1f7307f.m3578x952a0a9e(m3566x9e171bf9);
                        fileName = path.getFileName();
                        Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
                        m3690x9e171bf9(m3578x952a0a9e, fileName, null, c0716x233842e8);
                        z = false;
                    }
                    CloseableKt.closeFinally(directoryStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(directoryStream, th);
                        throw th2;
                    }
                }
            }
        }
        if (z) {
            m3691x34271fae(path, null, c0716x233842e8);
        }
        ArrayList arrayList = c0716x233842e8.f4607x1378447b;
        if (!arrayList.isEmpty()) {
            FileSystemException m3569x3db60231 = AbstractC1005xc1f7307f.m3569x3db60231();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                AbstractC0720xaa9ccb5a.addSuppressed(m3569x3db60231, (Exception) it.next());
            }
            throw m3569x3db60231;
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final void m3685xfbe0c504(Path path, Path path2) {
        boolean isSymbolicLink;
        boolean isSameFile;
        isSymbolicLink = Files.isSymbolicLink(path);
        if (!isSymbolicLink) {
            isSameFile = Files.isSameFile(path, path2);
            if (isSameFile) {
                AbstractC1005xc1f7307f.m3580x4440ab85();
                throw AbstractC1005xc1f7307f.m3570x9d12c1f4(path.toString());
            }
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final FileVisitResult m3686x3271d0aa(ArrayList arrayList, Function3 function3, Path path, Path path2, Path path3, Function3 function32, Path path4) {
        FileVisitResult fileVisitResult;
        FileVisitResult fileVisitResult2;
        FileVisitResult fileVisitResult3;
        try {
            if (!arrayList.isEmpty()) {
                checkFileName(path4);
                Object last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList);
                Intrinsics.checkNotNullExpressionValue(last, "last(...)");
                m3685xfbe0c504(path4, AbstractC1026x65ee1cd8.m3661x34271fae(last));
            }
            int i = PathsKt__PathRecursiveFunctionsKt$WhenMappings.$EnumSwitchMapping$0[((CopyActionResult) function3.invoke(C0659x2b16b9d7.f4466xfbe0c504, path4, m3687x1378447b(path, path2, path3, path4))).ordinal()];
            if (i == 1) {
                fileVisitResult = FileVisitResult.CONTINUE;
                return fileVisitResult;
            }
            if (i == 2) {
                fileVisitResult2 = FileVisitResult.TERMINATE;
                return fileVisitResult2;
            }
            if (i == 3) {
                fileVisitResult3 = FileVisitResult.SKIP_SUBTREE;
                return fileVisitResult3;
            }
            throw new NoWhenBranchMatchedException();
        } catch (Exception e) {
            return m3688x75d576dc(function32, path, path2, path3, path4, e);
        }
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final Path m3687x1378447b(Path path, Path path2, Path path3, Path path4) {
        Path resolve;
        Path normalize;
        boolean startsWith;
        resolve = path2.resolve(AbstractC1035x1d2864de.relativeTo(path4, path).toString());
        normalize = resolve.normalize();
        startsWith = normalize.startsWith(path3);
        if (startsWith) {
            Intrinsics.checkNotNull(resolve);
            return resolve;
        }
        throw new IllegalFileNameException(path4, resolve, "Copying files to outside the specified target directory is prohibited. The directory being recursively copied might contain an entry with an illegal name.");
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final FileVisitResult m3688x75d576dc(Function3 function3, Path path, Path path2, Path path3, Path path4, Exception exc) {
        FileVisitResult fileVisitResult;
        FileVisitResult fileVisitResult2;
        int i = PathsKt__PathRecursiveFunctionsKt$WhenMappings.$EnumSwitchMapping$1[((OnErrorResult) function3.invoke(path4, m3687x1378447b(path, path2, path3, path4), exc)).ordinal()];
        if (i == 1) {
            fileVisitResult = FileVisitResult.TERMINATE;
            return fileVisitResult;
        }
        if (i == 2) {
            fileVisitResult2 = FileVisitResult.SKIP_SUBTREE;
            return fileVisitResult2;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final void m3689x9738a56c(SecureDirectoryStream secureDirectoryStream, Path path, C0716x233842e8 c0716x233842e8) {
        SecureDirectoryStream secureDirectoryStream2;
        try {
            try {
                secureDirectoryStream2 = secureDirectoryStream.newDirectoryStream(path, LinkOption.NOFOLLOW_LINKS);
            } catch (Exception e) {
                c0716x233842e8.m3314xfbe0c504(e);
                return;
            }
        } catch (NoSuchFileException unused) {
            secureDirectoryStream2 = null;
        }
        if (secureDirectoryStream2 != null) {
            try {
                Iterator it = secureDirectoryStream2.iterator();
                Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                while (it.hasNext()) {
                    Path fileName = ((Path) it.next()).getFileName();
                    Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
                    m3690x9e171bf9(secureDirectoryStream2, fileName, c0716x233842e8.f4608x75d576dc, c0716x233842e8);
                }
                CloseableKt.closeFinally(secureDirectoryStream2, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(secureDirectoryStream2, th);
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m3690x9e171bf9(SecureDirectoryStream secureDirectoryStream, Path name, Path path, C0716x233842e8 c0716x233842e8) {
        Path path2;
        Path path3;
        Path path4;
        Boolean bool;
        Intrinsics.checkNotNullParameter(name, "name");
        Path path5 = c0716x233842e8.f4608x75d576dc;
        Path path6 = null;
        if (path5 != null) {
            path2 = path5.resolve(name);
        } else {
            path2 = null;
        }
        c0716x233842e8.f4608x75d576dc = path2;
        if (path != null) {
            try {
                Intrinsics.checkNotNull(path2);
                checkFileName(path2);
                m3685xfbe0c504(path2, path);
            } catch (Exception e) {
                c0716x233842e8.m3314xfbe0c504(e);
            }
        }
        boolean z = false;
        try {
            bool = Boolean.valueOf(((BasicFileAttributeView) secureDirectoryStream.getFileAttributeView(name, BasicFileAttributeView.class, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))).readAttributes().isDirectory());
        } catch (NoSuchFileException unused) {
            bool = null;
        }
        if (bool != null) {
            z = bool.booleanValue();
        }
        if (z) {
            int i = c0716x233842e8.f4606x3271d0aa;
            m3689x9738a56c(secureDirectoryStream, name, c0716x233842e8);
            if (i == c0716x233842e8.f4606x3271d0aa) {
                secureDirectoryStream.deleteDirectory(name);
            }
            Intrinsics.checkNotNullParameter(name, "name");
            path3 = c0716x233842e8.f4608x75d576dc;
            if (path3 == null) {
                path4 = path3.getFileName();
            } else {
                path4 = null;
            }
            if (!Intrinsics.areEqual(name, path4)) {
                Path path7 = c0716x233842e8.f4608x75d576dc;
                if (path7 != null) {
                    path6 = path7.getParent();
                }
                c0716x233842e8.f4608x75d576dc = path6;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        secureDirectoryStream.deleteFile(name);
        Intrinsics.checkNotNullParameter(name, "name");
        path3 = c0716x233842e8.f4608x75d576dc;
        if (path3 == null) {
        }
        if (!Intrinsics.areEqual(name, path4)) {
        }
    }

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final void m3691x34271fae(Path path, Path path2, C0716x233842e8 c0716x233842e8) {
        DirectoryStream<Path> directoryStream;
        if (path2 != null) {
            try {
                checkFileName(path);
                m3685xfbe0c504(path, path2);
            } catch (Exception e) {
                c0716x233842e8.m3314xfbe0c504(e);
                return;
            }
        }
        if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            int i = c0716x233842e8.f4606x3271d0aa;
            try {
                try {
                    directoryStream = Files.newDirectoryStream(path);
                } catch (Exception e2) {
                    c0716x233842e8.m3314xfbe0c504(e2);
                }
            } catch (NoSuchFileException unused) {
                directoryStream = null;
            }
            if (directoryStream != null) {
                try {
                    Iterator<Path> it = directoryStream.iterator();
                    Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                    while (it.hasNext()) {
                        Path next = it.next();
                        Intrinsics.checkNotNull(next);
                        m3691x34271fae(next, path, c0716x233842e8);
                    }
                    CloseableKt.closeFinally(directoryStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(directoryStream, th);
                        throw th2;
                    }
                }
            }
            if (i == c0716x233842e8.f4606x3271d0aa) {
                Files.deleteIfExists(path);
                return;
            }
            return;
        }
        Files.deleteIfExists(path);
    }

    @SinceKotlin(version = "1.8")
    @ExperimentalPathApi
    @NotNull
    public static final Path copyToRecursively(@NotNull final Path path, @NotNull final Path target, @NotNull final Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult> onError, boolean z, @NotNull final Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult> copyAction) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(copyAction, "copyAction");
        LinkOption[] linkOptions = LinkFollowing.INSTANCE.toLinkOptions(z);
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
        if (!Files.exists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length))) {
            throw new NoSuchFileException(path.toString(), target.toString(), "The source file doesn't exist.");
        }
        boolean z2 = false;
        if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && (z || !Files.isSymbolicLink(path))) {
            boolean z3 = Files.exists(target, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && !Files.isSymbolicLink(target);
            if (!z3 || !Files.isSameFile(path, target)) {
                if (Intrinsics.areEqual(path.getFileSystem(), target.getFileSystem())) {
                    if (z3) {
                        z2 = target.toRealPath(new LinkOption[0]).startsWith(path.toRealPath(new LinkOption[0]));
                    } else {
                        Path parent = target.getParent();
                        if (parent != null && Files.exists(parent, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) && parent.toRealPath(new LinkOption[0]).startsWith(path.toRealPath(new LinkOption[0]))) {
                            z2 = true;
                        }
                    }
                }
                if (z2) {
                    throw new FileSystemException(path.toString(), target.toString(), "Recursively copying a directory into its subdirectory is prohibited.");
                }
            }
        }
        final Path normalize = target.normalize();
        final ArrayList arrayList = new ArrayList();
        AbstractC1035x1d2864de.visitFileTree$default(path, 0, z, new Function1() { // from class: 따땔딞딃땝돝돳듌딄딞딞뒙들됩땭돴딻돨듐땄돷땀된뒘뎨땮됩됫딝딄딎될땮뎸뒉뎰땡뎨둥딹땩뒷딄딅듬둬땨땡디땥땠뒙듌땀땸뒬딅디뎸딃돝땩두돶뎡땟듌뒋뒾딄딝뎰딟땀돳땥땪땐뎽됨땍돛둔땃땡됩돳땫딠딀듬둘뒾둘땯딤득돳뎬듼뒀뒼땲땤돼디돨돰뎬됴드드땦딀땋땻듼딁딠뒾딎듼뎻돰둬땵디돝땦둘
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                final Path path2 = path;
                final Path path3 = target;
                final Path path4 = normalize;
                FileVisitorBuilder visitFileTree = (FileVisitorBuilder) obj;
                Intrinsics.checkNotNullParameter(visitFileTree, "$this$visitFileTree");
                final ArrayList arrayList2 = arrayList;
                final Function3 function3 = copyAction;
                final Function3 function32 = onError;
                visitFileTree.onPreVisitDirectory(new Function2() { // from class: 따땮뒨딎둥뒨땫돝땲땍땔딤땪땭돶땋땭디드딟딌된뎸뒛딃땟땠됫됩땔듐땦돨뒐뒤딅딟둘디땩딸둠뎸듻땰딎됩돳땱뒉뎡뒐둘둥된뎬땯두됫땃땝땤뒙둠됩돠뎬돝디딨돨돶땔땟딤돛땠뒷둥땸둘돼둥뒉됩땍따땮득땣뎬두되듸디딜땅뎰따땪뒙땀딐돤딹둠듟돝뒨뒾딠땫돠듔땵땥둔됴득딤뒨듟땥돛뒋듽돠돰뒘뎨
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        Path path5 = path2;
                        Path path6 = path3;
                        Path path7 = path4;
                        Path directory = (Path) obj2;
                        BasicFileAttributes attributes = (BasicFileAttributes) obj3;
                        Intrinsics.checkNotNullParameter(directory, "directory");
                        Intrinsics.checkNotNullParameter(attributes, "attributes");
                        ArrayList arrayList3 = arrayList2;
                        FileVisitResult m3686x3271d0aa = AbstractC1034xec4b345a.m3686x3271d0aa(arrayList3, function3, path5, path6, path7, function32, directory);
                        if (m3686x3271d0aa == FileVisitResult.CONTINUE) {
                            arrayList3.add(directory);
                        }
                        return m3686x3271d0aa;
                    }
                });
                visitFileTree.onVisitFile(new C1032x2bf2053(arrayList2, function3, path2, path3, path4, function32));
                visitFileTree.onVisitFileFailed(new C1033xb6276489(function32, path2, path3, path4));
                visitFileTree.onPostVisitDirectory(new Function2() { // from class: 딸뎬돰뒙땧뒋디듸뎨딄땀땦돴뎬딻딻땋듬뎽뎬뒛돷뒀땄뒉딄땍뎬듌든듸땄땫디돵딹뒈드딨땃듨땵딅딟듔뎽됨도듼딻딠땫딃뒾된딟땀딨땱딌돛땮둑땯딁돴뎹딁돼뒋뎨뒀땅돸땦둡뒋뒨도도둬땨돷듼땩뒐땮듬뒀딝뒹돤뒵땔돴듔돳듟땨되듨땬뒝돴뎨뒬딸듻돶딌딻땥뎽땩듟딄됨땳돷딸딅땻돛땧땬됐딌둑땥뒛
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        Path path5 = path2;
                        Path path6 = path3;
                        Path path7 = path4;
                        Path directory = (Path) obj2;
                        IOException iOException = (IOException) obj3;
                        Intrinsics.checkNotNullParameter(directory, "directory");
                        AbstractC0590xf7db57e6.removeLast(arrayList2);
                        if (iOException == null) {
                            return FileVisitResult.CONTINUE;
                        }
                        return AbstractC1034xec4b345a.m3688x75d576dc(function32, path5, path6, path7, directory, iOException);
                    }
                });
                return Unit.INSTANCE;
            }
        }, 1, (Object) null);
        return target;
    }

    public static /* synthetic */ Path copyToRecursively$default(Path path, Path path2, Function3 function3, boolean z, Function3 function32, int i, Object obj) {
        if ((i & 2) != 0) {
            function3 = C1031x2852f675.f5266x1378447b;
        }
        if ((i & 8) != 0) {
            function32 = new C1027x1fddc5f7(z, 0);
        }
        return copyToRecursively(path, path2, (Function3<? super Path, ? super Path, ? super Exception, ? extends OnErrorResult>) function3, z, (Function3<? super CopyActionContext, ? super Path, ? super Path, ? extends CopyActionResult>) function32);
    }
}
