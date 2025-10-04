package com.google.common.html;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;
import com.google.common.escape.Escapers;
import com.panda912.muddy.ObfuscatedString;
import kotlin.text.Typography;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class HtmlEscapers {
    private static final Escaper HTML_ESCAPER = Escapers.builder().addEscape(Typography.quote, new ObfuscatedString(new long[]{3134638780119766336L, -6492221390507102273L}).toString()).addEscape('\'', new ObfuscatedString(new long[]{819587172782630475L, -6102070932344890359L}).toString()).addEscape(Typography.amp, new ObfuscatedString(new long[]{-5650598597793839592L, 5818840803788590085L}).toString()).addEscape(Typography.less, new ObfuscatedString(new long[]{7918750124135636286L, -3718636117296840512L}).toString()).addEscape(Typography.greater, new ObfuscatedString(new long[]{4055047779042529250L, 2020533784965396276L}).toString()).build();

    private HtmlEscapers() {
    }

    public static Escaper htmlEscaper() {
        return HTML_ESCAPER;
    }
}
