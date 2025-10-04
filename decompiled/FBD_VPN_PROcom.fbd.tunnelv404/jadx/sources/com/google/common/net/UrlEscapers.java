package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;
import com.panda912.muddy.ObfuscatedString;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class UrlEscapers {
    static final String URL_FORM_PARAMETER_OTHER_SAFE_CHARS = new ObfuscatedString(new long[]{-828145231986466961L, -1995856454925982633L}).toString();
    static final String URL_PATH_OTHER_SAFE_CHARS_LACKING_PLUS = new ObfuscatedString(new long[]{-6776955608445218250L, 5540809387378306540L, 7438724990827131491L}).toString();
    private static final Escaper URL_FORM_PARAMETER_ESCAPER = new PercentEscaper(new ObfuscatedString(new long[]{-680372066885612828L, 9167038141953912736L}).toString(), true);
    private static final Escaper URL_PATH_SEGMENT_ESCAPER = new PercentEscaper(new ObfuscatedString(new long[]{6468514708983228074L, 2997809277793783932L, -6891682254859980954L, 2392955070407349171L}).toString(), false);
    private static final Escaper URL_FRAGMENT_ESCAPER = new PercentEscaper(new ObfuscatedString(new long[]{-6727788181222213051L, -4012377270746368453L, 7664031474615632519L, 7886824142542866219L}).toString(), false);

    private UrlEscapers() {
    }

    public static Escaper urlFormParameterEscaper() {
        return URL_FORM_PARAMETER_ESCAPER;
    }

    public static Escaper urlFragmentEscaper() {
        return URL_FRAGMENT_ESCAPER;
    }

    public static Escaper urlPathSegmentEscaper() {
        return URL_PATH_SEGMENT_ESCAPER;
    }
}
