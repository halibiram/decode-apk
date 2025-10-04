package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import coil3.content.UtilsKt;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC0590xf7db57e6;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.C0350x95f25580;
import defpackage.C1091x74b3e97d;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001:\u0001,B#\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u000e2\u0006\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010!\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\"J\u001f\u0010#\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010\"J\u001f\u0010%\u001a\u00020$2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b%\u0010&J\u001f\u0010(\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010*\u001a\u00020$2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b*\u0010&J\u001f\u0010+\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0016¢\u0006\u0004\b+\u0010)¨\u0006-"}, d2 = {"Lokio/internal/ResourceFileSystem;", "Lokio/FileSystem;", "Ljava/lang/ClassLoader;", "classLoader", "", "indexEagerly", "systemFileSystem", "<init>", "(Ljava/lang/ClassLoader;ZLokio/FileSystem;)V", "Lokio/Path;", "path", "canonicalize", "(Lokio/Path;)Lokio/Path;", "dir", "", "list", "(Lokio/Path;)Ljava/util/List;", "listOrNull", UtilsKt.SCHEME_FILE, "Lokio/FileHandle;", "openReadOnly", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "openReadWrite", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/FileMetadata;", "metadataOrNull", "(Lokio/Path;)Lokio/FileMetadata;", "Lokio/Source;", "source", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "sink", "(Lokio/Path;Z)Lokio/Sink;", "appendingSink", "", "createDirectory", "(Lokio/Path;Z)V", TypedValues.AttributesType.S_TARGET, "atomicMove", "(Lokio/Path;Lokio/Path;)V", "delete", "createSymlink", "땅땮땜뒾딠뎹둑딀땠둣땝땤땯딎땠디딽땬딄땮땋땥딠둔뒐땩된듟돤뎹뒹땟땮땤땤됐됴돛뒉뎻뒨둬돝득땐딠돸돴뎬드땱듐땀땄듌땪듨땭땵뒾될돛뒵땹듸디뒤딀딝두듸땸딀뒘둣뎹딃딠듰땨땧뒘땄될돤돛돵땣돷딟딟듼돨딤땭듰둣뒹딃될뎸둔땻땋도됐딞땀둡땭뎠땝땣돷뎸땧뎡듔땔뒘땋뎸땡땧뎰뎬돶돠돷뒐", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nResourceFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,215:1\n774#2:216\n865#2,2:217\n1557#2:219\n1628#2,3:220\n774#2:223\n865#2,2:224\n1557#2:226\n1628#2,3:227\n1611#2,9:230\n1863#2:239\n1864#2:241\n1620#2:242\n1611#2,9:243\n1863#2:252\n1864#2:254\n1620#2:255\n1#3:240\n1#3:253\n*S KotlinDebug\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n*L\n75#1:216\n75#1:217,2\n76#1:219\n76#1:220,3\n91#1:223\n91#1:224,2\n92#1:226\n92#1:227,3\n178#1:230,9\n178#1:239\n178#1:241\n178#1:242\n179#1:243,9\n179#1:252\n179#1:254\n179#1:255\n178#1:240\n179#1:253\n*E\n"})
/* loaded from: classes3.dex */
public final class ResourceFileSystem extends FileSystem {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final Path f3687x75d576dc = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ClassLoader f3688xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final FileSystem f3689x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Lazy f3690x1378447b;

    public /* synthetic */ ResourceFileSystem(ClassLoader classLoader, boolean z, FileSystem fileSystem, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(classLoader, z, (i & 4) != 0 ? FileSystem.SYSTEM : fileSystem);
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean mustExist) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return f3687x75d576dc.resolve(path, true);
    }

    @Override // okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean mustCreate) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void delete(@NotNull Path path, boolean mustExist) {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Path path = f3687x75d576dc;
        String path2 = path.resolve(dir, true).relativeTo(path).toString();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (Pair pair : (List) this.f3690x1378447b.getValue()) {
            FileSystem fileSystem = (FileSystem) pair.component1();
            Path path3 = (Path) pair.component2();
            try {
                List<Path> list = fileSystem.list(path3.resolve(path2));
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (C1091x74b3e97d.m3795xfbe0c504((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(C1091x74b3e97d.m3796x3271d0aa((Path) it.next(), path3));
                }
                AbstractC0590xf7db57e6.addAll(linkedHashSet, arrayList2);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return CollectionsKt___CollectionsKt.toList(linkedHashSet);
        }
        throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(dir, "file not found: "));
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Path path = f3687x75d576dc;
        String path2 = path.resolve(dir, true).relativeTo(path).toString();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = ((List) this.f3690x1378447b.getValue()).iterator();
        boolean z = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            Pair pair = (Pair) it.next();
            FileSystem fileSystem = (FileSystem) pair.component1();
            Path path3 = (Path) pair.component2();
            List<Path> listOrNull = fileSystem.listOrNull(path3.resolve(path2));
            if (listOrNull != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listOrNull) {
                    if (C1091x74b3e97d.m3795xfbe0c504((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(C1091x74b3e97d.m3796x3271d0aa((Path) it2.next(), path3));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                AbstractC0590xf7db57e6.addAll(linkedHashSet, arrayList);
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        return CollectionsKt___CollectionsKt.toList(linkedHashSet);
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (!C1091x74b3e97d.m3795xfbe0c504(path)) {
            return null;
        }
        Path path2 = f3687x75d576dc;
        String path3 = path2.resolve(path, true).relativeTo(path2).toString();
        for (Pair pair : (List) this.f3690x1378447b.getValue()) {
            FileMetadata metadataOrNull = ((FileSystem) pair.component1()).metadataOrNull(((Path) pair.component2()).resolve(path3));
            if (metadataOrNull != null) {
                return metadataOrNull;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (C1091x74b3e97d.m3795xfbe0c504(file)) {
            Path path = f3687x75d576dc;
            String path2 = path.resolve(file, true).relativeTo(path).toString();
            for (Pair pair : (List) this.f3690x1378447b.getValue()) {
                try {
                    return ((FileSystem) pair.component1()).openReadOnly(((Path) pair.component2()).resolve(path2));
                } catch (FileNotFoundException unused) {
                }
            }
            throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(file, "file not found: "));
        }
        throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(file, "file not found: "));
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean mustCreate, boolean mustExist) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("resources are not writable");
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean mustCreate) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (C1091x74b3e97d.m3795xfbe0c504(file)) {
            Path path = f3687x75d576dc;
            URL resource = this.f3688xfbe0c504.getResource(Path.resolve$default(path, file, false, 2, (Object) null).relativeTo(path).toString());
            if (resource != null) {
                URLConnection openConnection = resource.openConnection();
                if (openConnection instanceof JarURLConnection) {
                    ((JarURLConnection) openConnection).setUseCaches(false);
                }
                InputStream inputStream = openConnection.getInputStream();
                Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
                return Okio.source(inputStream);
            }
            throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(file, "file not found: "));
        }
        throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(file, "file not found: "));
    }

    public ResourceFileSystem(@NotNull ClassLoader classLoader, boolean z, @NotNull FileSystem systemFileSystem) {
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(systemFileSystem, "systemFileSystem");
        this.f3688xfbe0c504 = classLoader;
        this.f3689x3271d0aa = systemFileSystem;
        Lazy lazy = AbstractC0919x86d1e2e2.lazy(new C0350x95f25580(this, 13));
        this.f3690x1378447b = lazy;
        if (z) {
            ((List) lazy.getValue()).size();
        }
    }
}
