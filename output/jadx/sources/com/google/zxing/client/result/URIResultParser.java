package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class URIResultParser extends ResultParser {
    private static final Pattern ALLOWED_URI_CHARS_PATTERN = Pattern.compile(new ObfuscatedString(new long[]{7183733533980519014L, 3303183391500179560L, -3312920729068725539L, 9204224484526445764L, 4084229532790156015L, 6635803605259518377L}).toString());
    private static final Pattern USER_IN_HOST = Pattern.compile(new ObfuscatedString(new long[]{-4923698940829341198L, 3083373957341387397L, -424373366567317691L, 2253122039776135326L}).toString());
    private static final Pattern URL_WITH_PROTOCOL_PATTERN = Pattern.compile(new ObfuscatedString(new long[]{-1560340216796652603L, 8812264005104174791L, -6274150135663086639L, 5411368205613958100L}).toString());
    private static final Pattern URL_WITHOUT_PROTOCOL_PATTERN = Pattern.compile(new ObfuscatedString(new long[]{5288855769480140381L, 5658500422070089868L, 5555715234064432989L, -7385997115453349851L, 1321239104445282199L, 3761958549304517072L, 2874365560592853263L, -469244887820131217L}).toString());

    public static boolean isBasicallyValidURI(String str) {
        if (str.contains(new ObfuscatedString(new long[]{355790740959037639L, -374528969507810147L}).toString())) {
            return false;
        }
        Matcher matcher = URL_WITH_PROTOCOL_PATTERN.matcher(str);
        if (matcher.find() && matcher.start() == 0) {
            return true;
        }
        Matcher matcher2 = URL_WITHOUT_PROTOCOL_PATTERN.matcher(str);
        if (!matcher2.find() || matcher2.start() != 0) {
            return false;
        }
        return true;
    }

    public static boolean isPossiblyMaliciousURI(String str) {
        if (ALLOWED_URI_CHARS_PATTERN.matcher(str).matches() && !USER_IN_HOST.matcher(str).find()) {
            return false;
        }
        return true;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith(new ObfuscatedString(new long[]{5872777932347487017L, 6807531651228733668L}).toString()) && !massagedText.startsWith(new ObfuscatedString(new long[]{3809929556369879750L, -5527198516980047622L}).toString())) {
            String trim = massagedText.trim();
            if (!isBasicallyValidURI(trim) || isPossiblyMaliciousURI(trim)) {
                return null;
            }
            return new URIParsedResult(trim, null);
        }
        return new URIParsedResult(massagedText.substring(4).trim(), null);
    }
}
