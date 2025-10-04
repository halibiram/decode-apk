package defpackage;

import java.util.Iterator;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;

/* renamed from: 땯돨땬듰둘딸둑뒹딄딄딠땧돠됐뎹뒻드뒙땭됐듟땀땰딀둔둬뎨됩둣땅땣땹뒋돷땝땳뒻됫뒉땩땦듌돠딽땜된땰득딠뒤둥땪딞딄돼땩땧딹둡돝됫딞딞땬딜돛딜뒋뒨될득땠땜딅땫딹땄듽두듻딹돛뒷됫뒻듬돶딁뒾듰딞딅뎨듔딸둡땩땥듨딤딠딹드딸돝된둘땳뒘둠뎰둔딝땁둡땲딹둠도딌듌딄땋딃뎬둡뎠뒼땭땳, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1267x70af358f {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(@NotNull Sequence<UByte> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Iterator<UByte> it = sequence.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = UInt.m1798constructorimpl(UInt.m1798constructorimpl(it.next().getData() & 255) + i);
        }
        return i;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUInt")
    public static final int sumOfUInt(@NotNull Sequence<UInt> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Iterator<UInt> it = sequence.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = UInt.m1798constructorimpl(it.next().getData() + i);
        }
        return i;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfULong")
    public static final long sumOfULong(@NotNull Sequence<ULong> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Iterator<ULong> it = sequence.iterator();
        long j = 0;
        while (it.hasNext()) {
            j = ULong.m1822constructorimpl(it.next().getData() + j);
        }
        return j;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUShort")
    public static final int sumOfUShort(@NotNull Sequence<UShort> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Iterator<UShort> it = sequence.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = UInt.m1798constructorimpl(UInt.m1798constructorimpl(it.next().getData() & UShort.MAX_VALUE) + i);
        }
        return i;
    }
}
