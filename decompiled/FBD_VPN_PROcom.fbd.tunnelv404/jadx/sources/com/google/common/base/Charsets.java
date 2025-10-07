package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;

@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Charsets {

    @GwtIncompatible
    public static final Charset US_ASCII = Charset.forName(new ObfuscatedString(new long[]{6339025630578189829L, -5753835683653507816L}).toString());
    public static final Charset ISO_8859_1 = Charset.forName(new ObfuscatedString(new long[]{3677776727624585071L, 281570830250554471L, 8115409728273575278L}).toString());
    public static final Charset UTF_8 = Charset.forName(new ObfuscatedString(new long[]{6111485896015689037L, -2705027978796801073L}).toString());

    @GwtIncompatible
    public static final Charset UTF_16BE = Charset.forName(new ObfuscatedString(new long[]{-2951572655187282977L, -2657202002985282107L}).toString());

    @GwtIncompatible
    public static final Charset UTF_16LE = Charset.forName(new ObfuscatedString(new long[]{-8486957332187119229L, 3788996481318070426L}).toString());

    @GwtIncompatible
    public static final Charset UTF_16 = Charset.forName(new ObfuscatedString(new long[]{452933740265608066L, -1354114919549498647L}).toString());

    private Charsets() {
    }
}
