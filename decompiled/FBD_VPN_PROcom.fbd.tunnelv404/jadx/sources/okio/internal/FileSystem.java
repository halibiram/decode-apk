package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0343xfbe0c504;
import defpackage.C0344x3271d0aa;
import defpackage.C0345x1378447b;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import okio.BufferedSink;
import okio.FileMetadata;
import okio.Okio;
import okio.Path;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u001c\u0010\u0007\u001a\u00020\b*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0000\u001a\u001c\u0010\u000b\u001a\u00020\b*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0000\u001a\u001c\u0010\u000e\u001a\u00020\b*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006H\u0000\u001a\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0012*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006H\u0000\u001aF\u0010\u0014\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00040\u00152\u0006\u0010\u0016\u001a\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00182\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0080@¢\u0006\u0002\u0010\u001a\u001a\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¨\u0006\u001c"}, d2 = {"commonMetadata", "Lokio/FileMetadata;", "Lokio/FileSystem;", "path", "Lokio/Path;", "commonExists", "", "commonCreateDirectories", "", "dir", "mustCreate", "commonCopy", "source", TypedValues.AttributesType.S_TARGET, "commonDeleteRecursively", "fileOrDirectory", "mustExist", "commonListRecursively", "Lkotlin/sequences/Sequence;", "followSymlinks", "collectRecursively", "Lkotlin/sequences/SequenceScope;", "fileSystem", "stack", "Lkotlin/collections/ArrayDeque;", "postorder", "(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "symlinkTarget", "okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "-FileSystem")
@SourceDebugExtension({"SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,155:1\n52#2,4:156\n52#2,22:160\n60#2,10:182\n56#2,3:192\n71#2,3:195\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n*L\n65#1:156,4\n66#1:160,22\n65#1:182,10\n65#1:192,3\n65#1:195,3\n*E\n"})
/* renamed from: okio.internal.-FileSystem, reason: invalid class name */
/* loaded from: classes3.dex */
public final class FileSystem {
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c3, code lost:
    
        if (r0 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c5, code lost:
    
        if (r11 != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00c7, code lost:
    
        r6.addLast(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ce, code lost:
    
        r11 = r10;
        r10 = r3;
        r14 = r1;
        r1 = r0;
        r0 = r2;
        r2 = r7.iterator();
        r7 = r6;
        r6 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x010d, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x010e, code lost:
    
        r7 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v6, types: [kotlin.sequences.SequenceScope] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r15v0, types: [kotlin.sequences.SequenceScope<? super okio.Path>, kotlin.sequences.SequenceScope] */
    /* JADX WARN: Type inference failed for: r4v2, types: [kotlin.coroutines.Continuation, 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object collectRecursively(@NotNull SequenceScope<? super Path> sequenceScope, @NotNull okio.FileSystem fileSystem, @NotNull ArrayDeque<Path> arrayDeque, @NotNull Path path, boolean z, boolean z2, @NotNull Continuation<? super Unit> continuation) {
        Continuation continuation2;
        int i;
        okio.FileSystem fileSystem2;
        ArrayDeque<Path> arrayDeque2;
        boolean z3;
        ?? r10;
        boolean z4;
        List<Path> listOrNull;
        Path path2 = path;
        boolean z5 = z2;
        if (continuation instanceof C0343xfbe0c504) {
            C0343xfbe0c504 c0343xfbe0c504 = (C0343xfbe0c504) continuation;
            int i2 = c0343xfbe0c504.f3722x3db60231;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0343xfbe0c504.f3722x3db60231 = i2 - Integer.MIN_VALUE;
                continuation2 = c0343xfbe0c504;
                Object obj = continuation2.f3721x95f25580;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = continuation2.f3722x3db60231;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                ResultKt.throwOnFailure(obj);
                                return Unit.INSTANCE;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        boolean z6 = continuation2.f3720x34271fae;
                        boolean z7 = continuation2.f3719x9e171bf9;
                        Iterator<Path> it = continuation2.f3718x9738a56c;
                        Path path3 = continuation2.f3717x75d576dc;
                        ArrayDeque<Path> arrayDeque3 = continuation2.f3716x1378447b;
                        okio.FileSystem fileSystem3 = continuation2.f3715x3271d0aa;
                        SequenceScope sequenceScope2 = continuation2.f3714xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                            while (it.hasNext()) {
                                Path next = it.next();
                                continuation2.f3714xfbe0c504 = sequenceScope2;
                                continuation2.f3715x3271d0aa = fileSystem3;
                                continuation2.f3716x1378447b = arrayDeque3;
                                continuation2.f3717x75d576dc = path3;
                                continuation2.f3718x9738a56c = it;
                                continuation2.f3719x9e171bf9 = z7;
                                continuation2.f3720x34271fae = z6;
                                continuation2.f3722x3db60231 = 2;
                                if (collectRecursively(sequenceScope2, fileSystem3, arrayDeque3, next, z7, z6, continuation2) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                            arrayDeque3.removeLast();
                            z5 = z6;
                            path2 = path3;
                            r10 = sequenceScope2;
                            if (z5) {
                                continuation2.f3714xfbe0c504 = null;
                                continuation2.f3715x3271d0aa = null;
                                continuation2.f3716x1378447b = null;
                                continuation2.f3717x75d576dc = null;
                                continuation2.f3718x9738a56c = null;
                                continuation2.f3722x3db60231 = 3;
                                if (r10.yield(path2, continuation2) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                return Unit.INSTANCE;
                            }
                            return Unit.INSTANCE;
                        } catch (Throwable th) {
                            th = th;
                            arrayDeque3.removeLast();
                            throw th;
                        }
                    }
                    boolean z8 = continuation2.f3720x34271fae;
                    boolean z9 = continuation2.f3719x9e171bf9;
                    Path path4 = continuation2.f3717x75d576dc;
                    arrayDeque2 = continuation2.f3716x1378447b;
                    okio.FileSystem fileSystem4 = continuation2.f3715x3271d0aa;
                    SequenceScope sequenceScope3 = continuation2.f3714xfbe0c504;
                    ResultKt.throwOnFailure(obj);
                    fileSystem2 = fileSystem4;
                    z5 = z8;
                    z4 = z9;
                    path2 = path4;
                    r10 = sequenceScope3;
                } else {
                    ResultKt.throwOnFailure(obj);
                    if (!z5) {
                        continuation2.f3714xfbe0c504 = sequenceScope;
                        fileSystem2 = fileSystem;
                        continuation2.f3715x3271d0aa = fileSystem2;
                        arrayDeque2 = arrayDeque;
                        continuation2.f3716x1378447b = arrayDeque2;
                        continuation2.f3717x75d576dc = path2;
                        z3 = z;
                        continuation2.f3719x9e171bf9 = z3;
                        continuation2.f3720x34271fae = z5;
                        continuation2.f3722x3db60231 = 1;
                        if (sequenceScope.yield(path2, continuation2) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        fileSystem2 = fileSystem;
                        arrayDeque2 = arrayDeque;
                        z3 = z;
                    }
                    boolean z10 = z3;
                    r10 = sequenceScope;
                    z4 = z10;
                }
                listOrNull = fileSystem2.listOrNull(path2);
                if (listOrNull == null) {
                    listOrNull = CollectionsKt__CollectionsKt.emptyList();
                }
                if (!listOrNull.isEmpty()) {
                    int i3 = 0;
                    Path path5 = path2;
                    while (true) {
                        if (z4 && arrayDeque2.contains(path5)) {
                            throw new IOException(AbstractC0749x8313616e.m3339xad53da1a(path2, "symlink cycle at "));
                        }
                        Path symlinkTarget = symlinkTarget(fileSystem2, path5);
                        if (symlinkTarget == null) {
                            break;
                        }
                        i3++;
                        path5 = symlinkTarget;
                    }
                }
                if (z5) {
                }
            }
        }
        continuation2 = new ContinuationImpl(continuation);
        Object obj2 = continuation2.f3721x95f25580;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = continuation2.f3722x3db60231;
        if (i == 0) {
        }
        listOrNull = fileSystem2.listOrNull(path2);
        if (listOrNull == null) {
        }
        if (!listOrNull.isEmpty()) {
        }
        if (z5) {
        }
    }

    public static final void commonCopy(@NotNull okio.FileSystem fileSystem, @NotNull Path source, @NotNull Path target) {
        Throwable th;
        Long l;
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        Source source2 = fileSystem.source(source);
        Throwable th2 = null;
        try {
            BufferedSink buffer = Okio.buffer(okio.FileSystem.sink$default(fileSystem, target, false, 2, null));
            try {
                l = Long.valueOf(buffer.writeAll(source2));
                if (buffer != null) {
                    try {
                        buffer.close();
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                th = null;
            } catch (Throwable th4) {
                if (buffer != null) {
                    try {
                        buffer.close();
                    } catch (Throwable th5) {
                        AbstractC0720xaa9ccb5a.addSuppressed(th4, th5);
                    }
                }
                th = th4;
                l = null;
            }
        } catch (Throwable th6) {
            if (source2 != null) {
                try {
                    source2.close();
                } catch (Throwable th7) {
                    AbstractC0720xaa9ccb5a.addSuppressed(th6, th7);
                }
            }
            th2 = th6;
        }
        if (th == null) {
            l.longValue();
            if (source2 != null) {
                try {
                    source2.close();
                } catch (Throwable th8) {
                    th2 = th8;
                }
            }
            if (th2 == null) {
                return;
            } else {
                throw th2;
            }
        }
        throw th;
    }

    public static final void commonCreateDirectories(@NotNull okio.FileSystem fileSystem, @NotNull Path dir, boolean z) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        ArrayDeque arrayDeque = new ArrayDeque();
        for (Path path = dir; path != null && !fileSystem.exists(path); path = path.parent()) {
            arrayDeque.addFirst(path);
        }
        if (z && arrayDeque.isEmpty()) {
            throw new IOException(dir + " already exists.");
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            okio.FileSystem.createDirectory$default(fileSystem, (Path) it.next(), false, 2, null);
        }
    }

    public static final void commonDeleteRecursively(@NotNull okio.FileSystem fileSystem, @NotNull Path fileOrDirectory, boolean z) {
        boolean z2;
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        Iterator it = SequencesKt__SequenceBuilderKt.sequence(new C0344x3271d0aa(fileSystem, fileOrDirectory, null)).iterator();
        while (it.hasNext()) {
            Path path = (Path) it.next();
            if (z && !it.hasNext()) {
                z2 = true;
            } else {
                z2 = false;
            }
            fileSystem.delete(path, z2);
        }
    }

    public static final boolean commonExists(@NotNull okio.FileSystem fileSystem, @NotNull Path path) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        if (fileSystem.metadataOrNull(path) != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final Sequence<Path> commonListRecursively(@NotNull okio.FileSystem fileSystem, @NotNull Path dir, boolean z) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        return SequencesKt__SequenceBuilderKt.sequence(new C0345x1378447b(dir, fileSystem, z, null));
    }

    @NotNull
    public static final FileMetadata commonMetadata(@NotNull okio.FileSystem fileSystem, @NotNull Path path) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        FileMetadata metadataOrNull = fileSystem.metadataOrNull(path);
        if (metadataOrNull != null) {
            return metadataOrNull;
        }
        throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(path, "no such file: "));
    }

    @Nullable
    public static final Path symlinkTarget(@NotNull okio.FileSystem fileSystem, @NotNull Path path) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        Path symlinkTarget = fileSystem.metadata(path).getSymlinkTarget();
        if (symlinkTarget == null) {
            return null;
        }
        Path parent = path.parent();
        Intrinsics.checkNotNull(parent);
        return parent.resolve(symlinkTarget);
    }
}
