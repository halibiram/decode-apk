package defpackage;

import kotlin.SinceKotlin;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 땥두돷딅딀땱딄땣돶뒉돼됫듼뎡듨딞땅땪땣돴뒬듬둡돨듽뒙땣땟딝듌뒀딤돨뒈딌돳땜딠둘딁딽뒘땮땃딐땦득딅땡됫딌딄듔땫뒷듰둡뒷듼뎡땫둔둠둑뎠듸됨듬땤뎨돴둘될뎸돼땲뒼땵뒹뎸두땡딨딄듼됐땫딻뒘땳땨땣딄뎸딁땃뒉땨돳땅땤둡땵땣딸든땰땣돨뎻듐듐딎득돤돳땅땳땧돝딠뒙둡뎰딠땍돛땤듐딞, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1190x474f456 {
    @NotNull
    public static final <T extends Appendable> T append(@NotNull T t, @NotNull CharSequence... value) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        for (CharSequence charSequence : value) {
            t.append(charSequence);
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void appendElement(@NotNull Appendable appendable, T t, @Nullable Function1<? super T, ? extends CharSequence> function1) {
        boolean z;
        Intrinsics.checkNotNullParameter(appendable, "<this>");
        if (function1 != null) {
            appendable.append(function1.invoke(t));
            return;
        }
        if (t == 0) {
            z = true;
        } else {
            z = t instanceof CharSequence;
        }
        if (z) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(t.toString());
        }
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T extends Appendable> T appendRange(@NotNull T t, @NotNull CharSequence value, int i, int i2) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        T t2 = (T) t.append(value, i, i2);
        Intrinsics.checkNotNull(t2, "null cannot be cast to non-null type T of kotlin.text.StringsKt__AppendableKt.appendRange");
        return t2;
    }
}
