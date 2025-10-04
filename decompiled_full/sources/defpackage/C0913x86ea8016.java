package defpackage;

import java.util.Random;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 딃딤땋돠땧땄듰두돤딻땱뒵땰돶땸뒨디땁딄뎸땦도땁땱뎬땳땦돛듸듰딅뎡딜땡되돰땳땻둠땧듸드땱딽땮딅땅땃땔뎰딻된땫딜들땝땍땹뒤딐땁둘땜돤됫딤뒾딁뎨된득땻땭땄뎽돝땯땯들도딄땡딄땠땸뒋둑뒙땀든딽땯도뎬땅듼뎹땭듽돰딠둘뒾뎻땲딃땍뒬땔땲딸듽듨딎뎰땪뒛딁돛뒉뒙땠따둑따딐뒾딸딠돵, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0913x86ea8016 extends Random {
    private static final long serialVersionUID = 0;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final kotlin.random.Random f5054xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public boolean f5055x3271d0aa;

    public C0913x86ea8016(kotlin.random.Random impl) {
        Intrinsics.checkNotNullParameter(impl, "impl");
        this.f5054xfbe0c504 = impl;
    }

    @Override // java.util.Random
    public final int next(int i) {
        return this.f5054xfbe0c504.nextBits(i);
    }

    @Override // java.util.Random
    public final boolean nextBoolean() {
        return this.f5054xfbe0c504.nextBoolean();
    }

    @Override // java.util.Random
    public final void nextBytes(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.f5054xfbe0c504.nextBytes(bytes);
    }

    @Override // java.util.Random
    public final double nextDouble() {
        return this.f5054xfbe0c504.nextDouble();
    }

    @Override // java.util.Random
    public final float nextFloat() {
        return this.f5054xfbe0c504.nextFloat();
    }

    @Override // java.util.Random
    public final int nextInt() {
        return this.f5054xfbe0c504.nextInt();
    }

    @Override // java.util.Random
    public final long nextLong() {
        return this.f5054xfbe0c504.nextLong();
    }

    @Override // java.util.Random
    public final void setSeed(long j) {
        if (!this.f5055x3271d0aa) {
            this.f5055x3271d0aa = true;
            return;
        }
        throw new UnsupportedOperationException("Setting seed is not supported.");
    }

    @Override // java.util.Random
    public final int nextInt(int i) {
        return this.f5054xfbe0c504.nextInt(i);
    }
}
