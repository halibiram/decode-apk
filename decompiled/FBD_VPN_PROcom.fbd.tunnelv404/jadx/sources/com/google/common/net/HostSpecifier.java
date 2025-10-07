package com.google.common.net;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import java.net.InetAddress;
import java.text.ParseException;
import javax.annotation.CheckForNull;

@GwtIncompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class HostSpecifier {
    private final String canonicalForm;

    private HostSpecifier(String str) {
        this.canonicalForm = str;
    }

    @CanIgnoreReturnValue
    public static HostSpecifier from(String str) {
        String str2;
        try {
            return fromValid(str);
        } catch (IllegalArgumentException e) {
            String obfuscatedString = new ObfuscatedString(new long[]{7189436876120870820L, -4224563913794383151L, 27843642209206736L, -4554631196129816048L}).toString();
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = obfuscatedString.concat(valueOf);
            } else {
                str2 = new String(obfuscatedString);
            }
            ParseException parseException = new ParseException(str2, 0);
            parseException.initCause(e);
            throw parseException;
        }
    }

    public static HostSpecifier fromValid(String str) {
        InetAddress inetAddress;
        String str2;
        HostAndPort fromString = HostAndPort.fromString(str);
        Preconditions.checkArgument(!fromString.hasPort());
        String host = fromString.getHost();
        try {
            inetAddress = InetAddresses.forString(host);
        } catch (IllegalArgumentException unused) {
            inetAddress = null;
        }
        if (inetAddress != null) {
            return new HostSpecifier(InetAddresses.toUriString(inetAddress));
        }
        InternetDomainName from = InternetDomainName.from(host);
        if (from.hasPublicSuffix()) {
            return new HostSpecifier(from.toString());
        }
        String obfuscatedString = new ObfuscatedString(new long[]{3354561912400335196L, 5507975829190143725L, 7750353610784005352L, 664286728307437805L, -3464202461978728054L, 3762201471528057365L, -2093716668259280013L, -1259431578385282613L}).toString();
        String valueOf = String.valueOf(host);
        if (valueOf.length() != 0) {
            str2 = obfuscatedString.concat(valueOf);
        } else {
            str2 = new String(obfuscatedString);
        }
        throw new IllegalArgumentException(str2);
    }

    public static boolean isValid(String str) {
        try {
            fromValid(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HostSpecifier) {
            return this.canonicalForm.equals(((HostSpecifier) obj).canonicalForm);
        }
        return false;
    }

    public int hashCode() {
        return this.canonicalForm.hashCode();
    }

    public String toString() {
        return this.canonicalForm;
    }
}
