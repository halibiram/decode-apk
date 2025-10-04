package kotlin.io;

import defpackage.C0736x4e1e39f2;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u001b\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00100\u000b¢\u0006\u0004\b\u0011\u0010\u000fJ'\u0010\u0014\u001a\u00020\u00002\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00100\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", "start", "Lkotlin/io/FileWalkDirection;", "direction", "<init>", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "", "iterator", "()Ljava/util/Iterator;", "Lkotlin/Function1;", "", "function", "onEnter", "(Lkotlin/jvm/functions/Function1;)Lkotlin/io/FileTreeWalk;", "", "onLeave", "Lkotlin/Function2;", "Ljava/io/IOException;", "onFail", "(Lkotlin/jvm/functions/Function2;)Lkotlin/io/FileTreeWalk;", "", "depth", "maxDepth", "(I)Lkotlin/io/FileTreeWalk;", "뒬돝돳듐듨뎨땐땸땟뒛땁딨땧돰땁땪돶땯듽듬됴땤듬딤땥딝땦돨딐땪뒙뎰땦듽둥땣둠돼돤듼됐듬뎬땃땐땝땻딤도돶돶뎹뒋됫딄땔딁드돶든뒈뒝땁뎠땸따돠땝땅뒷땍땠땍딞땫뎹딝뒙드뒼땩됐듌둬뒬땻됫됴딨돵뒀뒐딞듨듬뒙딄땃됐땸땠딄땍땝듰땐드땭돷땔돨땮되뎻뎽돨땝땯돨딌돛땍득땠딤돝돰뒾뒹땰", "뒨듽듐뒹뒈뎡뒘되된뒬땥뒬된됩땱따돳뎻땰듸뒷땔땻듐돶뒨딌땭뎰돸딁딤됴땀딁득뒉뒷뎨둠땨뎹듬땦듔듼둥든둔딝될뒹땬뒵딐딻딜땝뒛될뒾땥둘뒋땜뎠뒤딌딎돸딻딀딄된듔땐뒐뒾듟딀땫딜뎸뎠듻땜듨뒀딐땥땄땨땫땧뒀됩됩딠됨딟되둡뒐둥뎬땥뎻땥득뎸돶땩둣딤든듔딸뒝뎹됴둬딄땩뒤딸딸딌땱뒐뒙", "뒨땳든뒼돤뒼듌뎽뎨돵드땤딤딸땰땪된뒵뎹뒐땲땥듟땸땔땮뒈둠땐땦땵땤땠뒀듨땁땄둡뒷돷듻땨땬됩됨딀땰돝둠돰듰돳땥땹듸땥땻땧둘뎡딻땠됩딠뎻듐돰뎨뒛됫드땀딟뒬땜딞땟두돛땠듌뒤딞돴둑듐땜뒝뎸두뒛된듔땃딅땅둔땪뒘듌땅딎뒼뒐듰둣뎰둥됩돝땐들뎸돼땟뒵땣듔듬딻땀땫땫땬딟듻땁뒝딻딌", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FileTreeWalk implements Sequence<File> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final File f1382xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final FileWalkDirection f1383x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Function1 f1384x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Function1 f1385x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Function2 f1386x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final int f1387x9e171bf9;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk(@NotNull File start, @NotNull FileWalkDirection direction) {
        this(start, direction, null, null, null, Integer.MAX_VALUE);
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(direction, "direction");
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<File> iterator() {
        return new C0736x4e1e39f2(this);
    }

    @NotNull
    public final FileTreeWalk maxDepth(int depth) {
        if (depth > 0) {
            return new FileTreeWalk(this.f1382xfbe0c504, this.f1383x3271d0aa, this.f1384x1378447b, this.f1385x75d576dc, this.f1386x9738a56c, depth);
        }
        throw new IllegalArgumentException("depth must be positive, but was " + depth + '.');
    }

    @NotNull
    public final FileTreeWalk onEnter(@NotNull Function1<? super File, Boolean> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new FileTreeWalk(this.f1382xfbe0c504, this.f1383x3271d0aa, function, this.f1385x75d576dc, this.f1386x9738a56c, this.f1387x9e171bf9);
    }

    @NotNull
    public final FileTreeWalk onFail(@NotNull Function2<? super File, ? super IOException, Unit> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new FileTreeWalk(this.f1382xfbe0c504, this.f1383x3271d0aa, this.f1384x1378447b, this.f1385x75d576dc, function, this.f1387x9e171bf9);
    }

    @NotNull
    public final FileTreeWalk onLeave(@NotNull Function1<? super File, Unit> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new FileTreeWalk(this.f1382xfbe0c504, this.f1383x3271d0aa, this.f1384x1378447b, function, this.f1386x9738a56c, this.f1387x9e171bf9);
    }

    public FileTreeWalk(File file, FileWalkDirection fileWalkDirection, Function1 function1, Function1 function12, Function2 function2, int i) {
        this.f1382xfbe0c504 = file;
        this.f1383x3271d0aa = fileWalkDirection;
        this.f1384x1378447b = function1;
        this.f1385x75d576dc = function12;
        this.f1386x9738a56c = function2;
        this.f1387x9e171bf9 = i;
    }

    public /* synthetic */ FileTreeWalk(File file, FileWalkDirection fileWalkDirection, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i & 2) != 0 ? FileWalkDirection.TOP_DOWN : fileWalkDirection);
    }
}
